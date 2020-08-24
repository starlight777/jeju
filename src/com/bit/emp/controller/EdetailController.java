package com.bit.emp.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.emp.model.EmpDao;
import com.bit.emp.model.EmpDto;

@WebServlet("/lms/emp/edetail.bit")
public class EdetailController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int eno=Integer.parseInt(request.getParameter("eno").trim());
		try {
			EmpDao dao = new EmpDao();
			EmpDto emp=dao.selectOne(eno);
			request.setAttribute("emp", emp);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("/edetail.jsp").forward(request, response);
	
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
