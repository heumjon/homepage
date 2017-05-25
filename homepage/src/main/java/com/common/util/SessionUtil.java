package com.common.util;

import java.util.HashMap;
import java.util.Map;

import com.common.constants.Constants;

import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;


/**
 * @파일명 : SessionUtil.java
 * @날짜 : 2017. 04. 18.
 * @작성자 : ChoHeumJun
 * @설명
 * 
 * 	<pre>
 *  	세션 정보 관련 클레스
 *  </pre>
 */
public class SessionUtil {

	/**
	 * @메소드명 : getAuthenticatedUser
	 * @날짜 : 2017. 04. 18.
	 * @작성자 : ChoHeumJun
	 * @설명 :
	 * 
	 *     <pre>
	 * 			세션으로 부터 유저 정보를 취득한다.
	 * 			유저정보가 없으면 NULL반환
	 *     </pre>
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public static Map<String, Object> getAuthenticatedUser() {
		Map<String, Object> result = new HashMap<String, Object>();
		Object userInfo = RequestContextHolder.getRequestAttributes().getAttribute(Constants.SESSION_LOGIN_USER_OBJ,
				RequestAttributes.SCOPE_SESSION);
		if (userInfo == null) {
			return null;
		}
		result = (Map<String, Object>) userInfo;

		return result;
	}

	/**
	 * @메소드명 : getUserId
	 * @날짜 : 2017. 04. 18.
	 * @작성자 : ChoHeumJun
	 * @설명 :
	 * 
	 *     <pre>
	 * 			세션으로 부터 유저아이디를 취득한다.
	 *     </pre>
	 * 
	 * @return
	 */
	public static String getUserId() {
		Map<String, Object> userInfo = getAuthenticatedUser();
		String userId = "";
		if (userInfo != null) {
			userId = userInfo.get(Constants.SESSION_LOGIN_ID).toString();
		}
		return userId;
	}

	/**
	 * @메소드명 : setLoginUserObject
	 * @날짜 : 2017. 04. 18.
	 * @작성자 : ChoHeumJun
	 * @설명 :
	 * 
	 *     <pre>
	 * 			DB에서 취득한 로그인 유저정보를 세션에 저장
	 *     </pre>
	 * 
	 * @param loginUser
	 */
	public static void setLoginUserObject(Object loginUser) {
		RequestContextHolder.getRequestAttributes().setAttribute(Constants.SESSION_LOGIN_USER_OBJ, loginUser,
				RequestAttributes.SCOPE_SESSION);

	}

	/**
	 * @메소드명 : setObject
	 * @날짜 : 2017. 04. 18.
	 * @작성자 : ChoHeumJun
	 * @설명 :
	 * 
	 *     <pre>
	 * 			세션에 입력된 정보를 저장한다.
	 *     </pre>
	 * 
	 * @param key
	 * @param obj
	 */
	public static void setObject(String key, Object obj) {
		RequestContextHolder.getRequestAttributes().setAttribute(key, obj, RequestAttributes.SCOPE_SESSION);
	}

	/**
	 * @메소드명 : getObject
	 * @날짜 : 2017. 04. 18.
	 * @작성자 : ChoHeumJun
	 * @설명 :
	 * 
	 *     <pre>
	 * 			세션에 입력된 정보를 취득한다.
	 *     </pre>
	 * 
	 * @param key
	 * @return
	 */
	public static Object getObject(String key) {
		Object obj = RequestContextHolder.getRequestAttributes().getAttribute(key, RequestAttributes.SCOPE_SESSION);
		if (obj == null) {
			obj = "";
		}
		return obj;
	}

}
