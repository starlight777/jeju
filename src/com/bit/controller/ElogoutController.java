package com.bit.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login/elogout.bit")
public class ElogoutController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("elogin", null);
		HttpSession session=request.getSession(false);
		if(session != null){
			request.getSession().invalidate();
		}
		response.sendRedirect(request.getContextPath()+"/index.bit");
	}
}