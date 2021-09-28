package com.hta.project.service;

import java.util.List;

import com.hta.project.domain.Category;
import com.hta.project.domain.Member;
import com.hta.project.domain.Notice;
import com.hta.project.domain.Product;

public interface AdminService {

	public void insert(Notice notice);

	public Notice getDetail(int num);
	
	public int setReadCountUpdate(int num);

	public int getListCount();

	public List<Notice> getNoticeList(int page, int limit);

	public int noticeFixUpdate(int num, String fix);
	
	public Notice noticeSelect(int num);

	public int getSearchListCount(String search_word);

	public List<Notice> getSearchNoticeList(int page, int limit, String search_word);

	public int noticeSelectionDel(int[] noticeArr);

	public int noticeDelete(int num);

	public int noticeModify(Notice notice);

	public List<Category> getCategoryList();

	public void productAdd(Product product);

	public int getProductListCount(int index, String search_word);

	public List<Product> getProductList(int index, String search_word, int page, int limit);

	public Product getProductDetail(String code);

	public int productModify(Product product);

	public int insert_deleteFile(String before_file);

	public int productDelete(String code);

	public int productSelectionDel(String[] productArr);

	public int getProductCategoryCount(String category_name);

	public List<Product> getProductCategoryList(int page, int limit, String category_name);
	
}
