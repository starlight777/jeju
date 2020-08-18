package com.bit.course.model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CourseDao {
	Connection conn;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public CourseDao() throws SQLException {
		String driver = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "scott";
		String password = "tiger";
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
			
			System.out.println("db connection complete");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public CourseDto selectOne(int cno) throws SQLException {
		String sql = "select cno, ctitle, cbegin, cend, cdays, climit, croom, prof, salesno from v_crs where cno=?";
		CourseDto bean = new CourseDto();
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
		
	public int deleteOne(int cno) throws SQLException {
		String sql = "delete from crs where cno=?";
		int result = 0;
		PreparedStatement pstmt = null;
		try{
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, cno);
			result = pstmt.executeUpdate();			
		}finally{
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		return result;
	}
	
	public List<CourseDto> getSalesList(int eno) {
		String sql = "SELECT * FROM v_crs WHERE salesno = ? ORDER BY cno DESC";
		List<CourseDto> list = new ArrayList<CourseDto>();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, eno);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				SalesCourseDto bean = new SalesCourseDto();
				bean.setCno(rs.getInt("cno")); 
				bean.setCtitle(rs.getString("ctitle"));
				bean.setCbegin(rs.getDate("cbegin"));
				bean.setClimit(rs.getInt("climit"));
				bean.setSalesno(rs.getInt("salesno"));
				bean.setStdcnt(rs.getInt("stdcnt"));
				list.add(bean);				
			}			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(conn!=null)conn.close();
				if(pstmt!=null)pstmt.close();
				if(rs!=null)rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	
//	public getAssignList(int cno) {
	//	String sql = "select std.sno, mbr.name, mbr.tel, crs.cno, crs.ctitle, crs.cbegin from std "
	//			+ "left join mbr on std.id = mbr.id "
	//			+ "left join crs on std.cno = crs.cno where cno = 1";
//		
//	}
}
