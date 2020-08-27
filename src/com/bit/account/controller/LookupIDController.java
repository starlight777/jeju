package com.bit.account.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.account.model.MemberDao;

@WebServlet("/lookupid.bit")
public class LookupIDController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String id = req.getParameter("id");
		int result = 2;
		result = new MemberDao().lookupId(id);
/*		try {
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
*/		req.setAttribute("lookup", result);
	}
}
