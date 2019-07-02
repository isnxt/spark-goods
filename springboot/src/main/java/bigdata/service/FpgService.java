package bigdata.service;

import bigdata.dao.FpgDao;
import bigdata.domain.Fpg;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;


@Service
public class FpgService {
    private static final Logger LOGGER = LoggerFactory.getLogger(FpgService.class);

    @Autowired
    private FpgDao fpgDao;
    public List<Fpg> getData(){
        List<Fpg> datas = fpgDao.getDatas();
        return datas;
    }
}