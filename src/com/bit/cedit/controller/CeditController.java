package com.bit.cedit.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.course.model.CourseDao;
import com.bit.course.model.CourseDto;

@WebServlet("/cedit.bit")
public class CeditController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		int cno = Integer.parseInt(req.getParameter("idx"));
		
		try {
			CourseDao dao = new CourseDao();
			CourseDto bean = dao.selectOne(cno);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		RequestDispatcher rd = req.getRequestDispatcher("cedit.jsp");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		int cno = Integer.parseInt(req.getParameter("cno"));
		String ctitle = req.getParameter("ctitle");
		String cbegin = req.getParameter("cbegin");
		String cend = req.getParameter("cend");
		int croom = Integer.parseInt(req.getParameter("croom"));
		int prof = Integer.parseInt(req.getParameter("prof"));
		int salesno = Integer.parseInt(req.getParameter("salesno"));
		
		try {
			CourseDao dao = new CourseDao();
			dao.updateOne(cno, ctitle, cbegin, cend, croom, prof, salesno);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		resp.sendRedirect("course.bit?idx="+cno);
	}
}



