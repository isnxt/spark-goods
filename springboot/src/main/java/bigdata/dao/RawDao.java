package bigdata.dao;

import bigdata.domain.RawData;
import bigdata.utils.JDBCUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.springframework.stereotype.Component;

import java.util.List;


@Component
public class RawDao {
    public List<RawData> getDatas(){
        try{
            String sql = "select userID,itemID,browser_num,stay_time,collect,buy_num,scores from rawdata order by userID desc limit 50";
            System.out.println("sql: "+sql);
            QueryRunner runner = new QueryRunner(JDBCUtils.getDataSource());
            List<RawData> beanList = runner.query(sql,new BeanListHandler<RawData>(RawData.class));

            return  beanList;
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }
}
