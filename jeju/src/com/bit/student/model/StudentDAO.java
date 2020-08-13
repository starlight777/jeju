package com.bit.student.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.bit.account.model.MemberDTO;
import com.bit.util.OracleJeju;

public class StudentDAO {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	StudentDTO dto = null;
	
	public StudentDAO() {
		conn = new OracleJeju().getConnection();
	}

	public StudentDTO selectStudent(String id) {
		String sql = "SELECT * FROM std WHERE id = ?";
		System.out.println("selectMemeber() : " + sql);
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if(rs.next()) {
				dto = new StudentDTO();
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setTel(rs.getString("tel"));
				dto.setEmail(rs.getString("email"));
				dto.setLvl(rs.getString("lvl"));
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
		System.out.println("selectMemeber() : " + dto);
		return dto;
	}
}
