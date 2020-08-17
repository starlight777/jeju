package com.bit.account.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.account.model.MemberDAO;
import com.bit.account.model.MemberDTO;

@WebServlet("/login/leave.bit")
public class LeaveController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setHeader("Cache-Control", "no-store");
		MemberDTO dto = (MemberDTO) req.getSession().getAttribute("user");
		if(dto == null) {
			resp.sendRedirect("/jeju/login.bit"); 
			return;
		}
		req.getRequestDispatcher("/leave.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		MemberDTO dto = (MemberDTO) req.getSession().getAttribute("user");
		String id = dto.getId();
		String pw = req.getParameter("pw");
		String name = dto.getName();
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text");
		PrintWriter out = resp.getWriter();
		MemberDAO dao = new MemberDAO();
		int result = 0;
		try {
			result = dao.lookupPw(id, pw);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// 비밀번호 일치
		if(result == 1) {
//			result = dao.deleteMember(id);
			System.out.println("leave : " + result);
			if(result == 1) {
				out.print(name);
				
			} else {
				out.print("error");
			}
		// 비밀번호 불일치
		} else {
			out.print("wrong pw");
		}
	}
}
