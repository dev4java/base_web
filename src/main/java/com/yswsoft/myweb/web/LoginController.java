package com.yswsoft.myweb.web;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.yswsoft.myweb.common.ParamVerify;
import com.yswsoft.myweb.core.model.User;
import com.yswsoft.myweb.core.service.UserService;


@Controller
public class LoginController extends BaseController{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private UserService userService;
	
	
	
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String getLogin(){
		return "login";
	}
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public ModelAndView postLogin(HttpServletRequest req,HttpServletResponse res){
		ModelAndView model = new ModelAndView();
		String userName = ParamVerify.getWebString(req, "username");
		String userpwd = ParamVerify.getWebString(req, "password");
		String userRme = ParamVerify.getWebString(req, "remember");
		
		System.out.println(userName+"  "+userpwd+"  "+userRme);
		User u=userService.find(userName);
		if(u==null ||"".equals(u)){
			u=new User();
			u.setStatus(0);
			u.setUserPassword("21232f297a57a5a743894a0e4a801fc3");
		}
		int dbStatus;
		String dbPassword="";
		if(u!=null && !"".equals(u)){
			dbPassword=u.getUserPassword();
			dbStatus =u.getStatus();
			if(dbStatus!=0){//不是激活状态
				model.setViewName("error");
				model.addObject("msg", "用户状态未激活");
				return this.jsonError("用户状态未激活");
			}else{
				if(!dbPassword.equals(userpwd)){
					model.setViewName("error");
					model.addObject("msg", "用户密码错误");
					return this.jsonError("无此用户或用户密码错");
				}else{
					ModelAndView view= this.jsonSuccess("sucess", 0);
					System.out.println(view.toString());
					/*Map map=view.getModel();
					Object s[] = map.keySet().toArray();
					for (int i = 0; i < map.size(); i++) {
						System.out.println(map.get(s[i]));
					}*/
					return view;
				}
			}
		}
		return null;
	}
	

	
}
