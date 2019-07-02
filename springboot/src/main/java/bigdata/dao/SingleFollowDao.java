package bigdata.dao;

import bigdata.domain.SingleFollow;
import bigdata.utils.JDBCUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.springframework.stereotype.Component;

import java.util.List;


@Component
public class SingleFollowDao {
    public List<SingleFollow> getDatas(){
        try{
            String sql = "select windowFollowValue from singlefollowdata";
            System.out.println("sql: "+sql);
            QueryRunner runner = new QueryRunner(JDBCUtils.getDataSource());
            List<SingleFollow> beanList = runner.query(sql,new BeanListHandler<SingleFollow>(SingleFollow.class));

            return  beanList;
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }
}
