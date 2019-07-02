package bigdata.service;

import bigdata.dao.UserDao;
import bigdata.domain.UserR;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;


@Service
public class UserRService {
    private static final Logger LOGGER = LoggerFactory.getLogger(UserRService.class);

    @Autowired
    private UserDao userDao;

    public List<UserR> getData(){
        List<UserR> datas = userDao.getDatas();
        return datas;
    }
}