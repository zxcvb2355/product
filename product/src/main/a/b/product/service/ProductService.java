package main.a.b.product.service;

import java.util.List;

import main.a.b.product.vo.ProductVO;

public interface ProductService {
	List<ProductVO> productSelectAll(ProductVO pvo);
	
	List<ProductVO> productSelectCount(ProductVO pvo);
	
	List<ProductVO> product(ProductVO pvo);
	
	String checkCount(ProductVO pvo);
	
	int productUpdate(ProductVO pvo);
	
	int productInsert(ProductVO pvo);
	
	int productDelete(ProductVO pvo);
	
	List<ProductVO> pCheck(ProductVO pvo);
	
}
