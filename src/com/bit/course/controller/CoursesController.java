package com.bit.course.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.course.model.CoursesDao;
import com.bit.course.model.CoursesDto;
import com.bit.course.model.PagingDto;
<<<<<<< HEAD
//import com.bit.util.ErrorChecker;
=======
import com.bit.util.ErrorChecker;
>>>>>>> 04a9fdeffd7e77a4c760cb103d491f8148ccdfd3

@WebServlet("/lms/courses.bit")
public class CoursesController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
<<<<<<< HEAD

		//if(new ErrorChecker().elogin(req, resp) < 0) return;

		CoursesDao dao = new CoursesDao();
	
		int page = 1;
		
=======
		CoursesDao dao = new CoursesDao();
		int page = 1;

>>>>>>> 04a9fdeffd7e77a4c760cb103d491f8148ccdfd3
		if(req.getParameter("page")!=null) {
			page = Integer.parseInt(req.getParameter("page"));
		}
		PagingDto paging = new PagingDto();
		paging.setPage(page);

		int count = dao.getAllCount();
		paging.setTotalCount(count);
<<<<<<< HEAD
		
		
=======

>>>>>>> 04a9fdeffd7e77a4c760cb103d491f8148ccdfd3
		List<CoursesDto> list = dao.getList(page);
		req.setAttribute("courses", list);
		req.setAttribute("paging", paging);

		RequestDispatcher rd = req.getRequestDispatcher("/courses.jsp");
		rd.forward(req, resp);
	}
<<<<<<< HEAD

}

=======
}
>>>>>>> 04a9fdeffd7e77a4c760cb103d491f8148ccdfd3
