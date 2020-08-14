package com.bit.student.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;

import com.bit.account.model.MemberDTO;
import com.bit.course.model.CourseDTO;
import com.bit.util.DTO;
import com.bit.util.OracleJeju;

public class StudentDAO {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	StudentDTO studentDTO = null;
	CourseDTO courseDTO = null;
	AttendanceDTO attendanceDTO = null;
	
	public StudentDAO() {
		conn = new OracleJeju().getConnection();
	}
	
	public StudentDTO selectStudent(String id) {
		String sql = "SELECT * FROM std WHERE id = ?";
		System.out.println("selectStudent() : " + id);
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if(rs.next()) {
				studentDTO = new StudentDTO();
				studentDTO.setSno(rs.getInt("sno"));
				studentDTO.setGr1(rs.getInt("gr1"));
				studentDTO.setGr2(rs.getInt("gr2"));
				studentDTO.setGr3(rs.getInt("gr3"));
			}
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				ps.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		System.out.println("selectStudent() : " + studentDTO);
		return studentDTO;
	}

	public HashMap<String, DTO> studentInfo(int sno) {
		String sql = "SELECT * FROM v_std WHERE sno = ?";
		System.out.println("studentInfo() : " + sql + sno);
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, sno);
			rs = ps.executeQuery();
			if(rs.next()) {
				courseDTO = new CourseDTO();
				courseDTO.setCno(rs.getInt("cno"));
				courseDTO.setCtitle(rs.getString("ctitle"));
				courseDTO.setProf(rs.getString("prof"));
				courseDTO.setCbegin(rs.getDate("cbegin"));
				courseDTO.setCend(rs.getDate("cend"));
				courseDTO.setCdays(rs.getInt("cdays"));
				
				attendanceDTO = new AttendanceDTO();
				attendanceDTO.setCnt(rs.getInt("cnt"));
				attendanceDTO.setAtt_total(rs.getInt("att_total"));
				attendanceDTO.setAtt_rate(rs.getInt("att_rate"));
				attendanceDTO.setLate(rs.getInt("late"));
				attendanceDTO.setLeftearly(rs.getInt("leftearly"));
				attendanceDTO.setAbsent(rs.getInt("absent"));
			}
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				ps.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		System.out.println("studentInfo() : \n" + courseDTO + "\n" + attendanceDTO);
		HashMap<String, DTO> dtoMap = new HashMap<String, DTO>();
		dtoMap.put("course", courseDTO);
		dtoMap.put("attendance", attendanceDTO);
		return dtoMap;
	}
}
