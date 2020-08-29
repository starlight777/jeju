package com.bit.account.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.account.model.MemberDao;

@WebServlet("/login/findpw.bit")
public class FindPwController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		if(req.getSession().getAttributeNames().hasMoreElements()) {
			resp.sendRedirect("/jeju");
			return;
		}
		req.getRequestDispatcher("/findpw.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String id = req.getParameter("id");
		int result = new MemberDao().lookupId(id);
		PrintWriter out = resp.getWriter();
		if(result == 1) {
			out.print("found id");
		} else {
			out.print("no id");
		}
	}
}
