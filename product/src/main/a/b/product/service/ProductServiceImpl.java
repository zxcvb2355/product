package main.a.b.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import main.a.b.product.dao.ProductDAO;
import main.a.b.product.vo.ProductVO;

@Service
@Transactional
public class ProductServiceImpl implements ProductService {

	@Autowired(required=false)
	private ProductDAO productDAO;
	
	@Override
	public List<ProductVO> productSelectAll(ProductVO pvo) {
		// TODO Auto-generated method stub
		return productDAO.productSelectAll(pvo);
	}

	@Override
	public List<ProductVO> productSelectCount(ProductVO pvo) {
		// TODO Auto-generated method stub
		return productDAO.productSelectCount(pvo);
	}

	@Override
	public List<ProductVO> product(ProductVO pvo) {
		// TODO Auto-generated method stub
		return productDAO.product(pvo);
	}

	@Override
	public String checkCount(ProductVO pvo) {
		// TODO Auto-generated method stub
		return productDAO.checkCount(pvo);
	}

	@Override
	public int productUpdate(ProductVO pvo) {
		// TODO Auto-generated method stub
		return productDAO.productUpdate(pvo);
	}

	@Override
	public int productInsert(ProductVO pvo) {
		// TODO Auto-generated method stub
		return productDAO.productInsert(pvo);
	}

	@Override
	public int productDelete(ProductVO pvo) {
		// TODO Auto-generated method stub
		return productDAO.productDelete(pvo);
	}

	@Override
	public List<ProductVO> pCheck(ProductVO pvo) {
		// TODO Auto-generated method stub
		return productDAO.pCheck(pvo);
	}


}
