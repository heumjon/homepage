package com.login.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.command.CommandMap;
import com.common.constants.Constants;
import com.login.service.LoginService;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @파일명 : loginController.java
 * @날짜 : 2017. 04. 18.
 * @작성자 : ChoHeumJun
 * @설명
 * 
 * 	<pre>
 * 		로그인 관련 처리 Controller
 *  </pre>
 */
@Controller
public class LoginController {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "LoginService")
	private LoginService loginService;
	
	/**
	 * @메소드명 : goLinkLoginPage
	 * @날짜 : 2017. 04. 19.
	 * @작성자 : ChoHeumJun
	 * @설명 :
	 * 
	 *     <pre>
	 * 			transfer the /login/login.jsp web 
	 *     </pre>
	 * 
	 * @param commandMap
	 * @return ViewPage
	 */
    @RequestMapping(value="/login/login.do")
    public ModelAndView goLinkLoginPage(CommandMap commandMap) throws Exception {
        ModelAndView mv = new ModelAndView("/login/login");
        mv.addAllObjects(commandMap.getMap());
        
        return mv;
    }
    
    /**
	 * @메소드명 : goLinkLoginRegistePage
	 * @날짜 : 2017. 04. 19.
	 * @작성자 : ChoHeumJun
	 * @설명 :
	 * 
	 *     <pre>
	 * 			transfer the /login/loginRegiste.jsp web 
	 *     </pre>
	 * 
	 * @param commandMap
	 * @return ViewPage
	 */
    @RequestMapping(value="/login/loginRegiste.do")
    public ModelAndView goLinkLoginRegistePage(CommandMap commandMap) throws Exception {
        ModelAndView mv = new ModelAndView("/login/loginRegiste");
        
        mv.addAllObjects(commandMap.getMap());
        
        return mv;
    }
    
    /**
	 * @메소드명 : loginCheck
	 * @날짜 : 2017. 04. 19.
	 * @작성자 : ChoHeumJun
	 * @설명 :
	 * 
	 *     <pre>
	 * 			로그인 체크 : 유저인경우 메인페이지 이동 유저가 아닌경우 에러 메시지
	 *     </pre>
	 * 
	 * @param commandMap
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "loginCheck.do")
	public ModelAndView loginCheck(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mav = new ModelAndView();
		if (loginService.isUser(commandMap)) {
			mav.addObject("loginID",commandMap.get("loginID"));
			mav.addObject(Constants.VIEW_PARENT_URL, Constants.MAIN_URL);
			mav.setViewName(Constants.MAIN_URL + Constants.JSP_MAINFRAME);
		} else {
			mav.addObject("errMessage", "로그인 정보가 틀립니다. 확인후 다시 시도해 주세요.");
			mav.setViewName(Constants.LOGIN_LINK);
		}
		return mav;
	}
	
	@RequestMapping(value = "/login/loginCheck.do")
	public ModelAndView loginCheckA(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mav = new ModelAndView();
		if (loginService.isUser(commandMap)) {
			mav.addObject("loginID",commandMap.get("loginID"));
			mav.addObject(Constants.VIEW_PARENT_URL, Constants.MAIN_URL);
			mav.setViewName(Constants.MAIN_URL + Constants.JSP_MAINFRAME);
		} else {
			mav.addObject("errMessage", "로그인 정보가 틀립니다. 확인후 다시 시도해 주세요.");
			mav.setViewName(Constants.LOGIN_LINK);
		}
		return mav;
	}
	
	
	
	/**
	 * @메소드명 : logout
	 * @날짜 : 2017. 04. 20.
	 * @작성자 : ChoHeumJun
	 * @설명 :
	 * 
	 *     <pre>
	 *			로그아웃 처리
	 *     </pre>
	 * 
	 * @param commandMap
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/logout.do")
	public ModelAndView logout(CommandMap commandMap, HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.getSession().setAttribute(Constants.SESSION_LOGIN_USER_OBJ, null);
		return new ModelAndView(Constants.LOGIN_LINK);
	}
    
}
