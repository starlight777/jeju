package com.bit.std.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.crs.model.V_crsDao;
import com.bit.crs.model.V_crsDto;
import com.bit.std.model.AttDao;
import com.bit.std.model.AttDto;
import com.bit.std.model.V_stdDao;
import com.bit.std.model.V_stdDto;

@WebServlet("/lms/mytask/mystus/mystu.bit")
public class MystuController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try {
			V_stdDao dao = new V_stdDao();
			V_stdDto std=dao.selectOne(Integer.parseInt(request.getParameter("sno")));
			request.setAttribute("std", std);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			AttDao dao2 = new AttDao();
			ArrayList<AttDto> att=dao2.selectAllBySno(Integer.parseInt(request.getParameter("sno")));
			request.setAttribute("att", att);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("/mystu.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
