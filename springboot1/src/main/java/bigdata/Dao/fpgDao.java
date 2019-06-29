package bigdata.dao;

import bigdata.domain.Fpg;
import bigdata.utils.JDBCUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.springframework.stereotype.Component;

import java.util.List;


@Component
public class FpgDao {
    public List<Fpg> getDatas(){
        try{
            String sql = "select antecedent,consequent,confidence from Fpg";
            System.out.println("sql: "+sql);
            QueryRunner runner = new QueryRunner(JDBCUtils.getDataSource());
            List<Fpg> beanList = runner.query(sql,new BeanListHandler<Fpg>(Fpg.class));
            /*for(int i=0;i<beanList.size();i++){
                System.out.println(beanList.get(i).toString());
            }*/

            return  beanList;
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }
}
