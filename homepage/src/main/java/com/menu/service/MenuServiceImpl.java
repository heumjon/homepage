package com.menu.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import com.common.command.CommandMap;
import com.menu.dao.MenuDAO;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.board.dao.BoardDAO;

/**
 * @파일명 : MenuServiceImpl.java
 * @날짜 : 2017. 04. 18.
 * @작성자 : ChoHeumJun
 * @설명
 * 
 * 	<pre>
 * 		게시판 관련 처리 ServiceImpl
 *  </pre>
 */
@Service("MenuService")
public class MenuServiceImpl implements MenuService {

	Logger log = Logger.getLogger(this.getClass());

	@Resource(name="MenuDAO")
    private MenuDAO menuDAO;

	@Override
	public List<Map<String, Object>> selectMenuList( CommandMap commandMap) throws Exception {
		return menuDAO.selectMenuList(commandMap.getMap());
	}
	
}
