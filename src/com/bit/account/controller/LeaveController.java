package com.bit.account.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.account.model.MemberDao;
import com.bit.account.model.MemberDto;

@WebServlet("/login/leave.bit")
public class LeaveController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setHeader("Cache-Control", "no-store");
		MemberDto dto = (MemberDto) req.getSession().getAttribute("user");
		if(dto == null) {
			resp.sendRedirect("/jeju/login.bit"); 
			return;
		}
		req.getRequestDispatcher("/leave.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		MemberDto dto = (MemberDto) req.getSession().getAttribute("user");
		String id = dto.getId();
		String pw = req.getParameter("pw");
		String name = dto.getName();
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text");
		PrintWriter out = resp.getWriter();
		MemberDao dao = new MemberDao();
		int result = dao.deleteMember(id, pw);
		// 성공 시 result 1
		if(result == 1) {
			System.out.println("leave : " + result);
			out.print(name);
		// 실패 시 pw 오류 메시지 출력
		} else {
			out.print("wrong pw");
		}
//		try {
//			result = dao.lookupPw(id, pw);
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		// ��й�ȣ ��ġ
//		if(result == 1) {
//			result = dao.deleteMember(id, pw);
//			System.out.println("leave : " + result);
//			if(result == 1) {
//				out.print(name);
//				
//			} else {
//				out.print("error");
//			}
//			// ��й�ȣ ����ġ
//		} else {
//			out.print("wrong pw");
//		}
	}
}
