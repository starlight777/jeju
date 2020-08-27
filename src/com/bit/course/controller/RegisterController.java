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
		
	}

	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
				
		MemberDto dto = (MemberDto) req.getSession().getAttribute("user");
		int cno = Integer.parseInt(req.getParameter("cno"));
		String id = req.getParameter("id");
		System.out.println("1");
		try	 {
			dto = new MemberDao().selectMemeber(dto.getId());
			req.setAttribute("user_info", dto);
			System.out.println("2");
			try	 {
				
				
				CourseDao dao1 = new CourseDao();
				dao1.registerOne(id, cno);
				
				CourseDao dao2 = new CourseDao();
				dao2.levelUp(id);
				
				CourseDao dao3 = new CourseDao();
				CourseDto bean = dao3.selectOne(cno);
				req.setAttribute("course", bean);
				System.out.println("3");
					
			} catch (SQLException e) {
				e.printStackTrace();
				System.out.println("4");
			}
			req.getRequestDispatcher("/register.jsp").forward(req, resp);
			System.out.println("5");
		} catch(NullPointerException e) {
			resp.sendRedirect("/jeju/login.bit");
			System.out.println("6");
		}
		
	}
	
		
		
		
			
		
		
		
//		if(member!=null){		
				
//			String id = request.getParameter("id");
	//		String pw = request.getParameter("pw");
		//	int cno = Integer.parseInt(request.getParameter("cno"));
		//	MemberDao dao = new MemberDao();
	//		dao.login(id, pw);
	//		System.out.println("login");
	//		try {
	//			CourseDao dao1 = new CourseDao();
//				dao1.registerOne(id, cno);
//				
//				CourseDao dao2 = new CourseDao();
//				dao2.levelUp(id);
//				
//				CourseDao dao3 = new CourseDao();
//				CourseDto bean = dao3.selectOne(cno);
//				request.setAttribute("course", bean);
				
//				request.getRequestDispatcher("/register.jsp").forward(request, response);	
				
//			} catch (SQLException e) {	
//				e.printStackTrace();
//			}
//			System.out.println("RegisterController : " + cno);
//		}else{
//			response.sendRedirect("/jeju/login.bit");
//		}
		
//	}

}
