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
		response.setHeader("Cache-Control", "no-store");
		// 회원 또는 직원이 로그인을 해서 Session에 Attribute가 존재하는 경우 비정상적인 접근
		// 우선 오류페이지로 타입 파라미터와 이동
//		if(request.getSession().getAttributeNames().hasMoreElements()) {
		if(request.getSession().getAttribute("user") != null ||
				request.getSession().getAttribute("elogin") != null	) {
			System.out.println("unauthorized access to emp login");
			response.sendRedirect("/jeju/error.bit?errtype=elogin");
			return;
		}
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
