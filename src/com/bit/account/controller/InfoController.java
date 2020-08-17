package com.bit.account.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.account.model.MemberDAO;
import com.bit.account.model.MemberDTO;

@WebServlet("/mypage/info.bit")
public class InfoController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setHeader("Cache-Control", "no-store");
		
		MemberDTO dto = (MemberDTO) req.getSession().getAttribute("user");
//		System.out.println("controller : " + dto.getId());
		try	 {
			dto = new MemberDAO().selectMemeber(dto.getId());
			req.setAttribute("user_info", dto);
		} catch(NullPointerException e) {
			resp.sendRedirect("/jeju/login.bit");
			return;
		}
		req.getRequestDispatcher("/info.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
	}
}
