package com.yswsoft.myweb.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/usr")
public class UserController extends BaseController{

	@RequestMapping(value="/index",method=RequestMethod.GET)
	public String getIndex(){
		return "index";
	}
	
}
