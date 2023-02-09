package main.a.b.login.service;

import java.util.List;

import main.a.b.login.vo.LoginVO;

public interface LoginService {

	public int memInsert(LoginVO lvo);
	
	List<LoginVO> idpwCheck(LoginVO lvo);
	
}
