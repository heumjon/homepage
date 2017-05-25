package com.login.dao;

import java.util.Map;
import com.common.dao.AbstractDAO;
import org.springframework.stereotype.Repository;


/** 
 * @파일명	: LoginDAO.java 
 * @날짜	: 2017. 04. 19. 
 * @작성자	: ChoHeumJun 
 */
@Repository("LoginDAO")
public class LoginDAO extends AbstractDAO {
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectLogin(Map<String, Object> map) {
		return (Map<String, Object>)selectOne("LoginUser.selectLogin", map);
	}


}
