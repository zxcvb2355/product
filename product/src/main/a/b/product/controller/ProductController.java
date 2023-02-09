package main.a.b.product.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import main.a.b.common.ChabunUtils;
import main.a.b.common.ConstPack;
import main.a.b.common.FileUploadUtils;
import main.a.b.common.NumUtils;
import main.a.b.common.product_Session;
import main.a.b.common.chabun.service.ProductChabunService;
import main.a.b.product.service.ProductService;
import main.a.b.product.vo.ProductVO;

@Controller
public class ProductController {
	Logger logger = LogManager.getLogger(ProductController.class);
	
	@Autowired(required=false)
	private ProductService productService;
	
	@Autowired(required=false)
	private ProductChabunService productChabunService;
	
	@ResponseBody
	@PostMapping(value="/checkCount")
	public Object checkCount(HttpServletRequest req, ProductVO pvo) {
		
		logger.info("pname : " + pvo.getPname());
		
		String productCount = productService.checkCount(pvo);
		logger.info("productCount");

		
		String data = null;
		if(Integer.parseInt(productCount) > 0) {
			data = "notCountZero";
		}else{
			data = "countZero";
		}
		return data;
	}
	
	@ResponseBody
	@PostMapping(value="/pnameCheck")
	public Object pnameCheck(HttpServletRequest req, ProductVO pvo) {
		
		String pname = req.getParameter("pname");
		logger.info("pname : " + pname);
		
		pvo.setPname(pname);
		
		List<ProductVO> list = productService.pCheck(pvo);
		
		String pnameVal = null;
		
		if(list.size() == 0) {
			pnameVal = "PNAMENOPE";
		}else {
			pnameVal = "PNAMEYES";
		}
		
		
		return pnameVal;
	}
	
	
	
	@PostMapping(value="/products")
	public String productSelectAll(HttpServletRequest req, ProductVO pvo, Model m) {
		
		logger.info("val : " + req.getParameter("val"));
		
		
		String val = null;
		
		val = req.getParameter("val");
		if(val == null) {
			val = "00";
		}
		logger.info("val : " + val);
		pvo.setLookStyle(val);
		
		logger.info("minPay : " + pvo.getMinPay());
		
		logger.info("maxPay : " + pvo.getMaxPay());
		String pcate = req.getParameter("pcategory");
		logger.info("pcate : " + pcate);
		logger.info("pcategory : " + pvo.getPcategory());
		
		logger.info("pcategory_detail : " + pvo.getPcategory_detail());
		logger.info("detail_product : " + pvo.getDetail_product());
		
		pvo.setMinPay(NumUtils.comma_replace(pvo.getMinPay()));
		pvo.setMaxPay(NumUtils.comma_replace(pvo.getMaxPay()));
		
		pvo.setRowCount(String.valueOf(ConstPack.PRODUCT_ROWCOUNT));
		logger.info("rowCount : " + pvo.getRowCount());
		pvo.setGroupSize(String.valueOf(ConstPack.PRODUCT_GROUPSIZE));
		
		
		if(req.getParameter("nowPage") != null && req.getParameter("nowPage") != "") {
		
			String nowPage = req.getParameter("nowPage");
			logger.info("nowPage : " + nowPage);
			
			pvo.setNowPage(nowPage);
		}else {
			pvo.setNowPage(String.valueOf(ConstPack.PRODUCT_NOWPAGE));
		}
		
		logger.info("nowPAge : " + pvo.getNowPage());
		
		List<ProductVO> list = productService.productSelectAll(pvo);
		
		if(list.size() > 0) {
		m.addAttribute("val", val);
		m.addAttribute("Paging", pvo);
		m.addAttribute("list", list);
		
		return "product/ProductSelectAll";
		}else {
			return "product/NopeProduct";
		}
		 
	}
	
	@PostMapping(value="/productsx")
	public String productSelectCount(HttpServletRequest req, ProductVO pvo, Model m) {
		
		
		String val = null;
		
		val = req.getParameter("val");
		if(val == null) {
			val = "00";
		}
		logger.info("val : " + val);
		pvo.setLookStyle(val);
		logger.info("minPay : " + pvo.getMinPay());
		
		logger.info("maxPay : " + pvo.getMaxPay());
		String pcate = req.getParameter("pcategory");
		logger.info("pcate : " + pcate);
		logger.info("pcategory : " + pvo.getPcategory());
		
		logger.info("pcategory_detail : " + pvo.getPcategory_detail());
		logger.info("detail_product : " + pvo.getDetail_product());
		
		pvo.setMinPay(NumUtils.comma_replace(pvo.getMinPay()));
		pvo.setMaxPay(NumUtils.comma_replace(pvo.getMaxPay()));
		
		pvo.setRowCount(String.valueOf(ConstPack.PRODUCT_ROWCOUNT));
		logger.info("rowCount : " + pvo.getRowCount());
		pvo.setGroupSize(String.valueOf(ConstPack.PRODUCT_GROUPSIZE));
		
		if(req.getParameter("nowPage") != null && req.getParameter("nowPage") != "") {
			
			String nowPage = req.getParameter("nowPage");
			logger.info("nowPage : " + nowPage);
			
			pvo.setNowPage(nowPage);
		}else {
			pvo.setNowPage(String.valueOf(ConstPack.PRODUCT_NOWPAGE));
		}
		
		List<ProductVO> list = productService.productSelectCount(pvo);
		
		if(list.size() > 0) {
		m.addAttribute("val", val);
		m.addAttribute("Paging", pvo);
		m.addAttribute("list", list);
		
		return "product/productSelectCount";
	}else {
		return "product/NopeProduct";
	}
	
	}
	
