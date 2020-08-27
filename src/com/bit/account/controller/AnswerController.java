package com.bit.account.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.account.model.MemberDao;

@WebServlet("/login/findpw/answer.bit")
public class AnswerController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		if(req.getParameter("id") == null) {
			resp.sendRedirect("/jeju/login/findpw.bit");
			return;
		}
		req.getRequestDispatcher("/findpw_answer.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String id = req.getParameter("id");
		String answer = req.getParameter("answer");
		int result = 0;
		result = new MemberDao().checkAnswer(id, answer);
		if(result == 1) {
			req.getSession().setAttribute("findpw_id", id);
			resp.sendRedirect("/jeju/login/findpw/resetpw.bit");
		} else {
			req.getRequestDispatcher("/findpw_answer_wrong.jsp").forward(req, resp);
		}
	}
}
