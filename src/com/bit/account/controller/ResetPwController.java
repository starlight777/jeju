package com.bit.account.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.account.model.MemberDao;

@WebServlet("/login/findpw/resetpw.bit")
public class ResetPwController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		if(req.getSession().getAttribute("findpw_id") == null) {
			resp.sendRedirect("/jeju/login/findpw.bit");
			return;
		}
		req.getRequestDispatcher("/findpw_resetpw.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		int result = new MemberDao().editMember(id, "pw", pw);
		if(result == 1) {
//			req.setAttribute("resetpw_id", id);
//			resp.sendRedirect("/jeju/login/findpw/set.bit");
			req.getRequestDispatcher("/findpw_setpw.jsp").forward(req, resp);
		}
	}
}
