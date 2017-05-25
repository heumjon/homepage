package com.login.service;

import javax.annotation.Resource;
import com.common.command.CommandMap;
import com.common.util.SessionUtil;
import com.login.dao.LoginDAO;
import org.springframework.stereotype.Service;

/**
 * @파일명 : LoginServiceImpl.java
 * @날짜 : 2017. 04. 19.
 * @작성자 : ChoHeumJun
 * @설명
 * 
 * 	<pre>
 * 로그인 서비스
 *     </pre>
 */
@Service("LoginService")
public class LoginServiceImpl implements LoginService {
	

	@Resource(name = "LoginDAO")
	private LoginDAO loginDAO;

	@Override
	public boolean isUser(CommandMap commandMap) {
		if (commandMap.get("loginID") != null) {
			commandMap.put("loginID", commandMap.get("loginID") );
			SessionUtil.setObject("loginID", commandMap.get("loginID"));
		}
		// 로그인 유저를 DB로부터 취득
		Object loginUser = loginDAO.selectLogin(commandMap.getMap());
		if (loginUser != null) {
			// 유저정보가 있는경우 유저정보를 세션에 설정
			SessionUtil.setLoginUserObject(loginUser);
			return true;
		}
		// 유저정보가 없는경우
		return false;
	}

}
