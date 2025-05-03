package com.skilldistillery.fishinglog.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.fishinglog.data.CatchLogDAO;
import com.skilldistillery.fishinglog.entities.CatchLog;


@Controller
public class CatchLogController {


	@Autowired
	private CatchLogDAO catchDAO;
	
	@RequestMapping(path = { "/", "home.do" })
	public String index(Model model) {
		List<CatchLog> allCatchLogs = catchDAO.findAll();
		model.addAttribute("catchlogList", allCatchLogs);
	  // return "WEB-INF/home.jsp"; // with no ViewResolver
	  return "home"; // if using a ViewResolver.
	}

}
