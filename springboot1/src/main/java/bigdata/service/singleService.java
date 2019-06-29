package bigdata.service;

import bigdata.dao.SingleDao;
import bigdata.domain.Single;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;


@Service
public class SingleService {
    private static final Logger LOGGER = LoggerFactory.getLogger(SingleService.class);

    @Autowired
    private SingleDao singleDao;

    public List<Single> getData(){
        List<Single> datas = singleDao.getDatas();
        return datas;
    }
}