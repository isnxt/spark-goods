package com.bigdata;

import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.UUID;


public class Server {

    public static void main(String[] args) throws Exception {
        // TODO Auto-generated method stub
        UserItemSimulator.run();
        // TODO Auto-generated method stub
        new Thread(new RawSimulator()).start();

    }
}

class UserItemSimulator {
    private static int GOOD_NUM = 100;    //商品数
    private static int USER_NUM = 1000;    //用户数

    public static void run() {
        Random r = new Random();
        System.out.println("运行用户商品对照表模拟生成器！！！");
        //连接数据库
        Connection conn = null;
        Statement stmt = null;
        try {
            //创建连接数据库
            conn = ConnectionPool.getConnection();
            stmt = conn.createStatement();
            //插入
            String UserSql = "insert into user values(?,?)";
            String ItemSql = "insert into item values(?,?)";
            PreparedStatement pstu = conn.prepareStatement(UserSql);
            PreparedStatement psti = conn.prepareStatement(ItemSql);
            for (int i = 0; i < USER_NUM; i++) {
                int userID = i;
                String userName = getRandomUUID("user-");
                //写进数据库
                pstu.setInt(1, userID);
                pstu.setString(2, userName);
                pstu.executeUpdate();
                System.out.println("user-" + i + " :写进数据库成功");
            }
            for (int i = 0; i < GOOD_NUM; i++) {
                int itemID = i;
                String itemName = getRandomUUID("item-");
                psti.setInt(1, itemID);
                psti.setString(2, itemName);
                psti.executeUpdate();
                System.out.println("item-" + i + " :写进数据库成功");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
        }
    }

    public static String getRandomUUID(String prex) {
        return prex + UUID.randomUUID().toString().replace("-", "").substring(15);
    }

}

class RawSimulator implements Runnable {
    private int TIME_NUM = 2000;    //循环数
    private int GOOD_NUM = 50;    //商品数
    private int USER_NUM = 900;    //用户数
    private int MSG_NUM = 4;     //每次产生的消息数(0-4)
    private int LIST_NUM = 7;    //一个篮子内最多商品数
    private int LISTS_NUM = 8;    //有几种篮子
    private int BROWSE_NUM = 5;   //浏览次数
    private int STAY_TIME = 10;    //停留时间(分钟)
    private int SCORE = 6;    //评分
    private int BUY_NUM = 6;    //评分
    int[] COLLECTION = new int[]{-1, 0, 1};    //是否收藏,-1为差评

