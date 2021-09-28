package com.hta.project.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hta.project.dao.AdminDAO;
import com.hta.project.domain.Category;
import com.hta.project.domain.Member;
import com.hta.project.domain.Notice;
import com.hta.project.domain.Product;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminDAO dao = new AdminDAO();
	
	@Override
	public void insert(Notice notice) {
		dao.insert(notice);
	}

	@Override
	public int setReadCountUpdate(int num) {
		return dao.setReadCountUpdate(num);
	}

	@Override
	public Notice getDetail(int num) {
		if(setReadCountUpdate(num) != 1) {
			return null;
		}
		
		return dao.getDetail(num);
	}

	@Override
	public int getListCount() {
		return dao.getListCount();
	}

	@Override
	public List<Notice> getNoticeList(int page, int limit) {
		List<Notice> list = new ArrayList<Notice>();
		Map<String, Integer> map = new HashMap<String, Integer>();
		int startrow = (page - 1) * limit + 1;
		int endrow = startrow + limit - 1;
		map.put("start", startrow);
		map.put("end", endrow);
		
		list = dao.getNoticeList(map);
		
		return list;
	}

	@Override
	public int noticeFixUpdate(int num, String fix) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("num", num);
		map.put("fix", fix);
		return dao.noticeFixUpdate(map);
	}

	@Override
	public Notice noticeSelect(int num) {
		return dao.noticeSelect(num);
	}

	@Override
	public int getSearchListCount(String search_word) {
		String word = "%" + search_word + "%";
		return dao.getSearchListCount(word);
	}

	@Override
	public List<Notice> getSearchNoticeList(int page, int limit, String search_word) {
		List<Notice> list = new ArrayList<Notice>();
		Map<String, Object> map = new HashMap<String, Object>();
		int startrow = (page - 1) * limit + 1;
		int endrow = startrow + limit - 1;
		String word = "%" + search_word + "%";
		map.put("start", startrow);
		map.put("end", endrow);
		map.put("word", word);
		
		list = dao.getSearchNoticeList(map);
		
		return list;
	}

	@Override
	public int noticeSelectionDel(int[] noticeArr) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("arr", noticeArr);
		return dao.noticeSelectionDel(map);
	}

	@Override
	public int noticeDelete(int num) {
		return dao.noticeDelete(num);
	}

	@Override
	public int noticeModify(Notice notice) {
		return dao.noticeModify(notice);
	}

	@Override
	public List<Category> getCategoryList() {
		return dao.getCategoryList();
	}

	@Override
	public void productAdd(Product product) {
		dao.productAdd(product);
	}

	@Override
	public int getProductListCount(int index, String search_word) {
		Map<String, String> map = new HashMap<String, String>();
		if(index != -1) {
			String[] search_field = new String[] {"product_name", "product_code", "category_name"};
			map.put("search_field", search_field[index]);
			map.put("search_word", "%" + search_word + "%");
		}
		return dao.getProductListCount(map);
	}

	@Override
	public List<Product> getProductList(int index, String search_word, int page, int limit) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		if(index != -1) {
			String[] search_field = new String[] {"product_name", "product_code", "category_name"};
			map.put("search_field", search_field[index]);
			map.put("search_word", "%" + search_word + "%");
		}
		int startrow = (page - 1) * limit + 1;
		int endrow = startrow + limit - 1;
		map.put("start", startrow);
		map.put("end", endrow);
		return dao.getProductList(map);
	}

	@Override
	public Product getProductDetail(String code) {
		return dao.getProductDetail(code);
	}

	@Override
	public int productModify(Product product) {
		return dao.productModify(product);
	}
	
	@Override
	public int insert_deleteFile(String before_file) {
		return dao.insert_deleteFile(before_file);
	}

	@Override
	public int productDelete(String code) {
		return dao.productDelete(code);
	}

	@Override
	public int productSelectionDel(String[] productArr) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("arr", productArr);
		return dao.productSelectionDel(map);
	}

	@Override
	public int getProductCategoryCount(String category_name) {
		String word = "%" + category_name + "%";
		return dao.getProductCategoryCount(word);
	}

	@Override
	public List<Product> getProductCategoryList(int page, int limit, String category_name) {
		List<Product> list = new ArrayList<Product>();
		Map<String, Object> map = new HashMap<String, Object>();
		int startrow = (page - 1) * limit + 1;
		int endrow = startrow + limit - 1;
		String word = "%" + category_name + "%";
		map.put("start", startrow);
		map.put("end", endrow);
		map.put("word", word);
		
		list = dao.getProductCategoryList(map);
		
		return list;
	}

}
