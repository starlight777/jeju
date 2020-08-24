package com.bit.std.model;

import java.sql.Date;

public class AttDto {
	int ano,sno,ckin,ckout;
	Date adate;
	String name;
	
	public AttDto() {
	}

	public AttDto(int sno, int ckin, int ckout) {
		this.sno = sno;
		this.ckin = ckin;
		this.ckout = ckout;
	}
	
	public AttDto(int ano, int sno, int ckin, int ckout, Date adate, String name) {
		super();
		this.ano = ano;
		this.sno = sno;
		this.ckin = ckin;
		this.ckout = ckout;
		this.adate = adate;
		this.name = name;
	}

	public int getAno() {
		return ano;
	}

	public void setAno(int ano) {
		this.ano = ano;
	}

	public int getSno() {
		return sno;
	}

	public void setSno(int sno) {
		this.sno = sno;
	}

	public int getCkin() {
		return ckin;
	}

	public void setCkin(int ckin) {
		this.ckin = ckin;
	}

	public int getCkout() {
		return ckout;
	}

	public void setCkout(int ckout) {
		this.ckout = ckout;
	}

	public Date getAdate() {
		return adate;
	}

	public void setAdate(Date adate) {
		this.adate = adate;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((adate == null) ? 0 : adate.hashCode());
		result = prime * result + ano;
		result = prime * result + ckin;
		result = prime * result + ckout;
		result = prime * result + ((name == null) ? 0 : name.hashCode());
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
		AttDto other = (AttDto) obj;
		if (adate == null) {
			if (other.adate != null)
				return false;
		} else if (!adate.equals(other.adate))
			return false;
		if (ano != other.ano)
			return false;
		if (ckin != other.ckin)
			return false;
		if (ckout != other.ckout)
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (sno != other.sno)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "AttDto [ano=" + ano + ", sno=" + sno + ", ckin=" + ckin
				+ ", ckout=" + ckout + ", adate=" + adate + ", name=" + name
				+ "]";
	}
}