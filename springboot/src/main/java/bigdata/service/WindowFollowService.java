package bigdata.service;

import bigdata.dao.WindowFollowDao;
import bigdata.domain.WindowFollow;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;


@Service
public class WindowFollowService {
    private static final Logger LOGGER = LoggerFactory.getLogger(WindowFollowService.class);

    @Autowired
    private WindowFollowDao windowFollowDao;

    public List<WindowFollow> getData(){
        List<WindowFollow> datas = windowFollowDao.getDatas();
        return datas;
    }
}