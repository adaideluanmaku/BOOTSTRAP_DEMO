package com.ch.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/myweb")
public class Mywebaction {

	@RequestMapping("/open")
	public ModelAndView bootstrap_table(HttpServletRequest req) {
		return new ModelAndView("redirect:/myweb.jsp");
	}
	
	@RequestMapping("/logtag")
	public ModelAndView logtag(HttpServletRequest req) {
		return new ModelAndView("/logtag");
	}
	
	@RequestMapping("/scrollspy")
	public ModelAndView scrollspy(HttpServletRequest req) {
		return new ModelAndView("/scrollspy");
	}
	
	@RequestMapping("/table")
	public ModelAndView table(HttpServletRequest req) {
		return new ModelAndView("/bootstrap_table_demo");
	}
	
	@RequestMapping("/grouptags")
	public ModelAndView grouptags(HttpServletRequest req) {
		return new ModelAndView("/grouptags");
	}
}
