package com.hta.project.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hta.project.dao.MemberDAO;
import com.hta.project.domain.Member;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberDAO dao;
	
	@Override
	public Map<String, Object> isIdimsi(String id, String password) { 
		Map<String, Object> member = new HashMap<String, Object>();
		Member rmember = dao.isIdimsi(id);
		int result = -1;
		if(rmember != null) {
			if(rmember.getPass().equals(password)) {
				result = 1;
			}else {
				result = 0;
			}
		}
		
		member.put("result", result);
		member.put("nick", rmember.getNick());
		member.put("id", rmember.getId());
		
		return member;
	} // 우영님이 로그인 다 만들면 삭제

	@Override
	public List<Member> getSearchList(String search_word, int page, int limit) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		int startrow = (page - 1) * limit + 1;
		int endrow = startrow + limit - 1;
		
		map.put("start", startrow);
		map.put("end", endrow);
		map.put("search_word", "%" + search_word + "%");
		
		return dao.getSearchList(map);
	}

	@Override
	public int getSearchListCount(String search_word) {
		String word = "%" + search_word + "%";
		return dao.getSearchListCount(word);
	}

	@Override
	public int getListCount() {
		return dao.getListCount();
	}

	@Override
	public List<Member> getUserList(int page, int limit) {
		List<Member> list = new ArrayList<Member>();
		Map<String, Integer> map = new HashMap<String, Integer>();
		int startrow = (page - 1) * limit + 1;
		int endrow = startrow + limit - 1;
		map.put("start", startrow);
		map.put("end", endrow);
		
		list = dao.getUserList(map);
		
		return list;
	}

	@Override
	public Member member_info(String id) {
		return dao.member_info(id);
	}

	@Override
	public void delete(String id) {
		dao.userDelete(id);
	}
	
}
