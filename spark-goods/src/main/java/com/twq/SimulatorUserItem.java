package com.twq;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;
import java.sql.*;
import java.util.Random;
import java.util.UUID;


public class SimulatorUserItem {

    public static void main(String[] args) throws Exception {
        // TODO Auto-generated method stub
        UserItemDataSimulator.run();

    }
}

class UserItemDataSimulator {
    private static int GOOD_NUM = 3000;    //商品数
    private static int USER_NUM = 3000;    //用户数

    public static void run() {
        Random r = new Random();
        System.out.println("运行用户商品对照表模拟生成器！！！");
        //连接数据库
        Connection conn = null;
        Statement stmt = null;
        try {
            //创建连接数据库
            conn = ConnectionPool.getConnection();
            stmt=conn.createStatement();
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
                System.out.println("user-"+i+" :写进数据库成功");
            }
            for (int i = 0; i < GOOD_NUM; i++) {
                int itemID = i;
                String itemName = getRandomUUID("item-");
                psti.setInt(1, itemID);
                psti.setString(2, itemName);
                psti.executeUpdate();
                System.out.println("item-"+i+" :写进数据库成功");
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
