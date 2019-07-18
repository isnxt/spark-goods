package bigdata.service;

import bigdata.dao.SingleFollowDao;
import bigdata.domain.SingleFollow;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;


@Service
public class SingleFollowService {
    private static final Logger LOGGER = LoggerFactory.getLogger(SingleFollowService.class);

    @Autowired
    private SingleFollowDao singleFollowDao;

    public List<SingleFollow> getData(){
        List<SingleFollow> datas = singleFollowDao.getDatas();
        return datas;
    }
}