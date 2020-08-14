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

import com.bit.account.model.MemberDAO;
import com.bit.account.model.MemberDTO;

@WebServlet("/login.bit")
public class MemberLoginController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.getRequestDispatcher("/login.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = null;
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text");
		PrintWriter out = resp.getWriter();
		int result = 0;
		try {
			result = dao.lookupId(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(result == 0) {
			out.print("no id");
//			req.setAttribute("err", "no id");
//			req.getRequestDispatcher("login.jsp").forward(req, resp);
		} else if (result == 1) {
			dto = dao.login(id, pw);
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
			System.out.println("error a");
		}
	}
}
