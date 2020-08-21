package com.bit.crs.model;

import java.sql.Date;

public class V_crsDto {

	private int cno,cdays,dcnt,climit,profno,salesno,stdcnt,avg_gr1,avg_gr2,avg_gr3,avg_att;
	private String ctitle,croom,prof;
	private Date cbegin,cend;
	
	public V_crsDto() {
	}

	public V_crsDto(int cno, int cdays, int dcnt, int climit, int profno, int salesno,
			int stdcnt, int avg_gr1, int avg_gr2, int avg_gr3, int avg_att,
			String ctitle, String croom, String prof, Date cbegin, Date cend) {
		super();
		this.cno = cno;
		this.cdays = cdays;
		this.dcnt = dcnt;
		this.climit = climit;
		this.profno = profno;
		this.salesno = salesno;
		this.stdcnt = stdcnt;
		this.avg_gr1 = avg_gr1;
		this.avg_gr2 = avg_gr2;
		this.avg_gr3 = avg_gr3;
		this.avg_att = avg_att;
		this.ctitle = ctitle;
		this.croom = croom;
		this.prof = prof;
		this.cbegin = cbegin;
		this.cend = cend;
	}

	public int getCno() {
		return cno;
	}

	public void setCno(int cno) {
		this.cno = cno;
	}

	public int getCdays() {
		return cdays;
	}

	public void setCdays(int cdays) {
		this.cdays = cdays;
	}

	public int getDcnt() {
		return dcnt;
	}

	public void setDcnt(int dcnt) {
		this.dcnt = dcnt;
	}

	public int getClimit() {
		return climit;
	}

	public void setClimit(int climit) {
		this.climit = climit;
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

	public int getStdcnt() {
		return stdcnt;
	}

	public void setStdcnt(int stdcnt) {
		this.stdcnt = stdcnt;
	}

	public int getAvg_gr1() {
		return avg_gr1;
	}

	public void setAvg_gr1(int avg_gr1) {
		this.avg_gr1 = avg_gr1;
	}

	public int getAvg_gr2() {
		return avg_gr2;
	}

	public void setAvg_gr2(int avg_gr2) {
		this.avg_gr2 = avg_gr2;
	}

	public int getAvg_gr3() {
		return avg_gr3;
	}

	public void setAvg_gr3(int avg_gr3) {
		this.avg_gr3 = avg_gr3;
	}

	public int getAvg_att() {
		return avg_att;
	}

	public void setAvg_att(int avg_att) {
		this.avg_att = avg_att;
	}

	public String getCtitle() {
		return ctitle;
	}

	public void setCtitle(String ctitle) {
		this.ctitle = ctitle;
	}

	public String getCroom() {
		return croom;
	}

	public void setCroom(String croom) {
		this.croom = croom;
	}

	public String getProf() {
		return prof;
	}

	public void setProf(String prof) {
		this.prof = prof;
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

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + avg_att;
		result = prime * result + avg_gr1;
		result = prime * result + avg_gr2;
		result = prime * result + avg_gr3;
		result = prime * result + ((cbegin == null) ? 0 : cbegin.hashCode());
		result = prime * result + cdays;
		result = prime * result + ((cend == null) ? 0 : cend.hashCode());
		result = prime * result + climit;
		result = prime * result + cno;
		result = prime * result + ((croom == null) ? 0 : croom.hashCode());
		result = prime * result + ((ctitle == null) ? 0 : ctitle.hashCode());
		result = prime * result + dcnt;
		result = prime * result + ((prof == null) ? 0 : prof.hashCode());
		result = prime * result + profno;
		result = prime * result + salesno;
		result = prime * result + stdcnt;
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
		V_crsDto other = (V_crsDto) obj;
		if (avg_att != other.avg_att)
			return false;
		if (avg_gr1 != other.avg_gr1)
			return false;
		if (avg_gr2 != other.avg_gr2)
			return false;
		if (avg_gr3 != other.avg_gr3)
			return false;
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
		if (dcnt != other.dcnt)
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
		if (stdcnt != other.stdcnt)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "V_crsDto [cno=" + cno + ", cdays=" + cdays + ", dcnt=" + dcnt
				+ ", climit=" + climit + ", profno=" + profno + ", salesno="
				+ salesno + ", stdcnt=" + stdcnt + ", avg_gr1=" + avg_gr1
				+ ", avg_gr2=" + avg_gr2 + ", avg_gr3=" + avg_gr3
				+ ", avg_att=" + avg_att + ", ctitle=" + ctitle + ", croom="
				+ croom + ", prof=" + prof + ", cbegin=" + cbegin + ", cend="
				+ cend + "]";
	}

	
}
