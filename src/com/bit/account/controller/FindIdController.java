package com.bit.account.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bit.account.model.MemberDao;

@WebServlet("/login/findid.bit")
public class FindIdController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		if(req.getSession().getAttributeNames().hasMoreElements()) {
			resp.sendRedirect("/jeju");
			return;
		}
		req.getRequestDispatcher("/findid.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String name = req.getParameter("name");
		String tel = req.getParameter("tel");
		String email = req.getParameter("email");
		MemberDao dao = new MemberDao();
		String id = dao.lookupId(name, tel, email);
		if(id == null) {
			req.getRequestDispatcher("/findid_noid.jsp").forward(req, resp);
		} else {
			HttpSession session = req.getSession();
			session.setAttribute("foundid_name", name);
			session.setAttribute("foundid_id", id);
			req.getRequestDispatcher("/findid_foundid.jsp").forward(req, resp);
		}
	}
}
