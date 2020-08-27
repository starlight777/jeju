package com.bit.course.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.course.model.CaddDao;

@WebServlet("/lms/courses/cadd.bit")
public class CaddController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("/cadd.jsp");
		rd.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String ctitle = req.getParameter("ctitle").trim();
		String cbegin = req.getParameter("cbegin");
		String cend = req.getParameter("cend");	
		int croom = Integer.parseInt(req.getParameter("croom"));
		int profno =  Integer.parseInt(req.getParameter("profno"));
		int salesno = Integer.parseInt(req.getParameter("salesno"));

		try {
			CaddDao dao = new CaddDao();
			dao.insertOne(ctitle, cbegin, cend, croom, profno, salesno);
		} catch (SQLException e) {
			e.printStackTrace();
		}
<<<<<<< HEAD
		resp.sendRedirect("/jeju/lms/courses.bit");
=======
		resp.sendRedirect(req.getContextPath()+"/lms/courses.bit");
>>>>>>> 04a9fdeffd7e77a4c760cb103d491f8148ccdfd3
	}
}
