package com.bit.std.model;

import java.sql.Date;

public class V_stdDto {

	int cno, cdays, sno, gr1, gr2, gr3, cnt, att_total, att_rate, late,leftearly,absent ;
	String ctitle, prof, name, lvl;
	Date cbegin, cend;

	public V_stdDto() {
		// TODO Auto-generated constructor stub
	}

	public V_stdDto(int cno, int cdays, int sno, int gr1, int gr2, int gr3,
			int cnt, int att_total, int att_rate, int late, int leftearly,
			int absent, String ctitle, String prof, String name, String lvl,
			Date cbegin, Date cend) {
		super();
		this.cno = cno;
		this.cdays = cdays;
		this.sno = sno;
		this.gr1 = gr1;
		this.gr2 = gr2;
		this.gr3 = gr3;
		this.cnt = cnt;
		this.att_total = att_total;
		this.att_rate = att_rate;
		this.late = late;
		this.leftearly = leftearly;
		this.absent = absent;
		this.ctitle = ctitle;
		this.prof = prof;
		this.name = name;
		this.lvl = lvl;
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

	public int getSno() {
		return sno;
	}

	public void setSno(int sno) {
		this.sno = sno;
	}

	public int getGr1() {
		return gr1;
	}

	public void setGr1(int gr1) {
		this.gr1 = gr1;
	}

	public int getGr2() {
		return gr2;
	}

	public void setGr2(int gr2) {
		this.gr2 = gr2;
	}

	public int getGr3() {
		return gr3;
	}

	public void setGr3(int gr3) {
		this.gr3 = gr3;
	}

	public String getCtitle() {
		return ctitle;
	}

	public void setCtitle(String ctitle) {
		this.ctitle = ctitle;
	}

	public String getProf() {
		return prof;
	}

	public void setProf(String prof) {
		this.prof = prof;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLvl() {
		return lvl;
	}

	public void setLvl(String lvl) {
		this.lvl = lvl;
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

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public int getAtt_total() {
		return att_total;
	}

	public void setAtt_total(int att_total) {
		this.att_total = att_total;
	}

	public int getAtt_rate() {
		return att_rate;
	}

	public void setAtt_rate(int att_rate) {
		this.att_rate = att_rate;
	}

	public int getLate() {
		return late;
	}

	public void setLate(int late) {
		this.late = late;
	}

	public int getLeftearly() {
		return leftearly;
	}

	public void setLeftearly(int leftearly) {
		this.leftearly = leftearly;
	}

	public int getAbsent() {
		return absent;
	}

	public void setAbsent(int absent) {
		this.absent = absent;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + absent;
		result = prime * result + att_rate;
		result = prime * result + att_total;
		result = prime * result + ((cbegin == null) ? 0 : cbegin.hashCode());
		result = prime * result + cdays;
		result = prime * result + ((cend == null) ? 0 : cend.hashCode());
		result = prime * result + cno;
		result = prime * result + cnt;
		result = prime * result + ((ctitle == null) ? 0 : ctitle.hashCode());
		result = prime * result + gr1;
		result = prime * result + gr2;
		result = prime * result + gr3;
		result = prime * result + late;
		result = prime * result + leftearly;
		result = prime * result + ((lvl == null) ? 0 : lvl.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((prof == null) ? 0 : prof.hashCode());
		result = prime * result + sno;
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
		V_stdDto other = (V_stdDto) obj;
		if (absent != other.absent)
			return false;
		if (att_rate != other.att_rate)
			return false;
		if (att_total != other.att_total)
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
		if (cno != other.cno)
			return false;
		if (cnt != other.cnt)
			return false;
		if (ctitle == null) {
			if (other.ctitle != null)
				return false;
		} else if (!ctitle.equals(other.ctitle))
			return false;
		if (gr1 != other.gr1)
			return false;
		if (gr2 != other.gr2)
			return false;
		if (gr3 != other.gr3)
			return false;
		if (late != other.late)
			return false;
		if (leftearly != other.leftearly)
			return false;
		if (lvl == null) {
			if (other.lvl != null)
				return false;
		} else if (!lvl.equals(other.lvl))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (prof == null) {
			if (other.prof != null)
				return false;
		} else if (!prof.equals(other.prof))
			return false;
		if (sno != other.sno)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "V_stdDto [cno=" + cno + ", cdays=" + cdays + ", sno=" + sno
				+ ", gr1=" + gr1 + ", gr2=" + gr2 + ", gr3=" + gr3 + ", cnt="
				+ cnt + ", att_total=" + att_total + ", att_rate=" + att_rate
				+ ", late=" + late + ", leftearly=" + leftearly + ", absent="
				+ absent + ", ctitle=" + ctitle + ", prof=" + prof + ", name="
				+ name + ", lvl=" + lvl + ", cbegin=" + cbegin + ", cend="
				+ cend + "]";
	}



}