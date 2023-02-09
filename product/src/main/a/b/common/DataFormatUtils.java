package main.a.b.common;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

public class DataFormatUtils {

	Logger logger = LogManager.getLogger(DataFormatUtils.class);
	
	
	public static String yyyymmdd() {
		return new SimpleDateFormat("yyyyMMdd").format(new Date());
	}
	
	public static String yyyymm () {
		return new SimpleDateFormat("yyyyMM").format(new Date());
	}
	
	public static String yyyy() {
		return new SimpleDateFormat("yyyy").format(new Date());
	}
	
	
	public static String dateFormats(String dateFormat) {
		
		String date = "";
		
		if(dateFormat != null && dateFormat.length() > 0) {
			
			if("D".equalsIgnoreCase(dateFormat)) {
				date = DataFormatUtils.yyyymmdd();
			}else if("M".equalsIgnoreCase(dateFormat)) {
				date = DataFormatUtils.yyyymm();
			}else if("Y".equalsIgnoreCase(dateFormat)) {
				date = DataFormatUtils.yyyy();
			}else if("N".equalsIgnoreCase(dateFormat)) {
				date = "";
			}
			
			
		}
		
		
		return date;
	}
}
