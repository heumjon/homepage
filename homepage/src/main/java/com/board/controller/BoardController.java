package com.board.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import com.common.command.CommandMap;

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
public class BoardController {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="BoardService")
    private BoardService boardService;
    
	/**
	 * @메소드명 : goLinkBoardList
	 * @날짜 : 2017. 04. 19.
	 * @작성자 : ChoHeumJun
	 * @설명 :
	 * 
	 *     <pre>
	 * 			transfer the /board/boardList.jsp web 
	 *     </pre>
	 * 
	 * @param commandMap
	 * @return ViewPage
	 */
    @RequestMapping(value="/board/board.do")
    public ModelAndView goLinkBoardPage(CommandMap commandMap) throws Exception {
        ModelAndView mv = new ModelAndView("/board/boardList");
        
        mv.addAllObjects(commandMap.getMap());
        
        return mv;
    }
    
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
    @RequestMapping(value = "/board/boardList.do")
    public @ResponseBody Object getBoardList(CommandMap commandMap) throws Exception{
     
     Map<String, Object> mp = new HashMap<String, Object>();
     mp.put("data", boardService.selectBoardList(commandMap));
     
     Object result = mp;
     
     return result;
   }
    
}
