package com.bit.lms_notice.controller;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.lms_notice.model.NtcDao;
import com.bit.lms_notice.model.NtcDto;

@WebServlet("/lms/ntc/ndetail2.bit")
public class Ndetail2Controller extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		int nno=Integer.parseInt(req.getParameter("idx"));
		try {
			NtcDao dao=new NtcDao();
			
			NtcDto bean = dao.selectOne(nno);	//상세보기
			
			req.setAttribute("bean", bean);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		req.getRequestDispatcher("/ndetail2.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		int nno=Integer.parseInt(req.getParameter("nno"));
		String ntitle=req.getParameter("ntitle").trim();
		String nurl=req.getParameter("nurl").trim();
		String nbody=req.getParameter("nbody").trim();
		
		try {
			NtcDao dao=new NtcDao();
			dao.updateOne(nno, ntitle, nurl, nbody);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		resp.sendRedirect("/lms/ntc.bit");
	}
}










