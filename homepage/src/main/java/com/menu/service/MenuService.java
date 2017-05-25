package com.menu.service;

import java.util.List;
import java.util.Map;

import com.common.command.CommandMap;

/**
 * @파일명 : MenuService.java
 * @날짜 : 2017. 04. 18.
 * @작성자 : ChoHeumJun
 * @설명
 * 
 * 	<pre>
 * 		게시판 관련 처리 Service
 *  </pre>
 */
public interface MenuService {

	List<Map<String, Object>> selectMenuList(CommandMap commandMap) throws Exception;

}
