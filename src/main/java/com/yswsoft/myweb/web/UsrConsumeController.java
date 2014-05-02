package com.yswsoft.myweb.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/usr/consume")
public class UsrConsumeController extends BaseController{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@RequestMapping("/usr/consume/add")
	public String getConsume(){
		//ModelAndView model = new ModelAndView();
		//model.setViewName("/usr/consume/add");
		return "/usr/consume/consume_add";
	}
}
