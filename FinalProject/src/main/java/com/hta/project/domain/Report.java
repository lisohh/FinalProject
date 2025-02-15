package com.hta.project.domain;

import org.springframework.stereotype.Repository;

@Repository
public class Report {
	
	private int report_num;
	private int board_num;
	private String report_content;
	private String board_table;
	private String report_date;
	
	public int getReport_num() {
		return report_num;
	}
	
	public void setReport_num(int report_num) {
		this.report_num = report_num;
	}
	
	public int getBoard_num() {
		return board_num;
	}
	
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}
	
	public String getReport_content() {
		return report_content;
	}
	
	public void setReport_content(String report_content) {
		this.report_content = report_content;
	}
	
	public String getBoard_table() {
		return board_table;
	}
	
	public void setBoard_table(String board_table) {
		this.board_table = board_table;
	}
	
	public String getReport_date() {
		return report_date;
	}
	
	public void setReport_date(String report_date) {
		this.report_date = report_date;
	}
	
	
	
}
