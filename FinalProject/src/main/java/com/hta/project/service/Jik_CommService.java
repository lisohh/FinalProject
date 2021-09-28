package com.hta.project.service;

import java.util.List;

import com.hta.project.domain.Jik_Comm;

public interface Jik_CommService {

	// ���� ���� ���ϱ�
	public int getListCount(int board_num);
	
	// ��� ��� ��������
	public List<Jik_Comm> getJik_CommList(int board_num, int page);
	
	// ��� �߰��ϱ�
	public int Jik_CommsInsert(Jik_Comm co);

	public int Jik_CommsDelete(int num);

	public int Jik_CommsUpdate(Jik_Comm co);
	
	
}
