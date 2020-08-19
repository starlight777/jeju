package com.bit.course.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.courses.model.CourseDao;
import com.bit.courses.model.CourseDto;


@WebServlet("/opencourse/register.bit")
public class RegisterController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("/register.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		HttpSession session = request.getSession(false);
//		MemberDto bean = (MemberDto) session.getAttribute("login");
		
		String id = "test";
		int cno = Integer.parseInt(request.getParameter("cno"));
		
		try {
			CourseDao dao = new CourseDao();
			dao.registerOne(id, cno);
			
			CourseDao dao2 = new CourseDao();
			dao2.levelUp(id);
			
			CourseDao dao3 = new CourseDao();
			CourseDto bean = dao3.selectOne(cno);
			request.setAttribute("course", bean);
			
		} catch (SQLException e) {	
			e.printStackTrace();
		}
		System.out.println("RegisterController : " + cno);

		request.getRequestDispatcher("/register.jsp").forward(request, response);
	}

}
