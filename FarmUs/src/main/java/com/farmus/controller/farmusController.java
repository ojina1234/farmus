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
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginMemeber(memberVO vo, Model model,  HttpServletRequest req) throws Exception{
		
		HttpSession session = req.getSession();
		memberVO member = farmusservice.loginMember(vo);
		if(member != null) {
			
			model.addAttribute("member", member);
			
		}
		
        return "main";


	}

}
