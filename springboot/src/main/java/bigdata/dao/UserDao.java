package bigdata.dao;

import bigdata.domain.User;
import bigdata.domain.UserR;
import bigdata.utils.JDBCUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.springframework.stereotype.Component;

import java.util.List;


@Component
public class UserDao {
    public List<User> getDatas(){
        try{
            String sql = "select userID,userName from user";
            System.out.println("sql: "+sql);
            QueryRunner runner = new QueryRunner(JDBCUtils.getDataSource());
            List<User> beanList = runner.query(sql,new BeanListHandler<User>(User.class));
//            for(int i=0;i<beanList.size();i++){
//                System.out.println(beanList.get(i).toString());
//            }
            return  beanList;
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }
    public List<UserR> getRtDatas(){
        try{
            String sql = "select userID,itemID,scores from recuser";
            System.out.println("sql: "+sql);
            QueryRunner runner = new QueryRunner(JDBCUtils.getDataSource());
            List<UserR> beanList = runner.query(sql,new BeanListHandler<UserR>(UserR.class));
//            for(int i=0;i<beanList.size();i++){
//                System.out.println(beanList.get(i).toString());
//            }
            return  beanList;
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }
}
