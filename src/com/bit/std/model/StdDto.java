package com.bit.std.model;
import java.sql.Date;

import com.bit.course.model.CourseDto;

public class StdDto extends MbrDto {
		
	private int sno;
	private int cno;
	private Date date1;
	private int gr1;
	private Date date2;
	private int gr2;
	private Date date3;
	private int gr3;
	private CourseDto crs;
	
	public StdDto() {
		super();
	}
	public CourseDto getCrs() {
		return crs;
	}
	public void setCrs(CourseDto crs) {
		this.crs = crs;
	}
	public int getSno() {
		return sno;
	}
	public void setSno(int sno) {
		this.sno = sno;
	}
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
	}
	public Date getDate1() {
		return date1;
	}
	public void setDate1(Date date1) {
		this.date1 = date1;
	}
	public int getGr1() {
		return gr1;
	}
	public void setGr1(int gr1) {
		this.gr1 = gr1;
	}
	public Date getDate2() {
		return date2;
	}
	public void setDate2(Date date2) {
		this.date2 = date2;
	}
	public int getGr2() {
		return gr2;
	}
	public void setGr2(int gr2) {
		this.gr2 = gr2;
	}
	public Date getDate3() {
		return date3;
	}
	public void setDate3(Date date3) {
		this.date3 = date3;
	}
	public int getGr3() {
		return gr3;
	}
	public void setGr3(int gr3) {
		this.gr3 = gr3;
	}
	@Override
	public String toString() {
		return "StudentDTO [sno=" + sno + ", cno=" + cno
				+ ", date1=" + date1 + ", gr1=" + gr1 + ", date2=" + date2
				+ ", gr2=" + gr2 + ", date3=" + date3 + ", gr3=" + gr3 + "]";
	}
	
}
