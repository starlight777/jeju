package com.bit.course.model;

import java.sql.Date;

public class CoursesDto {
	private int cno;
	private String ctitle;
	private Date cbegin;
	private Date cend;

	public CoursesDto() {
		//µğÆúÆ®
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

	public void setCbegin(Date date) {
		this.cbegin = date;
	}

	public Date getCend() {
		return cend;
	}

	public void setCend(Date cend) {
		this.cend = cend;
	}


}