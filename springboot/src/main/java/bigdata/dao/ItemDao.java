package bigdata.dao;

import bigdata.domain.ItemR;
import bigdata.utils.JDBCUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.springframework.stereotype.Component;

import java.util.List;


@Component
public class ItemDao {
    public List<ItemR> getDatas(){
        try{
            String sql = "select itemID,userID,scores from recitem";
            System.out.println("sql: "+sql);
            QueryRunner runner = new QueryRunner(JDBCUtils.getDataSource());
            List<ItemR> beanList = runner.query(sql,new BeanListHandler<ItemR>(ItemR.class));
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
