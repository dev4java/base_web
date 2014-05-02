package com.yswsoft.myweb.web;

import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

public class Test {

	public static final Map ParentType() {
		Map<String, String> map = new HashMap<String, String>();
		map.put("爸爸", "爸爸");
		map.put("妈妈", "妈妈");
		map.put("其他", "其他");
		return map;
	}

	// 获得家长身份
	public static String getParentType(String key) {
		String str = (String) Test.ParentType().get(key);
		if (str == null || "".equals(str)) {
			str = "其他";
		}
		return str;
	}

	public static String StringFilter(String str) throws PatternSyntaxException {
		// 只允许字母和数字
		// String regEx = "[^a-zA-Z0-9]";
		// 清除掉所有特殊字符
		String regEx = "[`~!@#$%^&*()+=|{}':;',\\[\\].<>/?~！@#￥%……&*（）——+|{}【】‘；：”“’。，、？]";
		Pattern p = Pattern.compile(regEx);
		Matcher m = p.matcher(str);
		return m.replaceAll("").trim();
	}

	
	public void testStringFilter() throws PatternSyntaxException {
		String str = "*adCVs*34_a _09_b5*[/435^*&城池()^$$&*).{}+.|.)%%*(*.中国}34{45[]12.fd'*&999下面是中文的字符￥……{}【】。，；’“‘”？";
		System.out.println(str);
		System.out.println(StringFilter(str));
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Test s = new Test();
		s.testStringFilter();
		// System.out.println(s.getParentType("妈妈"));
	}

}
