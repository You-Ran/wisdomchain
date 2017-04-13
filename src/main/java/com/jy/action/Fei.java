package com.jy.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2017/3/14.
 */
@Controller
@RequestMapping(value = "/Fei.do")
public class Fei {

    @RequestMapping(params = "index")
    public String index() {
        System.out.printf("跳转了！");
        return "fei";
    }
}
