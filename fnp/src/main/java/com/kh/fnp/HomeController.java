package com.kh.fnp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("main.do")
	public String home() {
		
		return "main";
	}
	@RequestMapping("introduce.do")
	public String left_sidebar() {
		
		return "introduce";
	}
	
	@RequestMapping("userstudy.do")
	public String two_sidebar() {
		
		return "userStudy";
	}
	@RequestMapping("notice.do")
	public String no_sidebar() {
		
		return "notice";
	}
	
	
}
