package com.board.service;

import java.util.List;
import java.util.Map;

import com.common.command.CommandMap;

/**
 * @파일명 : BoardService.java
 * @날짜 : 2017. 04. 18.
 * @작성자 : ChoHeumJun
 * @설명
 * 
 * 	<pre>
 * 		게시판 관련 처리 Service
 *  </pre>
 */
public interface BoardService {

	List<Map<String, Object>> selectBoardList(CommandMap commandMap) throws Exception;

}
