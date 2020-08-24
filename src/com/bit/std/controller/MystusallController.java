package com.bit.std.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.crs.model.V_crsDao;
import com.bit.crs.model.V_crsDto;
import com.bit.std.model.V_stdDao;
import com.bit.std.model.V_stdDto;

@WebServlet("/lms/mytask/mystusall.bit")
public class MystusallController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			V_crsDao dao = new V_crsDao();
			V_crsDto crs = dao.selectOne(Integer.parseInt(request.getParameter("cno")));
			request.setAttribute("crs", crs);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		try {
			V_stdDao dao2 = new V_stdDao();
			ArrayList<V_stdDto> stds=dao2.selectAllStdByCrs(Integer.parseInt(request.getParameter("cno")));
			request.setAttribute("stds", stds);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("/mystusall.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