    public void run() {
        Random r = new Random();
        //1.创建集合容器对象
        List<List<Integer>> lists = new ArrayList<List<Integer>>();
        //2.创建list对象
        for (int i = 0; i < LISTS_NUM; i++) {
            //生成规则商品集
            int itemNum = (r.nextInt(LIST_NUM - 5) + 5);
            List<Integer> list = new ArrayList<Integer>();
            while (list.size() != itemNum) {
                int num = r.nextInt(GOOD_NUM - 1) + 1;
                if (!list.contains(num)) {
                    list.add(num);
                }
            }
            if (!lists.contains(list)) {
                lists.add(list);
                System.out.println("篮子:" + list);
            }
        }

        try {
            ServerSocket serSocket = new ServerSocket(9999);
            System.out.println("打开模拟生成器，现在运行streaming程序!");
            //连接数据库
            Connection conn = null;
            Statement stmt = null;
            try {
                //创建连接数据库
                conn = ConnectionPool.getConnection();
                stmt = conn.createStatement();
                //检查是否存在
                String sql = "insert into raw(userID,itemID,browser_num,stay_time,collect,buy_num,scores) values(?,?,?,?,?,?,?)";
                PreparedStatement pst = conn.prepareStatement(sql);
                int time = 0;
                while (time != TIME_NUM) {
                    time++;
                    //random msg num
                    int msgNum = r.nextInt(MSG_NUM);
                    int userID = (r.nextInt(USER_NUM) + 1);
                    //检查是否存在
//                    ResultSet rs = stmt.executeQuery("SELECT * FROM raw WHERE userID=" + userID);
//                    rs.last();
//                    int rows = rs.getRow();
//                    if (rows != 0) {
//                        continue;
//                    }
                    List<Integer> list = lists.get(r.nextInt(LISTS_NUM));
                    //start listen
                    System.out.println("等待客户端...");
                    Socket socket = serSocket.accept();
                    //create outputstream
                    OutputStream os = socket.getOutputStream();
                    //pack outputstream
                    PrintWriter pw = new PrintWriter(os);
                    for (int i = 0; i < msgNum; i++) {
                        //msg format: id::browse time::stay time::coll:buy num
                        StringBuffer sb = new StringBuffer();
                        int itemID = (r.nextInt(GOOD_NUM) + 1);
                        int browser_num = r.nextInt(BROWSE_NUM) + 1;
                        float stay_time = r.nextInt(STAY_TIME) + r.nextFloat();
                        int collection = COLLECTION[r.nextInt(3)];
                        int buy_num = r.nextInt(BUY_NUM);
                        int score = r.nextInt(SCORE);  //评分0-5
                        if (collection == -1) {   //如果收藏数为0，则购买数为0
                            buy_num = 0;
                        }
                        if (collection == -1) {
                            score = 0;
                        }
                        //写进数据库
                        pst.setInt(1, userID);
                        pst.setInt(2, itemID);
                        pst.setInt(3, browser_num);
                        pst.setFloat(4, stay_time);
                        pst.setInt(5, collection);
                        pst.setInt(6, buy_num);
                        pst.setDouble(7, score);
                        pst.executeUpdate();
                        //合并数据
                        sb.append(userID);
                        sb.append("::");
                        sb.append(itemID);
                        sb.append("::");
                        sb.append(browser_num);
                        sb.append("::");
                        sb.append(stay_time);
                        sb.append("::");
                        sb.append(collection);
                        sb.append("::");
                        sb.append(buy_num);
                        sb.append("::");
                        sb.append(score);
                        System.out.println("写入:" + sb.toString());
                        pw.write(sb.toString() + "\n");
                    }

                    for (Integer integer : list) {
                        //msg format: id::browse time::stay time::coll:buy num
                        StringBuffer sb = new StringBuffer();
                        int itemID = integer;
                        int browser_num = r.nextInt(BROWSE_NUM) + 1;
                        float stay_time = r.nextInt(STAY_TIME) + r.nextFloat();
                        int collection = COLLECTION[r.nextInt(3)];
                        int buy_num = r.nextInt(BUY_NUM);
                        int score = r.nextInt(SCORE);  //评分0-5
                        if (collection == -1) {   //如果收藏数为0，则购买数为0
                            buy_num = 0;
                        }
                        if (collection == -1) {
                            score = 0;
                        }
                        //写进数据库
                        pst.setInt(1, userID);
                        pst.setInt(2, itemID);
                        pst.setInt(3, browser_num);
                        pst.setFloat(4, stay_time);
                        pst.setInt(5, collection);
                        pst.setInt(6, buy_num);
                        pst.setDouble(7, score);
                        pst.executeUpdate();
                        //合并数据
                        sb.append(userID);
                        sb.append("::");
                        sb.append(itemID);
                        sb.append("::");
                        sb.append(browser_num);
                        sb.append("::");
                        sb.append(stay_time);
                        sb.append("::");
                        sb.append(collection);
                        sb.append("::");
                        sb.append(buy_num);
                        sb.append("::");
                        sb.append(score);
                        System.out.println("写入:" + sb.toString());
                        pw.write(sb.toString() + "\n");
                    }
                    pw.flush();
                    pw.close();
                    System.out.println("完成第" + time + "轮=================================================");

                    try {
                        Thread.sleep(5000);
                    } catch (InterruptedException e) {
                        System.out.println("thread sleep failed");
                    }
                }
                pst.close();
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {
                    assert conn != null;
                    conn.close();
                } catch (SQLException e) {
                    System.out.println("conn close failed");
                }
            }
        } catch (Exception ex) {
            System.out.println("error");
        }
    }
}
