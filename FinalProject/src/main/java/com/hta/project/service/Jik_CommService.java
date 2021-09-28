package com.hta.project.service;

import java.util.List;

import com.hta.project.domain.Jik_Comm;

public interface Jik_CommService {

	// 글의 갯수 구하기
	public int getListCount(int board_num);
	
	// 댓글 목록 가져오기
	public List<Jik_Comm> getJik_CommList(int board_num, int page);
	
	// 댓글 추가하기
	public int Jik_CommsInsert(Jik_Comm co);

	public int Jik_CommsDelete(int num);

	public int Jik_CommsUpdate(Jik_Comm co);
	
	
}
