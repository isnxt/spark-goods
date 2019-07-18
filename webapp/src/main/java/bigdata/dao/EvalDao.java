package bigdata.dao;

import bigdata.domain.Eval;
import bigdata.utils.JDBCUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.springframework.stereotype.Component;

import java.util.List;


@Component
public class EvalDao {
    public List<Eval> getDatas(){
        try{
            String sql = "select rank,iterations,lambda,rmse,time from evaluation";
            System.out.println("sql: "+sql);
            QueryRunner runner = new QueryRunner(JDBCUtils.getDataSource());
            List<Eval> beanList = runner.query(sql,new BeanListHandler<Eval>(Eval.class));

            return  beanList;
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }
}
