package bigdata.dao;

import bigdata.domain.WindowFollow;
import bigdata.utils.JDBCUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.springframework.stereotype.Component;

import java.util.List;


@Component
public class WindowFollowDao {
    public List<WindowFollow> getDatas(){
        try{
            String sql = "select * from windowFollowData order by followValue desc limit 10";
            System.out.println("sql: "+sql);
            QueryRunner runner = new QueryRunner(JDBCUtils.getDataSource());
            List<WindowFollow> beanList = runner.query(sql,new BeanListHandler<WindowFollow>(WindowFollow.class));

            return  beanList;
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }
}
