package bigdata.service;

import bigdata.dao.EvalDao;
import bigdata.domain.Eval;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;


@Service
public class EvalService {
    private static final Logger LOGGER = LoggerFactory.getLogger(EvalService.class);

    @Autowired
    private EvalDao evalDao;
    public List<Eval> getData(){
        List<Eval> datas = evalDao.getDatas();
        return datas;
    }
}