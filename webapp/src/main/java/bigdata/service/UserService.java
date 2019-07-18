package bigdata.service;

import bigdata.dao.UserDao;
import bigdata.domain.UserR;
import bigdata.domain.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;


@Service
public class UserService {
    private static final Logger LOGGER = LoggerFactory.getLogger(UserService.class);

    @Autowired
    private UserDao userDao;

    public List<User> getData(){
        List<User> datas = userDao.getDatas();
        return datas;
    }
    public List<UserR> getRtData(){
        List<UserR> datas = userDao.getRtDatas();
        return datas;
    }
}