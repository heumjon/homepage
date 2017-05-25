package com.menu.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.common.dao.AbstractDAO;

/**
 * @파일명 : MenuDAO.java
 * @날짜 : 2017. 04. 18.
 * @작성자 : ChoHeumJun
 * @설명
 * 
 * 	<pre>
 * 		게시판 관련 처리 DAO
 *  </pre>
 */
@Repository("MenuDAO")
public class MenuDAO extends AbstractDAO{

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectMenuList(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>)selectList("MenuList.selectMenuList", map);
	}

}
