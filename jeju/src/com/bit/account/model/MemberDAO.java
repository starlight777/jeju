package com.bit.account.model;

import com.bit.util.OracleJeju;

import java.sql.*;

public class MemberDAO {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	MemberDTO dto = null;
	
	public MemberDAO() {
		conn = new OracleJeju().getConnection();
	}

	public int lookupId(String id) throws SQLException {
		String sql = "SELECT * FROM mbr WHERE id = ?";
		ps = conn.prepareStatement(sql);
		ps.setString(1, id);
		rs = ps.executeQuery();
		if(rs.next()) return 1;
		return 0;
	}
	
	public MemberDTO selectMemeber(String id) {
		String sql = "SELECT * FROM mbr WHERE id = ?";
		System.out.println("selectMemeber() : " + sql);
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if(rs.next()) {
				dto = new MemberDTO();
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
	// 로그인 시 멤버 정보 세션 전달용
	public MemberDTO login(String id, String pw) {
		String sql = "SELECT * FROM mbr WHERE id = ? AND pw = ?";
		System.out.println("login() : " + id + pw);
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, pw);
			rs = ps.executeQuery();
			if(rs.next()) {
				dto = new MemberDTO();
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
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
		System.out.println("login() : " + dto);
		return dto;
	}
	
//	public static void main(String[] args) {
//		
//		MemberDTO dto = null;
//				dto = new MemberDAO().login("user81", "test!1111");
//				System.out.println(dto);
//		System.out.println(dto == null);
//		System.out.println(dto.hashCode());
//	}
}
