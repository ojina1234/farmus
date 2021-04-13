package com.farmus.service.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

import com.farmus.vo.memberVO;

public class farmusDAOImpl implements farmusDAO {

	@Inject SqlSession sql;
	
	@Override
	public void memberInsert(memberVO memberVO) throws Exception {
		sql.insert("farmus_sql.memberInsert", memberVO);
		
	}

}