	@PostMapping(value="/product")
	public String product(HttpServletRequest req, ProductVO pvo, Model m) {
		
		
		String gubun = req.getParameter("gubun");
		if(gubun.equals("select")) {
		
		
			String pnum = req.getParameter("pnum");
			logger.info("pnum : " + pnum);
			
			if(pnum != null) {
	
				pvo.setPnum(pnum);
			
			}else {
				product_Session ps = product_Session.getInstance();
				String pnum1 = ps.getSession(req);
				pvo.setPnum(pnum1);
			
			}
			logger.info("pvo.getPnum : " + pvo.getPnum());
			
			List<ProductVO> list = productService.product(pvo);
			
			if(list.size() > 0) {
				
				m.addAttribute("list", list);
				return "product/productContent";
		
			}
			
	}else if(gubun.equals("insert")) {
		return "product/productContent";
	}
		return "";
	}
	
	@PostMapping(value="/productUpdate")
	public String productUpdate(HttpServletRequest req, ProductVO pvo, Model m) {
		
		String pname = req.getParameter("check");
		logger.info("pnumUpdate : " + pname );
		
		pvo.setPname(pname);
		
		int updateOk = productService.productUpdate(pvo);
		
		if(updateOk > 0) {
			return "product/productUpdate";
		}else {
			String nope = "실패";
			m.addAttribute("nope", nope);
			return "product/productUpdate";
		}
		
	
	}
	
	@PostMapping(value="/productInsert")
	public String productInsert(HttpServletRequest req, Model m) {
		
		FileUploadUtils fu = new FileUploadUtils(ConstPack.PRODUCT_IMG_LOCATION, 
												 ConstPack.PRODUCT_IMG_SIZE, 
												 ConstPack.PRODUCT_IMG_ENCODING);
		
		boolean bool = fu.imgCheck(req);
		System.out.println("파일 유무 : " + bool);
		
		ProductVO pvo = null;
		pvo = new ProductVO();
		
		String pnum = ChabunUtils.getProductPnum("D", productChabunService.getProductChabun().getPnum());
		logger.info("db 다음 순번 채번 : " + pnum);
		pvo.setPnum(pnum);
		
		String pname = fu.getParameter("pname");
		logger.info("pname : " + pname);
		pvo.setPname(pname);
		
		String pcontent = fu.getParameter("pcontent");	
		pvo.setPcontent(pcontent.trim());
		logger.info("pcontent : " + pvo.getPcontent());
		
		int ppay = Integer.parseInt(fu.getParameter("ppay"));
		logger.info("ppay : " + ppay);
		pvo.setPpay(ppay);
		
		int pcount = Integer.parseInt(fu.getParameter("pcount"));
		logger.info("pcount : " + pcount);
		pvo.setPcount(pcount);
		
		String pcategory = fu.getParameter("pcategory");
		logger.info("pcategory : " + pcategory);
		pvo.setPcategory(pcategory);
		
		String pcategory_detail = fu.getParameter("pcategory_detail");
		logger.info("pcategory_detail : " + pcategory_detail);
		pvo.setPcategory_detail(pcategory_detail);
		
		String detail_product = fu.getParameter("detail_product");
		logger.info("detail_product : " + detail_product);
		pvo.setDetail_product(detail_product);
		
		String pimage = fu.getFileName("pimage");
		if(pimage == null) {
			pimage = "";
			pvo.setPimage(pimage);
		}else {
			pvo.setPimage(pimage);
		}
		logger.info("pimage : " + pimage);	
		
		int nCnt = productService.productInsert(pvo);
		logger.info("nCnt : " + nCnt);
		
		if(nCnt > 0) {
			logger.info("pnum : " + pnum);
			product_Session ps = product_Session.getInstance();
			ps.setSession(req, pnum);
			
			return "product/productInsert";
		}
		
		return "#";
	}

	@PostMapping(value="/productDelete")
	public String productDelete(HttpServletRequest req, ProductVO pvo) {
	
		String pname = req.getParameter("check");
		logger.info("pname : " + pname);
		
		pvo.setPname(pname);
		
		int nCnt = productService.productDelete(pvo);
		
		if(nCnt > 0) {
			return "product/productDelete";
		}
		
		return "";
	}
	
}
