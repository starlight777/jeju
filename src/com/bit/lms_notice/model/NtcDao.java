package com.bit.lms_notice.model;


import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import com.bit.lms_notice.model.NtcDto;

public class NtcDao {
	
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public NtcDao() throws SQLException {
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
	
	public ArrayList<NtcDto> selectAll() throws SQLException{	// 모두 출력
		ArrayList<NtcDto> list=new ArrayList<NtcDto>();
		String sql="select * from ntc ORDER BY nno DESC";
		try{
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				list.add(new NtcDto(
							rs.getInt("nno")
							,rs.getString("ntitle")
							,rs.getString("ntype")
							,rs.getString("nbody")
							,rs.getDate("ndate")
							,rs.getDate("ndateby")
							,rs.getInt("cno")
							,rs.getInt("eno")
							,rs.getString("nurl")
						));
			}
		}finally{
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		return list;
	}
		
	public NtcDto selectOne(int nno) throws SQLException{	// 상세 출력
		String sql="select * from Ntc where nno=?";
		NtcDto bean=new NtcDto();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try{
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, nno);
			rs=pstmt.executeQuery();
			if(rs.next()){
				bean.setNno(rs.getInt("nno"));
				bean.setNtitle(rs.getString("ntitle"));
				bean.setNurl(rs.getString("nurl"));
				bean.setNdate(rs.getDate("ndate"));	
				bean.setNbody(rs.getString("nbody"));
			}
			
		}finally{
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		return bean;
	}
	

	public int insertOne(String ntitle, String ntype, String nbody, Date ndate, Date ndateby, String nurl) throws SQLException{							// 입력
		String sql="insert into ntc values (ntc_seq.nextval, ?, ?, ?, ?, ?, ?)";
		try{
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, ntitle);
			pstmt.setString(2, ntype);
			pstmt.setString(3, nbody);
			pstmt.setDate(4, ndate);
			pstmt.setDate(5, ndateby);
			pstmt.setString(6, nurl);
			return pstmt.executeUpdate();
		}finally{
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
	}
	
	public void insertOne(String ntitle, String nurl, String ntype, String nbody){
		String sql="insert into ntc (nno, ntitle, nurl, ntype, nbody) values (ntc_seq.nextval,?, ?, ?,?)";
		try{
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, ntitle);
			pstmt.setString(2, nurl);
			pstmt.setString(3, ntype);
			pstmt.setString(4, nbody);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public int updateOne(int nno, String ntitle, String nurl, String nbody) throws SQLException{		// 수정
		String sql="update ntc set ntitle=?, nurl=? nbody=? where nno=?";
		try{
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, ntitle);
			pstmt.setString(2, nurl);
			pstmt.setInt(3, nno);
			pstmt.setString(4, nbody);
			return pstmt.executeUpdate();
		}finally{
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
	}
	
	public int deleteOne(int nno) throws SQLException{						// 삭제
//		String sql="update ntc set ntcAvailable=0 where nno=?";
		String sql="delete from ntc where nno=?";
		try{
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, nno);
			return pstmt.executeUpdate();
		}finally{
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
	}
}