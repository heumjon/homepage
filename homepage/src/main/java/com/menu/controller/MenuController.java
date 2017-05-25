package com.menu.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import com.common.command.CommandMap;
import com.menu.service.MenuService;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.board.service.BoardService;

/**
 * @파일명 : BoardController.java
 * @날짜 : 2017. 04. 18.
 * @작성자 : ChoHeumJun
 * @설명
 * 
 * 	<pre>
 * 		게시판 관련 처리 Controller
 *  </pre>
 */
@Controller
public class MenuController {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="MenuService")
    private MenuService menuService;
    
    
    /**
	 * @메소드명 : getBoardList
	 * @날짜 : 2017. 04. 19.
	 * @작성자 : ChoHeumJun
	 * @설명 :
	 * 
	 *     <pre>
	 * 			get board List
	 *     </pre>
	 * 
	 * @param commandMap
	 * @return BBS LIST
	 */
    @RequestMapping(value = "/menu/menuList.do")
    public @ResponseBody Object getMenuList(CommandMap commandMap) throws Exception{
     
     Map<String, Object> mp = new HashMap<String, Object>();
     mp.put("data", menuService.selectMenuList(commandMap));
     
     Object result = mp;
     
     return result;
   }
    
}
