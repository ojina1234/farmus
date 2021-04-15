package com.farmus.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.farmus.service.farmusService;
import com.farmus.service.dao.farmusDAO;
import com.farmus.vo.boardVO;
import com.farmus.vo.memberVO;
import com.farmus.vo.monseedVO;

@Service("farmusService")
public class farmusServiceimpl implements farmusService {

	@Autowired
	private farmusDAO mapper;

	@Override
	public memberVO loginMember(memberVO vo) throws Exception {
		return mapper.loginMember(vo);
	}

	@Override
	public monseedVO getMonseed(int m_num) throws Exception {
		return mapper.getMonseed(m_num);
	}

	@Override
	public List<boardVO> selectBoardList() throws Exception {
		return mapper.selectBoardList();
	}

	@Override
	public int insertBoard(boardVO vo) throws Exception {
		return mapper.insertBoard(vo);
	}

	@Override
	public boardVO boardOpen(String b_title) throws Exception {
		
		return mapper.boardOpen(b_title);
	}

	
		

}
