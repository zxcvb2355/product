package main.a.b.common;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

public class ChabunUtils {

	static Logger logger = LogManager.getLogger(ChabunUtils.class);
	
	
	public static String numPad(String dateFormat, String number) {
		
		logger.info("db 갖다온 다음 순번 번호 : " + number);
		
		for(int i = number.length(); i < 4; i++) {
			number = "0" + number;
		}
		
		String date = DataFormatUtils.dateFormats(dateFormat);
		
		return date.concat(number);
	}

	public static String getProductPnum(String dateFormat, String number) {
		return ConstPack.PRODUCT_PNUM_GUBUN.concat(ChabunUtils.numPad(dateFormat, number));
	}
	
	public static String getLoginMnum(String dateFormat, String number) {
		return ConstPack.LOGIN_MNUM_GUBUN.concat(ChabunUtils.numPad(dateFormat, number));
	}

}
