package com.farmus.vo;

public class boardVO {
	
	private int b_num;
	private String b_div;
	private String b_title;
	private String b_content;
	private String m_name;
	private String b_date;
	private int m_num;
	private String m_mail;
	
	public boardVO(int b_num, String b_div, String b_title, String b_content, String m_name, String b_date, int m_num,
			String m_mail) {
		super();
		this.b_num = b_num;
		this.b_div = b_div;
		this.b_title = b_title;
		this.b_content = b_content;
		this.m_name = m_name;
		this.b_date = b_date;
		this.m_num = m_num;
		this.m_mail = m_mail;
	}

	
	public int getB_num() {
		return b_num;
	}



	public void setB_num(int b_num) {
		this.b_num = b_num;
	}



	public String getB_div() {
		return b_div;
	}



	public void setB_div(String b_div) {
		this.b_div = b_div;
	}



	public String getB_title() {
		return b_title;
	}



	public void setB_title(String b_title) {
		this.b_title = b_title;
	}



	public String getB_content() {
		return b_content;
	}



	public void setB_content(String b_content) {
		this.b_content = b_content;
	}



	public String getM_name() {
		return m_name;
	}



	public void setM_name(String m_name) {
		this.m_name = m_name;
	}



	public String getB_date() {
		return b_date;
	}



	public void setB_date(String b_date) {
		this.b_date = b_date;
	}



	public int getM_num() {
		return m_num;
	}



	public void setM_num(int m_num) {
		this.m_num = m_num;
	}



	public String getM_mail() {
		return m_mail;
	}



	public void setM_mail(String m_mail) {
		this.m_mail = m_mail;
	}



	@Override
	public String toString() {
		return "boardVO [b_num=" + b_num + ", b_div=" + b_div + ", b_title=" + b_title + ", b_content=" + b_content
				+ ", m_name=" + m_name + ", b_date=" + b_date + ", m_num=" + m_num + ", m_mail=" + m_mail + "]";
	}

}
