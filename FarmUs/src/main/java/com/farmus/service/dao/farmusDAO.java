package com.farmus.service.dao;

import java.util.List;

import com.farmus.vo.memberVO;

public interface farmusDAO {
	
	//회원가입
	public void memberInsert(memberVO memberVO) throws Exception;
	
}
