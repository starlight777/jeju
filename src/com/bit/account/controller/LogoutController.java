package com.bit.account.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bit.account.model.MemberDto;

@WebServlet("/login/logout.bit")
public class LogoutController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession session = req.getSession();
		try {
			String name = ((MemberDto) session.getAttribute("user")).getName();
			req.setAttribute("name", name);
		} catch(NullPointerException e) {
			resp.sendRedirect("/jeju/login.bit");
			return;
		}
		
		session.invalidate();
		req.getRequestDispatcher("/logout.jsp").forward(req, resp);
	}
}
