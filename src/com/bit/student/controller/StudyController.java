package com.bit.student.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.account.model.MemberDto;
import com.bit.course.model.CourseDto;
import com.bit.student.model.AttendanceDto;
import com.bit.student.model.StudentDao;
import com.bit.student.model.StudentDto;
import com.bit.util.Dto;

@WebServlet("/mypage/study.bit")
public class StudyController extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setHeader("Cache-Control", "no-store");
		MemberDto user = (MemberDto) req.getSession().getAttribute("user");
		String id;
		String lvl;
		try {
			id = user.getId();
			lvl = user.getLvl();
		} catch(NullPointerException e) {
			resp.sendRedirect(req.getContextPath()+"/login.bit");

			return;
		} 
		System.out.println("study.bit id : " + id);
		if(lvl.equals("L01")) {
			req.getRequestDispatcher("/study.jsp").forward(req, resp);
		} else {
			StudentDto student = new StudentDao().studentInfo(new StudentDao().selectStudent(id));
			
//			StudentDTO student = new StudentDAO().selectStudent(id);
//			HashMap<String, DTO> dtoMap = new StudentDAO().studentInfo(student.getSno());
//			CourseDTO course = (CourseDTO) dtoMap.get("course");
//			AttendanceDTO attendance = (AttendanceDTO) dtoMap.get("attendance");
			req.setAttribute("student", student);
			req.setAttribute("course", student.getCrs());
			req.setAttribute("attendance", student.getAtt());
			req.getRequestDispatcher("/study.jsp").forward(req, resp);
		}
	}
}
