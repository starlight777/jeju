package com.bit.account.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bit.account.model.MemberDao;
import com.bit.account.model.MemberDto;

@WebServlet("/login.bit")
public class LoginController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setHeader("Cache-Control", "no-store");
		// 회원 또는 직원이 로그인을 해서 Session에 Attribute가 존재하는 경우 비정상적인 접근
		// 우선 오류페이지로 타입 파라미터와 이동
		if(req.getSession().getAttributeNames().hasMoreElements()) {
			System.out.println("unauthorized access to member login");
			resp.sendRedirect("/jeju/error.bit?errtype=login");
			return;
		}
		req.getRequestDispatcher("/login.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		MemberDto dto = null;
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text");
		PrintWriter out = resp.getWriter();
		int result =  new MemberDao().lookupId(id);
		if(result == 0) {
			out.print("no id");
//			req.setAttribute("err", "no id");
//			req.getRequestDispatcher("login.jsp").forward(req, resp);
		} else if (result == 1) {
			dto = new MemberDao().login(id, pw);
			if(dto == null) {
				out.print("wrong pw");
//				req.setAttribute("err", "wrong pw");
//				req.getRequestDispatcher("login.jsp").forward(req, resp);
			} else {
//				req.setAttribute("user", dto);
//				req.getRequestDispatcher("info.jsp").forward(req, resp);
				HttpSession session = req.getSession();
				session.setAttribute("user", dto);
//				resp.sendRedirect("info.jsp");
				out.print("login");
			}
		} else {
			System.out.println("알 수 없는 로그인 오류");
		}
	}
}
