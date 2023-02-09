package main.a.b.common.chabun.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import main.a.b.login.vo.LoginVO;
import main.a.b.product.vo.ProductVO;

@Repository
public class ProductChabunDAO {

	@Autowired(required=false)
	private SqlSession sqlSession;
	
	public ProductVO getProductChabun() {
		return sqlSession.selectOne("getProductChabun");
	}
	
	public LoginVO getMemChabun() {
		return sqlSession.selectOne("getMemChabun");
	}
}
