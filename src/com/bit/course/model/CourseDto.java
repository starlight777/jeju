package com.bit.course.model;

import java.sql.Date;



public class CourseDto {
	private int cno;
	private String ctitle;
	private Date cbegin;
	private Date cend;
	private int cdays;
	private int climit;
	private int croom;
	private String prof;
	private int salesno;
	
	public CourseDto() {}
	

	public int getClimit() {
		return climit;
	}


	public void setClimit(int climit) {
		this.climit = climit;
	}


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

	public int getCroom() {
		return croom;
	}

	public void setCroom(int croom) {
		this.croom = croom;
	}

	public String getProf() {
		return prof;
	}

	public void setProf(String prof) {
		this.prof = prof;
	}

	public int getSalesno() {
		return salesno;
	}

	public void setSalesno(int salesno) {
		this.salesno = salesno;
	}

}
