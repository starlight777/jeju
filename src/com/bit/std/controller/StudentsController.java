package com.bit.std.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bit.std.model.V_stdDao;
import com.bit.std.model.V_stdDto;

@WebServlet("/lms/students.bit")
public class StudentsController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try {
			V_stdDao dao = new V_stdDao();
			ArrayList<V_stdDto> stds=dao.selectAll();
			request.setAttribute("stds", stds);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("/students.jsp").forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int startRow=Integer.parseInt(request.getParameter("startRow"));
		int endRow=Integer.parseInt(request.getParameter("endRow"));
		
		HttpSession session=request.getSession(false);
		
		try {
			V_stdDao dao = new V_stdDao();
			ArrayList<V_stdDto> std=dao.selectAllPerPage(startRow,endRow);
			session.setAttribute("std", std);
			System.out.println(std.toString());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println(startRow);
		System.out.println(endRow);
		response.sendRedirect(request.getContextPath()+"/lms/students.bit");
	}

}
