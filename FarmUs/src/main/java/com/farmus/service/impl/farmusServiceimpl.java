package com.farmus.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.farmus.service.farmusService;
import com.farmus.service.dao.farmusDAO;
import com.farmus.vo.memberVO;

@Service("farmusService")
public class farmusServiceimpl implements farmusService {

	@Autowired
	private farmusDAO mapper;

	@Override
	public memberVO loginMember(memberVO vo) throws Exception {
		return mapper.loginMember(vo);
	} 
		

}
