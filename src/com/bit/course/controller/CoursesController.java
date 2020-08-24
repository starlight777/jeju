package com.bit.course.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.course.model.CoursesDao;
import com.bit.course.model.CoursesDto;

@WebServlet("/lms/courses.bit")
public class CoursesController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		CoursesDao dao = new CoursesDao();
		List<CoursesDto> list = dao.getList();
		req.setAttribute("courses", list);

		RequestDispatcher rd = req.getRequestDispatcher("/courses.jsp");
		rd.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
	}
}
