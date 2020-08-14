package com.bit.account.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/mypage/infoedit.bit")
public class InfoeditController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String type = req.getParameter("type");
		req.getRequestDispatcher("/infoedit.jsp?type=" + type).forward(req, resp);
	}
}
