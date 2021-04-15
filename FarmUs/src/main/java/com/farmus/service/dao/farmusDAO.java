package com.farmus.service.dao;

import java.util.List;

import com.farmus.vo.boardVO;
import com.farmus.vo.memberVO;
import com.farmus.vo.monseedVO;

public interface farmusDAO {
	public memberVO loginMember(memberVO vo) throws Exception;
	public monseedVO getMonseed(int m_num) throws Exception;
	public List<boardVO> selectBoardList() throws Exception;
	public int insertBoard(boardVO vo) throws Exception;
	public boardVO boardOpen(String b_title) throws Exception;


}
