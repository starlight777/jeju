package com.bit.course.model;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CoursesDao {
	String driver = "oracle.jdbc.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "scott";
	String password = "tiger";
	Connection conn;
	Statement stmt;
	PreparedStatement pstmt;
	ResultSet rs;
<<<<<<< HEAD

=======
	
>>>>>>> 04a9fdeffd7e77a4c760cb103d491f8148ccdfd3
	public int getAllCount() {
		String sql = "select count(*) as count from crs";
		int count = 0;
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				count = rs.getInt("count");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (conn != null)conn.close();
				if (stmt != null)stmt.close();
				if (rs != null)rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return count;
<<<<<<< HEAD
	}

=======
	}	
	
>>>>>>> 04a9fdeffd7e77a4c760cb103d491f8148ccdfd3
	public List<CoursesDto> getList(int page) {
		int startNum = (page-1)*10+1;
		int endNum = page*10;
		String sql = "select * from "
				+ "( select * from "
				+ "( select rownum row_num, crs.* from crs order by row_num desc) where row_num > = ?"
				+ ")where row_num <= ?";
		List<CoursesDto> list = new ArrayList<CoursesDto>();
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startNum);
			pstmt.setInt(2, endNum);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				CoursesDto bean = new CoursesDto();
				bean.setCno(rs.getInt("cno"));
				bean.setCtitle(rs.getString("ctitle"));
				bean.setCbegin(rs.getDate("cbegin"));
				bean.setCend(rs.getDate("cend"));
				list.add(bean);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (conn != null)conn.close();
				if (pstmt != null)pstmt.close();
				if (rs != null)rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
<<<<<<< HEAD
	} 
=======
	}
>>>>>>> 04a9fdeffd7e77a4c760cb103d491f8148ccdfd3
}
