package com.bit.account.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bit.account.model.MemberDao;
import com.bit.account.model.MemberDto;

@WebServlet("/login/join.bit")
public class JoinController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.getRequestDispatcher("/join.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		String answer = req.getParameter("answer");
		String name = req.getParameter("name");
		String tel = req.getParameter("tel");
		String email = req.getParameter("email");
		resp.setContentType("text");
		PrintWriter out = resp.getWriter();
		int result = new MemberDao().lookupId(id);
		if(result == 1) {
			out.print("existed id");
		} else if (result == 0) {
			result = new MemberDao().joinMember(id, pw, answer, name, tel, email);
			System.out.println("join success : " + (result == 1));
			out.print("join");
		}
	}
}
