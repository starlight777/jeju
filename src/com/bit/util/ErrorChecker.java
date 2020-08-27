package com.bit.util;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ErrorChecker {

	public int elogin(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		if(req.getSession().getAttribute("elogin") == null) {
			resp.sendRedirect("/jeju/login/elogin.bit"); 
			return -1;
		}
		return 0;
	}
	
	public int login(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		if(req.getSession().getAttribute("user") == null) {
			resp.sendRedirect("/jeju/login.bit"); 
			return -1;
		}
		return 0;
	}
}
