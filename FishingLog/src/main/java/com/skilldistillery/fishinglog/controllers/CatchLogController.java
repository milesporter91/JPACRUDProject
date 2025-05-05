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

	@RequestMapping(path = "update.do", method = RequestMethod.POST)
	public ModelAndView updateCatchLog(@RequestParam("catchLogId") int catchLogId, CatchLog catchLog) {
		ModelAndView mv = new ModelAndView();
		CatchLog managedCatchLog = catchDAO.updateCatchLog(catchLogId, catchLog);
		mv.addObject("catchLog", managedCatchLog);
		mv.addObject("message", "Catch Log Updated");
		mv.setViewName("catchlog/show");
		return mv;
	}

	@RequestMapping(path = "goToCreateForm.do", method = RequestMethod.GET)
	public ModelAndView goToCreateForm() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("catchlog/create");
		return mv;
	}

	@RequestMapping(path = "create.do", method = RequestMethod.POST)
	public ModelAndView createCatchLog(CatchLog catchLog) {
		ModelAndView mv = new ModelAndView();
		CatchLog newCatchLog = catchDAO.addCatchLog(catchLog);
		if (newCatchLog != null) {
			mv.addObject("catchLog", newCatchLog);
			mv.addObject("message", "Catch Log Added.");
		} else {
			mv.addObject("message", "Could not add Catch Log");
		}
		mv.setViewName("catchlog/show");
		return mv;
	}
	
	@RequestMapping(path = "delete.do", method= RequestMethod.POST)
	public ModelAndView deleteCatchLog(@RequestParam("catchLogId") int catchLogId) {
		ModelAndView mv = new ModelAndView();
		catchDAO.deleteCatchLog(catchLogId);
		CatchLog catchLogToDelete = catchDAO.findById(catchLogId);
		if (catchLogToDelete != null) {
			mv.addObject("catchLog", catchLogToDelete);
			mv.addObject("message", "Could not delete Catch Log.");
			mv.setViewName("catchlog/show");
		}
		else {
			mv.addObject("message", "Catch Log deleted.");
			mv.setViewName("home");
		}
		return mv;
	}
	
	@RequestMapping(path = "showAll.do", method= RequestMethod.GET)
	public ModelAndView findAllCatchLogs() {
		ModelAndView mv = new ModelAndView();
		List<CatchLog> catchLogList = catchDAO.findAll();
		mv.addObject("catchLogList", catchLogList);
		mv.setViewName("catchlog/show");
		
		return mv;
	}

}
