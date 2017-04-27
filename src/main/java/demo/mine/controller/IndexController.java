package demo.mine.controller;

import demo.mine.pojo.Msg;
import demo.mine.pojo.RespInfo;
import demo.mine.service.MsgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Already on 2016/9/17.
 */
@Controller
public class IndexController {
    @Autowired
    private MsgService msgService;
    @RequestMapping("/index")
    public ModelAndView index(){
        List<Msg> msgList=msgService.listAllMsgs(15);
        Map<String,Object> map=new HashMap<String, Object>();
        map.put("msgList",msgList);
        return new ModelAndView("index",map);
    }

    @RequestMapping("/saveMsg")
    @ResponseBody
    public RespInfo saveMsg(Msg msg){
        msgService.insertMsg(msg);
        return new RespInfo(0,"保存成功");
    }
}
