package com.bit.std.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.std.model.V_stdDao;
import com.bit.std.model.V_stdDto;

@WebServlet("/lms/mytask/mystus.bit")
public class MystusController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			V_stdDao dao = new V_stdDao();
			ArrayList<V_stdDto> list=dao.selectAllByCrs(1);
//			나중에서 목록에서 클릭해서 넘기는 값 받아서 넣어야 함
			request.setAttribute("list", list);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("/mystus.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
