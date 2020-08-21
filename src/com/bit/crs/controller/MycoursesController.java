package com.bit.crs.controller;

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

@WebServlet("/lms/mytask/mycourses.bit")
public class MycoursesController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			V_crsDao dao = new V_crsDao();
			ArrayList<V_crsDto> list=dao.selectMine(Integer.parseInt(request.getParameter("eno")));
			for (int i = 0; i < list.size(); i++) {
				System.out.println(list.get(i));
			}
			request.setAttribute("list", list);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("/mycourses.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
