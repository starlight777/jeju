package com.bit.course.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bit.account.model.MemberDao;
import com.bit.account.model.MemberDto;
import com.bit.course.model.CourseDao;
import com.bit.course.model.CourseDto;

@WebServlet("/opencourse/register.bit")
public class RegisterController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("/jeju/opencourse");
//		request.getRequestDispatcher("/register.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		MemberDto dto = (MemberDto) session.getAttribute("user");
		int cno = Integer.parseInt(req.getParameter("cno"));
		try	 {
			String id = dto.getId();
			CourseDao dao1 = new CourseDao();
			dao1.registerOne(id, cno);
			
			CourseDao dao2 = new CourseDao();
			dao2.levelUp(id);
			
			// session 초기화 대신 임시로 L02로 수정하여 학습정보가 보이지 않는 오류 해결
			dto.setLvl("L02");
			
			CourseDao dao3 = new CourseDao();
			CourseDto bean = dao3.selectOne(cno);
			req.setAttribute("course", bean);
				
			req.getRequestDispatcher("/register.jsp").forward(req, resp);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch(NullPointerException e) {
			resp.sendRedirect("/jeju/login.bit");
		}

	}

}
