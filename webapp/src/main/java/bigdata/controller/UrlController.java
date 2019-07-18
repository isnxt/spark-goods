package bigdata.controller;
import org.springframework.ui.ModelMap;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UrlController {
    @RequestMapping("/")
    public String handle(){
        return "/index";
    }

    @RequestMapping("/index")
    public String handleIndex(){
        return "/index";
    }

    @RequestMapping("/main")
    public String handleChat(ModelMap modelMap) {
        return "main";
    }

    @RequestMapping("/followChart")
    public String handleFollowChat(ModelMap modelMap) {
        return "followChart";
    }

    @RequestMapping("/followChartSingle")
    public String handleFollowChartSingle(ModelMap modelMap) {
        return "followChartSingle";
    }

    @RequestMapping("/userTable")
    public String handleUserTable(ModelMap modelMap) {
        return "userTable";
    }

    @RequestMapping("/itemTable")
    public String handleItemTable(ModelMap modelMap) {
        return "itemTable";
    }

    @RequestMapping("/rawTable")
    public String handleRawTable(ModelMap modelMap) {
        return "rawTable";
    }

    @RequestMapping("/followTable")
    public String handleFollowTable(ModelMap modelMap) {
        return "followTable";
    }

    @RequestMapping("/userRTable")
    public String handleUserRTable(ModelMap modelMap) {
        return "userRTable";
    }

    @RequestMapping("/itemRTable")
    public String handleItemRTable(ModelMap modelMap) {
        return "itemRTable";
    }


    @RequestMapping("/fpgTable")
    public String handleFpgTable(ModelMap modelMap) {
        return "fpgTable";
    }

    @RequestMapping("/evalTable")
    public String handleEvalTable(ModelMap modelMap) {
        return "evalTable";
    }

    @RequestMapping("/evalChart")
    public String handleEvalCharts(ModelMap modelMap) {
        return "evalChart";
    }

    @RequestMapping("/fpgChart")
    public String handleFpgCharts(ModelMap modelMap) {
        return "fpgChart";
    }

}