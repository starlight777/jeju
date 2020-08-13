package com.bit.std.model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class V_stdDao {

	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public V_stdDao() throws SQLException{
		String driver="oracle.jdbc.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="scott";
		String password="tiger";
		try {
			Class.forName(driver);
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		conn=DriverManager.getConnection(url, user, password);
	}
	
	public ArrayList<V_stdDto> selectAll() throws SQLException{
		ArrayList<V_stdDto> list=new ArrayList<V_stdDto>();
		String sql="select * from v_std";
		try{
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				list.add(new V_stdDto(
						rs.getInt("cno"),
						rs.getInt("cdays"),
						rs.getInt("sno"),
						rs.getInt("gr1"),
						rs.getInt("gr2"),
						rs.getInt("gr3"),
						rs.getInt("cnt"),
						rs.getInt("att_total"),
						rs.getInt("att_rate"),
						rs.getInt("late"),
						rs.getInt("leftearly"),
						rs.getInt("absent"),
						rs.getString("ctitle"),
						rs.getString("prof"),
						rs.getString("name"),
						rs.getString("lvl"),
						rs.getDate("cbegin"),
						rs.getDate("cend")));
			}
		}finally{
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		return list;
	}
	
	public ArrayList<V_stdDto> selectAllByCrs(int cno) throws SQLException{
		ArrayList<V_stdDto> list=new ArrayList<V_stdDto>();
		String sql="select * from v_std where cno=?";
		try{
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, cno);
			rs=pstmt.executeQuery();
			while(rs.next()){
				list.add(new V_stdDto(
						rs.getInt("cno"),
						rs.getInt("cdays"),
						rs.getInt("sno"),
						rs.getInt("gr1"),
						rs.getInt("gr2"),
						rs.getInt("gr3"),
						rs.getInt("cnt"),
						rs.getInt("att_total"),
						rs.getInt("att_rate"),
						rs.getInt("late"),
						rs.getInt("leftearly"),
						rs.getInt("absent"),
						rs.getString("ctitle"),
						rs.getString("prof"),
						rs.getString("name"),
						rs.getString("lvl"),
						rs.getDate("cbegin"),
						rs.getDate("cend")));
			}
		}finally{
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		return list;
	}
	
	public V_stdDto selectOne(int sno) throws SQLException{
		String sql="select * from v_std where sno=?";
		try{
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, sno);
			rs=pstmt.executeQuery();
			if(rs.next())return new V_stdDto(
					rs.getInt("cno"),
					rs.getInt("cdays"),
					rs.getInt("sno"),
					rs.getInt("gr1"),
					rs.getInt("gr2"),
					rs.getInt("gr3"),
					rs.getInt("cnt"),
					rs.getInt("att_total"),
					rs.getInt("att_rate"),
					rs.getInt("late"),
					rs.getInt("leftearly"),
					rs.getInt("absent"),
					rs.getString("ctitle"),
					rs.getString("prof"),
					rs.getString("name"),
					rs.getString("lvl"),
					rs.getDate("cbegin"),
					rs.getDate("cend"));
		}finally{
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		return null;
	}
}