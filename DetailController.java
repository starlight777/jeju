package com.bit.course.controller;

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
import com.bit.lms_notice.model.NtcDao;
import com.bit.lms_notice.model.NtcDto;

@WebServlet("/opencourse/detail.bit")
public class DetailController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		int cno = Integer.parseInt(req.getParameter("idx"));
		int nno=Integer.parseInt(req.getParameter("idx"));
		try {
			CourseDao dao = new CourseDao();
			CourseDto bean = dao.selectOne(cno);
			req.setAttribute("course", bean);
			
			NtcDao dao2=new NtcDao();
			NtcDto bean2 = dao2.selectOne(nno);	//상세보기
			req.setAttribute("bean", bean2);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		RequestDispatcher rd = req.getRequestDispatcher("/detail.jsp");
		rd.forward(req, resp);
	
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
	}
	
}