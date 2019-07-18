package bigdata.service;


import bigdata.dao.ItemDao;
import bigdata.domain.ItemR;
import bigdata.domain.Item;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;


@Service
public class ItemService {
    private static final Logger LOGGER = LoggerFactory.getLogger(ItemService.class);

    @Autowired
    private ItemDao itemDao;
    public List<Item> getData(){
        List<Item> datas = itemDao.getDatas();
        return datas;
    }

    public List<ItemR> getRtData(){
        List<ItemR> datas = itemDao.getRtDatas();
        return datas;
    }
}