package com.farmus.vo;

public class memberVO {

	private int m_num;
	private String m_div;
	private String m_mail;
	private String m_pass;
	private String m_name;
	private int m_age;
	private String m_sex;
	private String m_address;
	private int m_point;
	private int a_num;
	

	public memberVO() {
		
	}


	public memberVO(int m_num, String m_div, String m_mail,String m_pass, String m_name, int m_age, String m_sex, String m_address,
			 int m_point, int a_num) {
		super();
		this.m_num = m_num;
		this.m_div = m_div;
		this.m_mail = m_mail;
		this.m_pass = m_pass;
		this.m_name = m_name;
		this.m_age = m_age;
		this.m_sex = m_sex;
		this.m_address = m_address;
		this.m_point = m_point;
		this.a_num = a_num;
	}

	public String getM_pass() {
		return m_pass;
	}


	public void setM_pass(String m_pass) {
		this.m_pass = m_pass;
	}
	

	public int getM_num() {
		return m_num;
	}


	public void setM_num(int m_num) {
		this.m_num = m_num;
	}


	public String getM_div() {
		return m_div;
	}


	public void setM_div(String m_div) {
		this.m_div = m_div;
	}


	public String getM_mail() {
		return m_mail;
	}


	public void setM_mail(String m_mail) {
		this.m_mail = m_mail;
	}


	public String getM_name() {
		return m_name;
	}


	public void setM_name(String m_name) {
		this.m_name = m_name;
	}


	public int getM_age() {
		return m_age;
	}


	public void setM_age(int m_age) {
		this.m_age = m_age;
	}


	public String getM_sex() {
		return m_sex;
	}


	public void setM_sex(String m_sex) {
		this.m_sex = m_sex;
	}


	public String getM_address() {
		return m_address;
	}


	public void setM_address(String m_address) {
		this.m_address = m_address;
	}

	public int getM_point() {
		return m_point;
	}


	public void setM_point(int m_point) {
		this.m_point = m_point;
	}


	public int getA_num() {
		return a_num;
	}


	public void setA_num(int a_num) {
		this.a_num = a_num;
	}


	@Override
	public String toString() {
		return "memberVO [m_num=" + m_num + ", m_div=" + m_div + ", m_mail=" + m_mail + ", m_name=" + m_name
				+ ", m_age=" + m_age + ", m_sex=" + m_sex + ", m_address=" + m_address + ", m_point=" + m_point + ", a_num=" + a_num + "]";
	}
	
	
}
