package main.a.b.common.chabun.service;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import main.a.b.common.chabun.dao.ProductChabunDAO;
import main.a.b.login.vo.LoginVO;
import main.a.b.product.vo.ProductVO;

@Service
@Transactional
public class ProductChabunServiceImpl implements ProductChabunService {
	Logger logger = LogManager.getLogger(ProductChabunServiceImpl.class);
	
	@Autowired(required=false)
	private ProductChabunDAO productChabunDAO;

	@Override
	public ProductVO getProductChabun() {
		// TODO Auto-generated method stub
		logger.info("채번 서비스 진입");
		
		
		return productChabunDAO.getProductChabun();
	}
	
	@Override
	public LoginVO getMemChabun() {
		// TODO Auto-generated method stub
		return productChabunDAO.getMemChabun();
	}
	
	
}
