package com.bit.std.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.std.model.V_stdDao;
import com.bit.std.model.V_stdDto;

@WebServlet("/lms/students/sedit.bit")
public class SeditController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			V_stdDao dao = new V_stdDao();
			V_stdDto std=dao.selectOne(Integer.parseInt(request.getParameter("sno")));
			request.setAttribute("std", std);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("/sedit.jsp").forward(request, response);
   	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String lvl=request.getParameter("lvl").trim();
		int sno=Integer.parseInt(request.getParameter("sno").trim());
		
		try {
			V_stdDao dao = new V_stdDao();
			dao.sedit(sno, lvl);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		response.sendRedirect(request.getContextPath()+"/lms/students.bit");
	}
}
