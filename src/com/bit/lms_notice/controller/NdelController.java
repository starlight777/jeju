package com.bit.lms_notice.controller;


import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.lms_notice.model.NtcDao;


@WebServlet("/lms/ntc/ndel.bit")
public class NdelController extends HttpServlet {
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int nno=Integer.parseInt(req.getParameter("idx"));
		
		try {
			NtcDao dao = new NtcDao();
			dao.deleteOne(nno);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		resp.sendRedirect("/jeju/lms/ntc.bit");
//		RequestDispatcher rd = req.getRequestDispatcher("/ndel.jsp");
//		rd.forward(req, resp);
		
	}
		

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
//		int nno= Integer.parseInt(req.getParameter("idx"));
//
//		NtcDao dao;
//		try {
//			
//			dao = new NtcDao();
//			NtcDto bean = dao.selectOne(nno);
//			String path = req.getRealPath("./up");
//			File file = new File(path+"/"+bean.getNurl());		
//			System.out.println(bean.getNurl());
//			dao = new NtcDao();
//			dao.deleteOne(nno);
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
//	resp.sendRedirect("/lms/ntc.bit");

	}

}