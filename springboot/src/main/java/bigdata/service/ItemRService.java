package bigdata.service;


import bigdata.dao.ItemDao;
import bigdata.domain.ItemR;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;


@Service
public class ItemRService {
    private static final Logger LOGGER = LoggerFactory.getLogger(ItemRService.class);

    @Autowired
    private ItemDao itemDao;

    public List<ItemR> getData(){
        List<ItemR> datas = itemDao.getDatas();
        return datas;
    }
}