package com.bit.course.model;

import java.sql.Date;

import com.bit.util.DTO;

public class CourseDTO extends DTO{
	
	private int cno;
	private String ctitle;
	private Date cbegin;
	private Date cend;
	private int cdays;
	private int climit;
	private String croom;
	private int profno;
	private String prof;
	private int salesno;
	
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
	public String getCroom() {
		return croom;
	}
	public void setCroom(String croom) {
		this.croom = croom;
	}
	public int getProfno() {
		return profno;
	}
	public void setProfno(int profno) {
		this.profno = profno;
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
	@Override
	public String toString() {
		return "CourseDTO [cno=" + cno + ", ctitle=" + ctitle + ", cbegin="
				+ cbegin + ", cend=" + cend + ", cdays=" + cdays + ", climit="
				+ climit + ", croom=" + croom + ", profno=" + profno
				+ ", salesno=" + salesno + "]";
	}
}
