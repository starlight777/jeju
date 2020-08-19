package com.bit.course.controller;


import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.courses.model.CourseDao;
import com.bit.courses.model.CourseDto;




@WebServlet("/opencourse.bit")
public class OpencourseController extends HttpServlet {

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("opencoursecontroller1");
		try {
			CourseDao dao=new CourseDao();
			ArrayList<CourseDto> list = dao.selectAll();
			request.setAttribute("list",list);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		System.out.println("opencoursecontroller2");
		request.getRequestDispatcher("/opencourse.jsp").forward(request, response);
		
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
