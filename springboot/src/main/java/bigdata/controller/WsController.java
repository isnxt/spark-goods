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
    private RawService rawService;
    @Autowired
    private UserService userService;
    @Autowired
    private ItemService itemService;
    @Autowired
    private EvalService evalService;
    @Autowired
    private FpgService fpgService;
    @Autowired
    private WindowFollowService windowFollowService;
    @Autowired
    private SingleFollowService singleFollowService;

    @RequestMapping(value = "/getFollowData")
    @ResponseBody
    public Map<String, Object> getFollowData(){
        List<Follow> result = followService.getData();
        return ResultJson.resultSuccess(result);
    }

    @RequestMapping(value = "/getRawData")
    @ResponseBody
    public Map<String, Object> getRawData(){
        List<RawData> result = rawService.getData();
        return ResultJson.resultSuccess(result);
    }
    @RequestMapping(value = "/getUserData")
    @ResponseBody
    public Map<String, Object> getUserData(){
        List<User> result = userService.getData();
        return ResultJson.resultSuccess(result);
    }

    @RequestMapping(value = "/getItemData")
    @ResponseBody
    public Map<String, Object> getItemData(){
        List<Item> result = itemService.getData();
        return ResultJson.resultSuccess(result);
    }
    @RequestMapping(value = "/getUserRtData")
    @ResponseBody
    public Map<String, Object> getUserRtData(){
        List<UserR> result = userService.getRtData();
        return ResultJson.resultSuccess(result);
    }

    @RequestMapping(value = "/getItemRtData")
    @ResponseBody
    public Map<String, Object> getItemRtData(){
        List<ItemR> result = itemService.getRtData();
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
        List<SingleFollow> result = singleFollowService.getData();
        return ResultJson.resultSuccess(result);
    }

}
