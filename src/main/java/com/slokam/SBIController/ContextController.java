package com.slokam.SBIController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.slokam.SBIPojo.HumanPojo;
import com.slokam.SBIServices.HumanService;

@Controller
public class ContextController {
	
	@Autowired
	public HumanService humaser;

	@RequestMapping("home")
	public ModelAndView home()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("Contest");
		return mv;
	}
	
	@RequestMapping("setuphierchy")
	public ModelAndView setupgeo()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("setup_geo_hierarchy");
		return mv;
	}
	@RequestMapping("setuphumainhierchy")
	public ModelAndView setuphuman()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("setup_human_hierarchy");
		return mv;
	}
	
	@RequestMapping("insert")
	public ModelAndView save(HumanPojo human)
	{
		humaser.saveserv(human);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("setup_human_hierarchy");
		return mv;
	}
}
