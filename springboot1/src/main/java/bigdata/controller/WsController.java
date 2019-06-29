package bigdata.controller;

import bigdata.domain.*;
import bigdata.service.*;
import bigdata.utils.ResultJson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;


@Controller
public class WsController {

    @Autowired
    private FollowService followService;
    @Autowired
    private RawDataService rawDataService;
    @Autowired
    private UserRService userRService;
    @Autowired
    private ItemRService itemRService;
    @Autowired
    private EvalService evalService;
    @Autowired
    private FpgService fpgService;
    @Autowired
    private WindowFollowService windowFollowService;
    @Autowired
    private SingleService singleService;

    //制作关注度图
    @RequestMapping(value = "/getData")
    @ResponseBody
    public Map<String, Object> getData(){
        List<Follow> result = followService.getData();
        return ResultJson.resultSuccess(result);
    }

    @RequestMapping(value = "/getFollowData")
    @ResponseBody
    public Map<String, Object> getFollowData(){
        List<Follow> result = followService.getAllData();
        return ResultJson.resultSuccess(result);
    }

    @RequestMapping(value = "/getRawData")
    @ResponseBody
    public Map<String, Object> getRawData(){
        List<RawData> result = rawDataService.getData();
        return ResultJson.resultSuccess(result);
    }

    @RequestMapping(value = "/getUserData")
    @ResponseBody
    public Map<String, Object> getUserData(){
        List<UserR> result = userRService.getData();
        return ResultJson.resultSuccess(result);
    }

    @RequestMapping(value = "/getItemData")
    @ResponseBody
    public Map<String, Object> getItemData(){
        List<ItemR> result = itemRService.getData();
        return ResultJson.resultSuccess(result);
    }

    @RequestMapping(value = "/getFpgData")
    @ResponseBody
    public Map<String, Object> getFpgData(){
        List<Fpg> result =fpgService.getData();
        return ResultJson.resultSuccess(result);
    }

    @RequestMapping(value = "/getEvalData")
    @ResponseBody
    public Map<String, Object> getEvalData(){
        List<Eval> result =evalService.getData();
        return ResultJson.resultSuccess(result);
    }

    @RequestMapping(value = "/getWindowFollowData")
    @ResponseBody
    public Map<String, Object> getWindowFollowData(){
        List<WindowFollow> result =windowFollowService.getData();
        return ResultJson.resultSuccess(result);
    }

    @RequestMapping(value = "/getSingleFollowData")
    @ResponseBody
    public Map<String, Object> getSingleFollowData(){
        List<Single> result =singleService.getData();
        return ResultJson.resultSuccess(result);
    }

}
