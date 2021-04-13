package com.farmus.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.farmus.service.farmusService;
import com.farmus.vo.memberVO;

@Controller
public class farmusController {

	@Resource(name = "farmusService")
	private farmusService farmusservice;

	@RequestMapping(value = "/")
	public String projectList(Model model) throws Exception {

		return "welcome";
	}
	
	@RequestMapping(value="/memberInsert", method=RequestMethod.GET)
	public void getmemberInsert() throws Exception{
		
	}
	
	@RequestMapping(value="/memberInsert", method=RequestMethod.POST)
	public String postmemberInsert(memberVO memberVO) throws Exception{
		farmusservice.memberInsert(memberVO);
		return null;
	}

}
