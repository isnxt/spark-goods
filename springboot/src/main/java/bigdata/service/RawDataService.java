package bigdata.service;

import bigdata.dao.RawDao;
import bigdata.domain.RawData;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;


@Service
public class RawDataService {
    private static final Logger LOGGER = LoggerFactory.getLogger(RawDataService.class);

    @Autowired
    private RawDao rawDao;

    public List<RawData> getData(){
        List<RawData> datas = rawDao.getDatas();
        return datas;
    }
}