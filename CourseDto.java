package com.bit.course.model;

import java.sql.Date;

import com.bit.util.Dto;

public class CourseDto extends Dto{
	
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
	
	public CourseDto() {
		
	}

	public CourseDto(int cno, String ctitle, Date cbegin, Date cend) {
		super();
		this.cno = cno;
		this.ctitle = ctitle;
		this.cbegin = cbegin;
		this.cend = cend;
	}
	
	public CourseDto(int cno, String ctitle, Date cbegin, Date cend, int cdays,
			int climit, String croom, int profno, String prof, int salesno) {
		super();
		this.cno = cno;
		this.ctitle = ctitle;
		this.cbegin = cbegin;
		this.cend = cend;
		this.cdays = cdays;
		this.climit = climit;
		this.croom = croom;
		this.profno = profno;
		this.prof = prof;
		this.salesno = salesno;
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
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cbegin == null) ? 0 : cbegin.hashCode());
		result = prime * result + cdays;
		result = prime * result + ((cend == null) ? 0 : cend.hashCode());
		result = prime * result + climit;
		result = prime * result + cno;
		result = prime * result + ((croom == null) ? 0 : croom.hashCode());
		result = prime * result + ((ctitle == null) ? 0 : ctitle.hashCode());
		result = prime * result + ((prof == null) ? 0 : prof.hashCode());
		result = prime * result + profno;
		result = prime * result + salesno;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CourseDto other = (CourseDto) obj;
		if (cbegin == null) {
			if (other.cbegin != null)
				return false;
		} else if (!cbegin.equals(other.cbegin))
			return false;
		if (cdays != other.cdays)
			return false;
		if (cend == null) {
			if (other.cend != null)
				return false;
		} else if (!cend.equals(other.cend))
			return false;
		if (climit != other.climit)
			return false;
		if (cno != other.cno)
			return false;
		if (croom == null) {
			if (other.croom != null)
				return false;
		} else if (!croom.equals(other.croom))
			return false;
		if (ctitle == null) {
			if (other.ctitle != null)
				return false;
		} else if (!ctitle.equals(other.ctitle))
			return false;
		if (prof == null) {
			if (other.prof != null)
				return false;
		} else if (!prof.equals(other.prof))
			return false;
		if (profno != other.profno)
			return false;
		if (salesno != other.salesno)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "CourseDTO [cno=" + cno + ", ctitle=" + ctitle + ", cbegin="
				+ cbegin + ", cend=" + cend + ", cdays=" + cdays + ", climit="
				+ climit + ", croom=" + croom + ", profno=" + profno
				+ ", salesno=" + salesno + "]";
	}
}
