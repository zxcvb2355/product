package main.a.b.login.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import main.a.b.login.dao.LoginDAO;
import main.a.b.login.vo.LoginVO;

@Service
@Transactional
public class LoginServiceImpl implements LoginService {

	@Autowired(required=false)
	private LoginDAO loginDAO;
	
	@Override
	public int memInsert(LoginVO lvo) {
		// TODO Auto-generated method stub
		return loginDAO.memInsert(lvo);
	}

	@Override
	public List<LoginVO> idpwCheck(LoginVO lvo) {
		// TODO Auto-generated method stub
		return loginDAO.idpwCheck(lvo);
	}

}
