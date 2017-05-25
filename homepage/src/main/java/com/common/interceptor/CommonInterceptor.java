package com.common.interceptor;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.common.command.CommandMap;
import com.common.constants.Constants;
import com.common.util.SessionUtil;
import com.login.dao.LoginDAO;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


/**
 * @파일명 : CommonInterceptor.java
 * @날짜 : 2017. 04. 18.
 * @작성자 : ChoHeumJun
 * @설명
 * 
 * 	<pre>
 * 		처리 로그를 남기기 위한 인터셉터
 *  </pre>
 */
public class CommonInterceptor extends HandlerInterceptorAdapter {
	protected Log log = LogFactory.getLog(CommonInterceptor.class);
    
	@Resource(name = "LoginDAO")
	private LoginDAO loginDAO;
	
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        if (log.isDebugEnabled()) {
            log.debug("======================================          START         ======================================");
            log.debug(" Request URI \t:  " + request.getRequestURI());
        }
        
        
		// 세션 체크 로직 1. SESSION_LOGIN_USER_OBJ가 없으면 로그인 화면으로 보냄.
		if (!request.getRequestURI().equals("/") && !request.getRequestURI().equals("/login/login.do") && !request.getRequestURI().equals("/login/loginRegiste.do") ) {
			HttpSession session = request.getSession();

			if ((session.getAttribute(Constants.SESSION_LOGIN_USER_OBJ) == null) || (session.getAttribute(Constants.SESSION_LOGIN_USER_OBJ).toString().equals(""))) {
				if (request.getParameter("user_id") == null && request.getParameter("loginID") == null) {
					
					
					/*if(!"/manualFileView.do".equals(request.getRequestURI())){
						response.sendRedirect(request.getContextPath() + "/");
						return true;	
					}*/
					
				}else{
					//로그인페이지가 아니면 실행
					//파라미터로 자동 로그인 세션 생성
					//loginID로 넘겨준다.
					if(!request.getRequestURI().equals("/loginCheck.do")){
						CommandMap commandMap = new CommandMap();
						Object loginUser = loginDAO.selectLogin(commandMap.getMap());
						if (loginUser != null) {
							// 유저정보가 있는경우 유저정보를 세션에 설정
							SessionUtil.setLoginUserObject(loginUser);
						}else{
							System.out.println(request.getRequestURI());
							response.sendRedirect("/");
							return false;
						}
					}
				}
			}
		}
        
        return super.preHandle(request, response, handler);
    }
     
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        if (log.isDebugEnabled()) {
            log.debug("======================================           END          ======================================\n");
        }
    }
}
