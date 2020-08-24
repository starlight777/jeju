package com.bit.emp.model;

import java.sql.Date;

public class EmpDto {
	
	private int eno;
	private String name,pw,tel,email,answer,dno,dname;
	private Date hdate;
	
	public EmpDto(){};

	public EmpDto(int eno, String name, String pw, String tel, String email, String answer, String dno, String dname,
			Date hdate) {
		super();
		this.eno = eno;
		this.name = name;
		this.pw = pw;
		this.tel = tel;
		this.email = email;
		this.answer = answer;
		this.dno = dno;
		this.dname = dname;
		this.hdate = hdate;
	}

	public int getEno() {
		return eno;
	}

	public void setEno(int eno) {
		this.eno = eno;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getDno() {
		return dno;
	}

	public void setDno(String dno) {
		this.dno = dno;
	}

	public String getDname() {
		return dname;
	}

	public void setDname(String dname) {
		this.dname = dname;
	}

	public Date getHdate() {
		return hdate;
	}

	public void setHdate(Date hdate) {
		this.hdate = hdate;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((answer == null) ? 0 : answer.hashCode());
		result = prime * result + ((dname == null) ? 0 : dname.hashCode());
		result = prime * result + ((dno == null) ? 0 : dno.hashCode());
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result + eno;
		result = prime * result + ((hdate == null) ? 0 : hdate.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((pw == null) ? 0 : pw.hashCode());
		result = prime * result + ((tel == null) ? 0 : tel.hashCode());
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
		EmpDto other = (EmpDto) obj;
		if (answer == null) {
			if (other.answer != null)
				return false;
		} else if (!answer.equals(other.answer))
			return false;
		if (dname == null) {
			if (other.dname != null)
				return false;
		} else if (!dname.equals(other.dname))
			return false;
		if (dno == null) {
			if (other.dno != null)
				return false;
		} else if (!dno.equals(other.dno))
			return false;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		if (eno != other.eno)
			return false;
		if (hdate == null) {
			if (other.hdate != null)
				return false;
		} else if (!hdate.equals(other.hdate))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (pw == null) {
			if (other.pw != null)
				return false;
		} else if (!pw.equals(other.pw))
			return false;
		if (tel == null) {
			if (other.tel != null)
				return false;
		} else if (!tel.equals(other.tel))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "EmpDto [eno=" + eno + ", name=" + name + ", pw=" + pw + ", tel=" + tel + ", email=" + email
				+ ", answer=" + answer + ", dno=" + dno + ", dname=" + dname + ", hdate=" + hdate + "]";
	}
}