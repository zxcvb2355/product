package main.a.b.common;

public class CodeUtils {

	public static String inttoText(int s) {
		String ss = String.valueOf(s);
		String text = null;
		int num = 0;
		if(s == 0) {
			text = "매진";
		}else {
			text = ss;
		}
		
		return text;
	}
	
	
}
