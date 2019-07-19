package bigdata.dao;

import bigdata.domain.ItemR;
import bigdata.domain.Item;
import bigdata.utils.JDBCUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.springframework.stereotype.Component;

import java.util.List;


@Component
public class ItemDao {
    public List<Item> getDatas(){
        try{
            String sql = "select itemID,itemName from item limit 0,100";
            System.out.println("sql: "+sql);
            QueryRunner runner = new QueryRunner(JDBCUtils.getDataSource());
            List<Item> beanList = runner.query(sql,new BeanListHandler<Item>(Item.class));
            /*for(int i=0;i<beanList.size();i++){
                System.out.println(beanList.get(i).toString());
            }*/
            return  beanList;
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }
    public List<ItemR> getRtDatas(){
        try{
            String sql = "select itemID,userID,scores from recitem limit 0,100";
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
