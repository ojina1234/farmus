package com.farmus.service.impl;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.farmus.service.farmusService;
import com.farmus.service.dao.farmusDAO;
import com.farmus.vo.memberVO;

@Service("farmusService")
public class farmusServiceimpl implements farmusService {

	@Inject farmusDAO dao; 
	
	@Override
	public void memberInsert(memberVO memberVO) throws Exception {
		dao.memberInsert(memberVO);
	}
	

}
