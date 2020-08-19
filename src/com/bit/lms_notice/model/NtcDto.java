package com.bit.lms_notice.model;

import java.sql.Date;

public class NtcDto {
	private int nno;
	private String ntitle, ntype, nbody;
	private Date ndate, ndateby;
	private int cno, eno;
	private String nurl;
	
	public NtcDto() {
	}

	public NtcDto(int nno, String ntitle, String ntype, String nbody,
			Date ndate, Date ndateby, int cno, int eno, String nurl) {
		super();
		this.nno = nno;
		this.ntitle = ntitle;
		this.ntype = ntype;
		this.nbody = nbody;
		this.ndate = ndate;
		this.ndateby = ndateby;
		this.cno = cno;
		this.eno = eno;
		this.nurl = nurl;
	}

	public int getNno() {
		return nno;
	}

	public void setNno(int nno) {
		this.nno = nno;
	}

	public String getNtitle() {
		return ntitle;
	}

	public void setNtitle(String ntitle) {
		this.ntitle = ntitle;
	}

	public String getNtype() {
		return ntype;
	}

	public void setNtype(String ntype) {
		this.ntype = ntype;
	}

	public String getNbody() {
		return nbody;
	}

	public void setNbody(String nbody) {
		this.nbody = nbody;
	}

	public Date getNdate() {
		return ndate;
	}

	public void setNdate(Date ndate) {
		this.ndate = ndate;
	}

	public Date getNdateby() {
		return ndateby;
	}

	public void setNdateby(Date ndateby) {
		this.ndateby = ndateby;
	}

	public int getCno() {
		return cno;
	}

	public void setCno(int cno) {
		this.cno = cno;
	}

	public int getEno() {
		return eno;
	}

	public void setEno(int eno) {
		this.eno = eno;
	}

	public String getNurl() {
		return nurl;
	}

	public void setNurl(String nurl) {
		this.nurl = nurl;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + cno;
		result = prime * result + eno;
		result = prime * result + ((nbody == null) ? 0 : nbody.hashCode());
		result = prime * result + ((ndate == null) ? 0 : ndate.hashCode());
		result = prime * result + ((ndateby == null) ? 0 : ndateby.hashCode());
		result = prime * result + nno;
		result = prime * result + ((ntitle == null) ? 0 : ntitle.hashCode());
		result = prime * result + ((ntype == null) ? 0 : ntype.hashCode());
		result = prime * result + ((nurl == null) ? 0 : nurl.hashCode());
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
		NtcDto other = (NtcDto) obj;
		if (cno != other.cno)
			return false;
		if (eno != other.eno)
			return false;
		if (nbody == null) {
			if (other.nbody != null)
				return false;
		} else if (!nbody.equals(other.nbody))
			return false;
		if (ndate == null) {
			if (other.ndate != null)
				return false;
		} else if (!ndate.equals(other.ndate))
			return false;
		if (ndateby == null) {
			if (other.ndateby != null)
				return false;
		} else if (!ndateby.equals(other.ndateby))
			return false;
		if (nno != other.nno)
			return false;
		if (ntitle == null) {
			if (other.ntitle != null)
				return false;
		} else if (!ntitle.equals(other.ntitle))
			return false;
		if (ntype == null) {
			if (other.ntype != null)
				return false;
		} else if (!ntype.equals(other.ntype))
			return false;
		if (nurl == null) {
			if (other.nurl != null)
				return false;
		} else if (!nurl.equals(other.nurl))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "NtcDto [nno=" + nno + ", ntitle=" + ntitle + ", ntype=" + ntype
				+ ", nbody=" + nbody + ", ndate=" + ndate + ", ndateby="
				+ ndateby + ", cno=" + cno + ", eno=" + eno + ", nurl=" + nurl
				+ "]";
	}

		
}