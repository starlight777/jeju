package com.bit.course.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class CourseDao {
	Connection conn;
	
	public CourseDao() throws SQLException {
		String driver = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "scott";
		String password = "tiger";
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public CourseDto selectOne(int cno) throws SQLException {
		String sql = "select cno, ctitle, cbegin, cend, cdays, climit, croom, prof, salesno from v_crs where cno=?";
		CourseDto bean = new CourseDto();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cno);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				bean.setCno(rs.getInt("cno"));
				bean.setCtitle(rs.getString("ctitle"));
				bean.setCbegin(rs.getDate("cbegin"));
				bean.setCend(rs.getDate("cend"));
				bean.setCdays(rs.getInt("cdays"));
				bean.setClimit(rs.getInt("climit"));
				bean.setCroom(rs.getInt("croom"));
				bean.setProf(rs.getString("prof"));
				bean.setSalesno(rs.getInt("salesno"));
			}
		} finally {
			if (rs != null)rs.close();
			if (pstmt != null)pstmt.close();
			if (conn != null)conn.close();
		}
		return bean;
	}
}
