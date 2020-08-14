package com.bit.student.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.account.model.MemberDTO;
import com.bit.course.model.CourseDTO;
import com.bit.student.model.AttendanceDTO;
import com.bit.student.model.StudentDAO;
import com.bit.student.model.StudentDTO;
import com.bit.util.DTO;

@WebServlet("/mypage/study.bit")
public class StudyController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setHeader("Cache-Control", "no-store");
		MemberDTO user = (MemberDTO) req.getSession().getAttribute("user");
		String id;
		String lvl;
		try {
			id = user.getId();
			lvl = user.getLvl();
		} catch(NullPointerException e) {
			resp.sendRedirect("/jeju/login.bit");
			return;
		} 
		System.out.println("study.bit id : " + id);
		if(lvl.equals("L01")) {
			req.getRequestDispatcher("/study.jsp").forward(req, resp);
		} else {
			StudentDTO student = new StudentDAO().selectStudent(id);
			HashMap<String, DTO> dtoMap = new StudentDAO().studentInfo(student.getSno());
			CourseDTO course = (CourseDTO) dtoMap.get("course");
			AttendanceDTO attendance = (AttendanceDTO) dtoMap.get("attendance");
			req.setAttribute("student", student);
			req.setAttribute("course", course);
			req.setAttribute("attendance", attendance);
			req.getRequestDispatcher("/study.jsp").forward(req, resp);
		}
	}
}
