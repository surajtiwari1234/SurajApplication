package com.slokam.SBIController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SbiController {

	@RequestMapping("login")
	public ModelAndView login()
	{
		ModelAndView mv=new  ModelAndView();
		mv.setViewName("login");
		return mv;
	}
	

	@RequestMapping("containerhome")
	public ModelAndView humanpage()
	{
		ModelAndView mv=new  ModelAndView();
		mv.setViewName("container");
		return mv;
	}
	
	@RequestMapping("containconfigpage")
	public ModelAndView humancongifpage()
	{
		ModelAndView mv=new  ModelAndView();
		mv.setViewName("searchContest");
		return mv;
	}
	
/*	@RequestMapping("geohiery")
	public ModelAndView positonhierchy()
	{
		ModelAndView mv=new  ModelAndView();
		mv.setViewName("geobase");
		return mv;
	}*/
}
