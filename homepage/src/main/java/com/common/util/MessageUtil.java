package com.common.util;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.annotation.Resource;

import com.common.constants.Constants;

import org.springframework.context.annotation.Scope;
import org.springframework.context.support.MessageSourceAccessor;
import org.springframework.stereotype.Repository;


/**
 * @파일명 : MessageUtil.java
 * @날짜 : 2017. 04. 18.
 * @작성자 : ChoHeumJun
 * @설명
 * 
 * 	<pre>
 * DIS 공통 메세지 처리 클레스
 *     </pre>
 */

@Repository("disMessageUtil")
@Scope("prototype")
public class MessageUtil {

	/**
	 * 메세지 소스를 정의
	 */
	@Resource(name = "messageSourceAccessor")
	private static MessageSourceAccessor messageSource = null;

	public void setMessageSourceAccessor(MessageSourceAccessor messageSource) {
		MessageUtil.messageSource = messageSource;
	}

	/**
	 * KEY에 해당하는 메세지 반환
	 * 
	 * @param key
	 * @param objs
	 * @return
	 */
	public static String getMessage(String key, Object[] objs) {
		return messageSource.getMessage(key, objs, key, Locale.getDefault());
	}

	/**
	 * KEY에 해당하는 메세지 반환
	 * 
	 * @param key
	 * @param objs
	 * @return
	 */
	public static String getMessage(String key, String subMsg) {
		return messageSource.getMessage(key, new String[] { subMsg }, key, Locale.getDefault());
	}

	/**
	 * KEY에 해당하는 메세지 반환
	 * 
	 * @param key
	 * @param objs
	 * @return
	 */
	public static String getMessage(String key) {
		return messageSource.getMessage(key, key, Locale.getDefault());
	}

	/**
	 * @메소드명 : getResultMessage
	 * @날짜 : 2017. 04. 18.
	 * @작성자 : ChoHeumJun
	 * @설명 :
	 * 
	 *     <pre>
	 * 결과와 키값을 입력받아 결과와 메세지를 담은 맵을 반환한다.
	 *     </pre>
	 * 
	 * @param result
	 * @param key
	 * @return
	 */
	public static Map<String, String> getResultMessage(String msg, String subMsg) {

		Map<String, String> map = new HashMap<String, String>();
		map.put(Constants.RESULT_MASAGE_KEY, messageSource.getMessage(msg, new String[] { subMsg }, msg));

		return map;
	}

	/**
	 * @메소드명 : getResultMessage
	 * @날짜 : 2017. 04. 18.
	 * @작성자 : ChoHeumJun
	 * @설명 :
	 * 
	 *     <pre>
	 * 결과값을 입력받아 디폴트로 설정되어있는 메세지를 담은 맵을 반환한다.
	 *     </pre>
	 * 
	 * @param result
	 * @return
	 */
	public static Map<String, String> getResultMessage(String result) {

		Map<String, String> map = new HashMap<String, String>();
		if (result.equals(Constants.RESULT_SUCCESS)) {
			map.put(Constants.RESULT_KEY, Constants.RESULT_SUCCESS);
			map.put(Constants.RESULT_MASAGE_KEY, messageSource.getMessage("common.default.succ"));
		} else {
			map.put(Constants.RESULT_KEY, Constants.RESULT_FAIL);
			map.put(Constants.RESULT_MASAGE_KEY, messageSource.getMessage("common.default.fail"));
		}
		return map;
	}

	/**
	 * @메소드명 : getResultMessage
	 * @날짜 : 2017. 04. 18.
	 * @작성자 : ChoHeumJun
	 * @설명 :
	 * 
	 *     <pre>
	 * 결과값을 입력받아 디폴트로 설정되어있는 메세지를 담은 맵을 반환한다.
	 *     </pre>
	 * 
	 * @param result
	 * @return
	 */
	public static Map<String, Object> getResultObjMessage(String result) {

		Map<String, Object> map = new HashMap<String, Object>();
		if (result.equals(Constants.RESULT_SUCCESS)) {
			map.put(Constants.RESULT_KEY, Constants.RESULT_SUCCESS);
			map.put(Constants.RESULT_MASAGE_KEY, messageSource.getMessage("common.default.succ"));
		} else {
			map.put(Constants.RESULT_KEY, Constants.RESULT_FAIL);
			map.put(Constants.RESULT_MASAGE_KEY, messageSource.getMessage("common.default.fail"));
		}
		return map;
	}
}
