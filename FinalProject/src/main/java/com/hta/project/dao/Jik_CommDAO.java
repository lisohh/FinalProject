package com.hta.project.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hta.project.domain.Jik_Comm;

@Repository
public class Jik_CommDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	/*
	public int getListCount(int board_num) {
		return sqlSession.selectOne("Jik_Comms.count",board_num);
	}

	public List<Jik_Comm> getCommnetList(Map<String, Integer> map) {
		
		return sqlSession.selectList("Jik_Comms.getList",map);
	}

	public int Jik_CommsInsert(Jik_Comm co) {
	
		return sqlSession.insert("Jik_Comms.insert",co);
	}
	
	public int Jik_CommsDelete(int num) {
		
		return sqlSession.delete("Jik_Comms.delete",num);
	}

	public int Jik_CommsUpdate(Jik_Comm co) {
		return sqlSession.update("Jik_Comms.update",co);
	}
	*/

	public int getListCount(int board_num) {
		// TODO Auto-generated method stub
		return 0;
	}

	public List<Jik_Comm> getCommnetList(Map<String, Integer> map) {
		// TODO Auto-generated method stub
		return null;
	}

	public int Jik_CommsInsert(Jik_Comm co) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int Jik_CommsDelete(int num) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int Jik_CommsUpdate(Jik_Comm co) {
		// TODO Auto-generated method stub
		return 0;
	}
}
