package com.bit.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.lms_notice.model.NtcDao;
import com.bit.lms_notice.model.NtcDto;


@WebServlet("/notice/ndetail.bit")
public class NdetailController extends HttpServlet {
	

	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int nno=Integer.parseInt(req.getParameter("idx"));
		try {
			NtcDao dao=new NtcDao();
			
			NtcDto bean = dao.selectOne(nno);	//상세보기
			
			req.setAttribute("bean", bean);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		req.getRequestDispatcher("/ndetail.jsp").forward(req, resp);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
