package com.bit.std.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.std.model.AttDao;
import com.bit.std.model.AttDto;
import com.bit.std.model.V_stdDao;
import com.bit.std.model.V_stdDto;

@WebServlet("/lms/mytask/mystus/gedit.bit")
public class GeditController extends HttpServlet {
   	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			V_stdDao dao = new V_stdDao();
			V_stdDto std=dao.selectOne(Integer.parseInt(request.getParameter("sno")));
			request.setAttribute("std", std);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("/gedit.jsp").forward(request, response);
   		
   	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int sno=Integer.parseInt(request.getParameter("sno").trim());
		int gr1=Integer.parseInt(request.getParameter("gr1").trim());
		int gr2=Integer.parseInt(request.getParameter("gr2").trim());
		int gr3=Integer.parseInt(request.getParameter("gr3").trim());
		
		try {
			V_stdDao dao = new V_stdDao();
			dao.update(sno, gr1, gr2, gr3);
			System.out.println("updated");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		response.sendRedirect(request.getContextPath()+"/lms/mytask/mystus/mystu.bit?sno="+sno);
	}
}