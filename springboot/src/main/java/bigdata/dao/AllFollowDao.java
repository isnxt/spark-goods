package bigdata.dao;

import bigdata.domain.Follow;
import bigdata.utils.JDBCUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.springframework.stereotype.Component;

import java.util.List;


@Component
public class AllFollowDao {
    public List<Follow> getDatas(){
        try{
            String sql = "select * from followdata order by followValue desc";
            System.out.println("sql: "+sql);
            QueryRunner runner = new QueryRunner(JDBCUtils.getDataSource());
            List<Follow> beanList = runner.query(sql,new BeanListHandler<Follow>(Follow.class));

            return  beanList;
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }
}
