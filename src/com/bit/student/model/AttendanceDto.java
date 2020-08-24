package com.bit.student.model;

import com.bit.util.Dto;

public class AttendanceDto extends Dto{
	
	private int cnt;
	private int att_total;
	private int att_rate;
	private int late;
	private int leftearly;
	private int absent;
	
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
	
	
}
