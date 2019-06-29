package bigdata.dao;

import bigdata.domain.Single;
import bigdata.utils.JDBCUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.springframework.stereotype.Component;

import java.util.List;


@Component
public class SingleDao {
    public List<Single> getDatas(){
        try{
            String sql = "select windowFollowValue from singleFollowValue";
            System.out.println("sql: "+sql);
            QueryRunner runner = new QueryRunner(JDBCUtils.getDataSource());
            List<Single> beanList = runner.query(sql,new BeanListHandler<Single>(Single.class));

            return  beanList;
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }
}
