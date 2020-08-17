package com.bit.cdel.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.course.model.CourseDao;

@WebServlet("/cdel.bit")
public class CdelController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
		int cno = Integer.parseInt(req.getParameter("cno"));
		try {
			CourseDao dao = new CourseDao();
			dao.deleteOne(cno);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		resp.setStatus(200);
		RequestDispatcher rd = req.getRequestDispatcher("cdel.jsp");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
//		int cno = Integer.parseInt(req.getParameter("cno"));
//		System.out.println("del : " + cno);
//		try {
//			CourseDao dao = new CourseDao();
//			dao.deleteOne(cno);
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		resp.setStatus(200);
	}
}	
