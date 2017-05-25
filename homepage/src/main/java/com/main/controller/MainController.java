package com.main.controller;

import java.util.Map;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @파일명 : MainController.java
 * @날짜 : 2017. 04. 18.
 * @작성자 : ChoHeumJun
 * @설명
 * 
 * 	<pre>
 * 		메인화면 관련 처리 Controller
 *  </pre>
 */
@Controller
public class MainController {
	
	Logger log = Logger.getLogger(this.getClass());
    
    @RequestMapping(value="/main/mainFrame.do")
    public ModelAndView mainFrame(Map<String,Object> commandMap) throws Exception {
        ModelAndView mv = new ModelAndView("/main/mainFrame");
        return mv;
    }
    
}
