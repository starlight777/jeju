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

@WebServlet("/login/leave.bit")
public class JoinController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.getRequestDispatcher("/join.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String id = req.getParameter("id");
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = null;
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text");
		PrintWriter out = resp.getWriter();
		int result = 0;
		try {
			result = dao.lookupId(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(result == 1) {
			out.print("existed id");
		} else if (result == 0) {
				out.print("join");
		}
	}
}
