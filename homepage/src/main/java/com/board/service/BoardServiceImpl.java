package com.board.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import com.common.command.CommandMap;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.board.dao.BoardDAO;

/**
 * @파일명 : BoardServiceImpl.java
 * @날짜 : 2017. 04. 18.
 * @작성자 : ChoHeumJun
 * @설명
 * 
 * 	<pre>
 * 		게시판 관련 처리 ServiceImpl
 *  </pre>
 */
@Service("BoardService")
public class BoardServiceImpl implements BoardService {

	Logger log = Logger.getLogger(this.getClass());

	@Resource(name="BoardDAO")
    private BoardDAO boardDAO;

	@Override
	public List<Map<String, Object>> selectBoardList( CommandMap commandMap) throws Exception {
		return boardDAO.selectBoardList(commandMap.getMap());
	}
	
}
