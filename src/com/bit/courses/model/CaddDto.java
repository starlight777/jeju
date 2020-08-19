package com.bit.courses.model;

import java.sql.Date;

public class CaddDto {
	private int cno;
	private String ctitle;
	private Date cbegin;
	private Date cend;
	private int cdays;
	private int climit;
	private int croom;
	private int profno;
	private int salesno;
	
	public CaddDto() {}

	public int getCno() {
		return cno;
	}

	public void setCno(int cno) {
		this.cno = cno;
	}

	public String getCtitle() {
		return ctitle;
	}

	public void setCtitle(String ctitle) {
		this.ctitle = ctitle;
	}

	public Date getCbegin() {
		return cbegin;
	}

	public void setCbegin(Date cbegin) {
		this.cbegin = cbegin;
	}

	public Date getCend() {
		return cend;
	}

	public void setCend(Date cend) {
		this.cend = cend;
	}

	public int getCdays() {
		return cdays;
	}

	public void setCdays(int cdays) {
		this.cdays = cdays;
	}

	public int getClimit() {
		return climit;
	}

	public void setClimit(int climit) {
		this.climit = climit;
	}

	public int getCroom() {
		return croom;
	}

	public void setCroom(int croom) {
		this.croom = croom;
	}

	public int getProfno() {
		return profno;
	}

	public void setProfno(int profno) {
		this.profno = profno;
	}

	public int getSalesno() {
		return salesno;
	}

	public void setSalesno(int salesno) {
		this.salesno = salesno;
	}
	
	
}
