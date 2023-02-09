package main.a.b.common;

import java.text.DecimalFormat;

public class NumUtils {

	public static String comma(int s) {
		if(s != 0) {
		int iS = s;
		return new DecimalFormat("###,###").format(iS);
		}else if(s == 0) {
			return "";
		}
		return "";
	}

	public static String comma_replace(String s) {
		
		if(s != null) {
		String ss = "";
		int is = s.indexOf(',');
		
		if (is != -1) {
			System.out.println("is : " + is);
			ss = s.replace(",", "");
		}else {
			ss = s;
		}
		
		return ss;
		}
		return s;
	}
	public static void main(String args[]) {		
		//System.out.println(NumUtil.comma("5000"));
		System.out.println(NumUtils.comma_replace("5000"));
		System.out.println(NumUtils.comma_replace("5,000"));
	}
}

