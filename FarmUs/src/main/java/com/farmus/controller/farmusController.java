package com.farmus.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.farmus.service.farmusService;
import com.farmus.vo.boardVO;
import com.farmus.vo.memberVO;
import com.farmus.vo.monseedVO;

@Controller
public class farmusController {
	
	public String Date() {
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	Calendar cal = Calendar.getInstance();
	String b_date = sdf.format(cal.getTime());
	return b_date;
	}

	@Resource(name = "farmusService")
	private farmusService farmusservice;

	@RequestMapping(value = "/")
	public String projectList(Model model) throws Exception {

		return "welcome";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginMemeber(memberVO vo, Model model, HttpServletRequest req) throws Exception{
		
		HttpSession session = req.getSession();
		
		memberVO member = farmusservice.loginMember(vo);
		monseedVO monseed = farmusservice.getMonseed(member.getM_num());
		
	
		int co2 = (Integer.parseInt(monseed.getA_co()))/10;
		List<boardVO> list = farmusservice.selectBoardList();
		
		
		if(member != null) {
			
			model.addAttribute("member", member);
			model.addAttribute("monseed", monseed);
			model.addAttribute("co2", co2);			
			model.addAttribute("list", list);
			
			return "main";
			
		}else {
			
			
			return "welcome";
			
		}
		

	}
	
	@RequestMapping(value = "/insertBoard", method = RequestMethod.POST)
	public String insertBoard(boardVO vo, Model model, HttpServletRequest req) throws Exception {
		HttpSession session = req.getSession();
		int cnt = farmusservice.insertBoard(vo);
		return "main";
	}
	
	@RequestMapping(value = "/boardOpen", method = RequestMethod.GET)
	public String boardOpen(boardVO vo, Model model, HttpServletRequest req) throws Exception {
		HttpSession session = req.getSession();
		
		boardVO board = farmusservice.boardOpen(vo.getB_title());
		model.addAttribute("board", board);
		return "main";
	}

}
