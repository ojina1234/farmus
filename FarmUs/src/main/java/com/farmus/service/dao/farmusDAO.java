package com.farmus.service.dao;

import java.util.List;

import com.farmus.vo.boardVO;
import com.farmus.vo.memberVO;

public interface farmusDAO {
	public memberVO loginMember(memberVO vo) throws Exception;

	public List<?> selectBoard(boardVO boardVO) throws Exception;
}
