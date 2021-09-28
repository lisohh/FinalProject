
package com.hta.project.domain;

import org.springframework.web.multipart.MultipartFile;

public class Jik {
	private int jik_num;
	private String jik_id;    
	private String nick;    
	private String jik_subject;  
	private String jik_content; 
	private int jik_readcount;
	private int jik_like;
	private String jik_date;	
	private String jik_file;  
	private String jik_original;
	private MultipartFile uploadfile;
	
	public int getJik_num() {
		return jik_num;
	}
	public void setJik_num(int jik_num) {
		this.jik_num = jik_num;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getJik_subject() {
		return jik_subject;
	}
	public void setJik_subject(String jik_subject) {
		this.jik_subject = jik_subject;
	}
	public String getJik_content() {
		return jik_content;
	}
	public void setJik_content(String jik_content) {
		this.jik_content = jik_content;
	}
	public int getJik_readcount() {
		return jik_readcount;
	}
	public void setJik_readcount(int jik_readcount) {
		this.jik_readcount = jik_readcount;
	}
	public int getJik_like() {
		return jik_like;
	}
	public void setJik_like(int jik_like) {
		this.jik_like = jik_like;
	}
	public String getJik_date() {
		return jik_date;
	}
	public void setJik_date(String jik_date) {
		this.jik_date = jik_date.substring(0,10);
	}
	public String getJik_file() {
		return jik_file;
	}
	public void setJik_file(String jik_file) {
		this.jik_file = jik_file;
	}
	public String getJik_original() {
		return jik_original;
	}
	public void setJik_original(String jik_original) {
		this.jik_original = jik_original;
	}
	public MultipartFile getUploadfile() {
		return uploadfile;
	}
	public void setUploadfile(MultipartFile uploadfile) {
		this.uploadfile = uploadfile;
	}
	public String getJik_id() {
		return jik_id;
	}
	public void setJik_id(String jik_id) {
		this.jik_id = jik_id;
	}


	
	
}
