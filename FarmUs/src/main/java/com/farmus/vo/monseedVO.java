package com.farmus.vo;

public class monseedVO {

	int a_num;    
    String a_temper; 
    String a_hum;     
    String a_co;      
    int a_growth;  
    String a_date;    
    String a_image;   
    String a_media;   
    int m_num;    
    String m_mail;
    
    public monseedVO() {
    	
    }
    
	public monseedVO(int a_num, String a_temper, String a_hum, String a_co, int a_growth, String a_date, String a_image,
			String a_media, int m_num, String m_mail) {
		super();
		this.a_num = a_num;
		this.a_temper = a_temper;
		this.a_hum = a_hum;
		this.a_co = a_co;
		this.a_growth = a_growth;
		this.a_date = a_date;
		this.a_image = a_image;
		this.a_media = a_media;
		this.m_num = m_num;
		this.m_mail = m_mail;
	}

	public int getA_num() {
		return a_num;
	}

	public void setA_num(int a_num) {
		this.a_num = a_num;
	}

	public String getA_temper() {
		return a_temper;
	}

	public void setA_temper(String a_temper) {
		this.a_temper = a_temper;
	}

	public String getA_hum() {
		return a_hum;
	}

	public void setA_hum(String a_hum) {
		this.a_hum = a_hum;
	}

	public String getA_co() {
		return a_co;
	}

	public void setA_co(String a_co) {
		this.a_co = a_co;
	}

	public int getA_growth() {
		return a_growth;
	}

	public void setA_growth(int a_growth) {
		this.a_growth = a_growth;
	}

	public String getA_date() {
		return a_date;
	}

	public void setA_date(String a_date) {
		this.a_date = a_date;
	}

	public String getA_image() {
		return a_image;
	}

	public void setA_image(String a_image) {
		this.a_image = a_image;
	}

	public String getA_media() {
		return a_media;
	}

	public void setA_media(String a_media) {
		this.a_media = a_media;
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
		return "monseedVO [a_num=" + a_num + ", a_temper=" + a_temper + ", a_hum=" + a_hum + ", a_co=" + a_co
				+ ", a_growth=" + a_growth + ", a_date=" + a_date + ", a_image=" + a_image + ", a_media=" + a_media
				+ ", m_num=" + m_num + ", m_mail=" + m_mail + "]";
	} 
   
}
