package com.yswsoft.myweb.web;


/*import net.sf.json.JSONObject;*/
import net.sf.json.JSONObject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.DispatcherServlet;
import org.springframework.web.servlet.ModelAndView;

import com.yswsoft.myweb.core.service.UserService;

public class BaseController extends DispatcherServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final Logger log = LoggerFactory.getLogger(BaseController.class);
	private UserService userService;
	
	protected ModelAndView jsonSuccess(String msg, Object data) {
		ModelAndView view = new ModelAndView("res");
		try {
			JSONObject json = new JSONObject();
			json.put("status", 0);
			json.put("statusText", msg);
			json.put("data", data);
			String res = json.toString();
			view.addObject("res", res);
		} catch (Exception e) {
			log.warn("json error", e.getMessage());
		}
		return view;
	}
	
	protected ModelAndView jsonError(String msg) {
		ModelAndView view = new ModelAndView("res");
		try {
			JSONObject json = new JSONObject();
			json.put("status", 1);
			json.put("statusText", msg);
			json.put("data", "null");
			String res = json.toString();
			view.addObject("res", res);
		} catch (Exception e) {
			log.warn("json error", e.getMessage());
		}
		return view;
	}
	
	
	@RequestMapping("/message")
	public ModelAndView getMessage(){
		ModelAndView model = new ModelAndView();
		model.addObject("message", "hello");
		model.setViewName("showMessage");
		return model;
	}
	
	private String pageHtml(String flag,int pageNo,long totalCount,long totalPageCount){
		String pageHtml="";
		int c=pageNo%8;
		int start=1;
		int end=1;
		StringBuilder sb = new StringBuilder();
		sb.append("");
		sb.append("<a  id=\"upid\" class=\"prev\" href=\"#\">上一页</a>");
		//number-cur
		if(totalPageCount>8){
			if(pageNo<8){
				for (int i = 1; i <= 8; i++) {
					sb.append("<a class=\"number ");
					if(i==pageNo){
						sb.append(" number-cur  ");
					}
					sb.append("\" onClick=\"go(");
					sb.append(i);
					sb.append(");\">");
					sb.append(i);
					sb.append("</a>");
				}
				sb.append("...");
				sb.append("<a class=\"number\" onClick=\"go(");
				sb.append(totalPageCount);
				sb.append(");\">");
				sb.append(totalPageCount);
				sb.append("</a>");
			}else{
				int s=pageNo-c+1;//开始一排的第一个
				int s1=s+8;//一排结束的值[不包含该值]
				if(c==0){
					if(flag.equals("up")){
						s=pageNo-8;
						if(totalPageCount<s1){
							for (int ss=pageNo-c; ss <= totalPageCount; ss++) {//for (int ss=pageNo-c+1; ss <= totalPageCount; ss++) {
								//System.out.println("-------------"+ss);
								/*sb.append("<a class=\"number\" onClick=\"go(");*/
								sb.append("<a class=\"number ");
								if(ss==pageNo){
									sb.append(" number-cur  ");
								}
								sb.append("\" onClick=\"go(");
								sb.append(ss);
								sb.append(");\">");
								sb.append(ss);
								sb.append("</a>");
							}
						}else{
							for (int i = pageNo-8+1; i <= pageNo; i++) {
								/*sb.append("<a class=\"number\" onClick=\"go(");*/
								sb.append("<a class=\"number ");
								if(i==pageNo){
									sb.append(" number-cur  ");
								}
								sb.append("\" onClick=\"go(");
								sb.append(i);
								sb.append(");\">");
								sb.append(i);
								sb.append("</a>");
							}
							sb.append("...");
							sb.append("<a class=\"number\" onClick=\"go(");
							sb.append(totalPageCount);
							sb.append(");\">");
							sb.append(totalPageCount);
							sb.append("</a>");
						}
						
					}else if(flag.equals("next")){
						s=pageNo+8;
						if(totalPageCount<s1){
							sb.append("<a class=\"number\" onClick=\"go(1);\">1</a> ");
							
							sb.append("...");
							for (int ss=pageNo-c; ss <= totalPageCount; ss++) {//for (int ss=pageNo-c+1; ss <= totalPageCount; ss++) {
								//System.out.println("-------------"+ss);
								/*sb.append("<a class=\"number\" onClick=\"go(");*/
								sb.append("<a class=\"number ");
								if(ss==pageNo){
									sb.append(" number-cur  ");
								}
								sb.append("\" onClick=\"go(");
								sb.append(ss);
								sb.append(");\">");
								sb.append(ss);
								sb.append("</a>");
							}
						}else{
							for (int i = pageNo+1; i <= s; i++) {
								/*sb.append("<a class=\"number\" onClick=\"go(");*/
								sb.append("<a class=\"number ");
								if(i==pageNo){
									sb.append(" number-cur  ");
								}
								sb.append("\" onClick=\"go(");
								sb.append(i);
								sb.append(");\">");
								sb.append(i);
								sb.append("</a>");
							}
							sb.append("...");
							sb.append("<a class=\"number\" onClick=\"go(");
							sb.append(totalPageCount);
							sb.append(");\">");
							sb.append(totalPageCount);
							sb.append("</a>");
						}
						
					}else if(flag.equals("curr")){
						s=pageNo+8;
						if(totalPageCount<s1){
							sb.append("<a class=\"number\" onClick=\"go(1);\">1</a> ");
							sb.append("...");
							for (int ss=pageNo-c; ss <= totalPageCount; ss++) {
								//System.out.println("-------------"+ss);
								/*sb.append("<a class=\"number\" onClick=\"go(");*/
								sb.append("<a class=\"number ");
								if(ss==pageNo){
									sb.append(" number-cur  ");
								}
								sb.append("\" onClick=\"go(");
								sb.append(ss);
								sb.append(");\">");
								sb.append(ss);
								sb.append("</a>");
							}
						}else{
							for (int i = pageNo; i < s; i++) {
								/*sb.append("<a class=\"number\" onClick=\"go(");*/
								sb.append("<a class=\"number ");
								if(i==pageNo){
									sb.append(" number-cur  ");
								}
								sb.append("\" onClick=\"go(");
								sb.append(i);
								sb.append(");\">");
								sb.append(i);
								sb.append("</a>");
							}
							sb.append("...");
							sb.append("<a class=\"number\" onClick=\"go(");
							sb.append(totalPageCount);
							sb.append(");\">");
							sb.append(totalPageCount);
							sb.append("</a>");
						}
						
					}
				}else if(totalPageCount<s1){
					sb.append("<a class=\"number\" onClick=\"go(1);\">1</a> ");
					sb.append("...");
					for (int ss=pageNo-c+1; ss <= totalPageCount; ss++) {
						//System.out.println("-------------"+ss);
						/*sb.append("<a class=\"number\" onClick=\"go(");*/
						sb.append("<a class=\"number ");
						if(ss==pageNo){
							sb.append(" number-cur  ");
						}
						sb.append("\" onClick=\"go(");
						sb.append(ss);
						sb.append(");\">");
						sb.append(ss);
						sb.append("</a>");
					}
				}
				
				else{
					for (int ss=pageNo-c+1; ss < s1; ss++) {
						//System.out.println("-------------"+ss);
						/*sb.append("<a class=\"number\" onClick=\"go(");*/
						sb.append("<a class=\"number ");
						if(ss==pageNo){
							sb.append(" number-cur  ");
						}
						sb.append(" \" onClick=\"go(");
						sb.append(ss);
						sb.append(");\">");
						sb.append(ss);
						sb.append("</a>");
					}
					if(s1<totalPageCount){
						sb.append("...");
						sb.append("<a class=\"number\" onClick=\"go(");
						sb.append(totalPageCount);
						sb.append(");\">");
						sb.append(totalPageCount);
						sb.append("</a>");
					}
				}
				
			}
		}else{//小于8
			for (int i = 1; i <= totalPageCount; i++) {
				/*sb.append("<a class=\"number\" onClick=\"go(");*/
				sb.append("<a class=\"number ");
				if(i==pageNo){
					sb.append(" number-cur  ");
				}
				sb.append("\" onClick=\"go(");
				sb.append(i);
				sb.append(");\">");
				sb.append(i);
				sb.append("</a>");
			}
		}
		sb.append("<a id=\"nextid\" class=\"next next-cur\" href=\"#\">下一页</a>");
		sb.append("<span class=\"total\">共<span>");
		sb.append(totalCount);
		sb.append("</span>条记录</span>");
		pageHtml=sb.toString();
		System.out.println(pageHtml);
		return pageHtml;
		
	}


}
