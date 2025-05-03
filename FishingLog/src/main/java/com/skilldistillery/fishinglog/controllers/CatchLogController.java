package com.skilldistillery.fishinglog.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.fishinglog.data.CatchLogDAO;
import com.skilldistillery.fishinglog.entities.CatchLog;


@Controller
public class CatchLogController {


	@Autowired
	private CatchLogDAO catchDAO;
	
	@RequestMapping(path = { "/", "home.do" })
	public String index(Model model) {
	  // return "WEB-INF/home.jsp"; // with no ViewResolver
	  return "home"; // if using a ViewResolver.
	}
	
	@RequestMapping(path = "getCatchLog.do", method = RequestMethod.GET)
	public ModelAndView getCatchLog(@RequestParam("catchLogId") int catchLogId) {
		ModelAndView mv = new ModelAndView();
		CatchLog foundCatchLog;
		try {
			foundCatchLog = catchDAO.findById(catchLogId);
			mv.addObject("catchLog", foundCatchLog);
			mv.setViewName("catchlog/show");
			return mv;
		} catch (Exception e) {
			foundCatchLog = null;
			mv.addObject(foundCatchLog);
			mv.setViewName("catchlog/show");
			return mv;
		}
	}
	
	@RequestMapping(path = "goToUpdateForm.do", method = RequestMethod.GET)
	public ModelAndView goToUpdateForm(@RequestParam("id") int catchLogId) {
		ModelAndView mv = new ModelAndView();
		CatchLog foundCatchLog = catchDAO.findById(catchLogId);
		mv.addObject("catchLog", foundCatchLog);
		mv.setViewName("catchlog/update");
		return mv;
	}
	
	@RequestMapping(path = "goToCreateForm.do", method = RequestMethod.GET )
	public ModelAndView goToCreateForm() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("catchlog/create");
		return mv;
	}

}
