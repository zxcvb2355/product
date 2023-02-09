package main.a.b.login.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import main.a.b.login.vo.LoginVO;

@Repository
public class LoginDAO {
	
	@Autowired(required=false)
	private SqlSession sqlSession;
	
	
	
	public int memInsert(LoginVO lvo) {
		return sqlSession.insert("memInsert", lvo);
	}

	public List<LoginVO> idpwCheck(LoginVO lvo){
		return sqlSession.selectList("idpwCheck", lvo);
	}
}
