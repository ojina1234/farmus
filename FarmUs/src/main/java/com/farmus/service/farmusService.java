package com.farmus.service;

import java.util.List;

import com.farmus.vo.boardVO;
import com.farmus.vo.memberVO;

public interface farmusService {
	public memberVO loginMember(memberVO vo) throws Exception;
	public List<?> selectBoard(boardVO boardVO) throws Exception;
}
