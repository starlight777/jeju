package com.bit.emp.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bit.emp.model.EmpDao;
import com.bit.emp.model.EmpDto;

@WebServlet("/login/elogin.bit")
public class EloginController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/elogin.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int eno=Integer.parseInt(request.getParameter("eno"));
		String pw=request.getParameter("pw");
		EmpDao dao;
		try {
			dao = new EmpDao();
			EmpDto bean=dao.elogin(eno, pw);
			HttpSession session=request.getSession();
			session.setAttribute("elogin", bean);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("/index.jsp").forward(request, response);
	}
}
