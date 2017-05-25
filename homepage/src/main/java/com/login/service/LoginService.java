package com.login.service;

import com.common.command.CommandMap;


/**
 * @파일명 : LoginService.java
 * @날짜 : 2017. 4. 19.
 * @작성자 : ChoHeumJun
 * @설명
 * 
 * 	<pre>
 *  	로그인 서비스
 *  </pre>
 */
public interface LoginService {

	/**
	 * @메소드명 : isUser
	 * @날짜 : 2015. 11. 18.
	 * @작성자 : 황경호
	 * @설명 :
	 * 
	 *     <pre>
	 * 유저 체크
	 *     </pre>
	 * 
	 * @param commandMap
	 * @return
	 */
	boolean isUser(CommandMap commandMap);

}
