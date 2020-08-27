package com.bit.lms_notice.controller;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.lms_notice.model.NtcDao;
import com.bit.lms_notice.model.NtcDto;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


@WebServlet("/lms/ntc/nedit.bit")
public class NeditController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		int nno=Integer.parseInt(req.getParameter("idx"));
		try {
			NtcDao dao=new NtcDao();
			NtcDto bean = dao.selectOne(nno);
			req.setAttribute("bean", bean);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		RequestDispatcher rd = req.getRequestDispatcher("/nedit.jsp");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
				// upload file max size
				int fsize=1*1024*1024*13;
				// upload file path
				String path=req.getRealPath("./up");
				// upload file rename FileRenamePolicy
				File file = new File(path);
				
				if(!file.exists()){
					file.mkdirs();
				}
				
				DefaultFileRenamePolicy frp=null;
				frp=new DefaultFileRenamePolicy();
				
				MultipartRequest mpReq = null;
				mpReq=new MultipartRequest(req, path,fsize,"utf-8",frp);

				//제목받기
				//DB에 제목이랑 파일경로 insert하기. 
				req.setAttribute("rename",mpReq.getFilesystemName("nurl"));
				req.setAttribute("origin",mpReq.getOriginalFileName("nurl"));

				String nurl = mpReq.getFilesystemName("nurl");
				String ntitle = mpReq.getParameter("ntitle");
				String nbody = mpReq.getParameter("nbody");
				int nno = Integer.parseInt(req.getParameter("idx"));
				System.out.println(ntitle);
				try {
					NtcDao dao = new NtcDao();
				//	dao.insertOne(ntitle, nurl);//DB에 제목+url 저장
					dao.updateOne(nno, ntitle, nurl, nbody);
				} catch (SQLException e) {
					e.printStackTrace();
				}
				resp.sendRedirect("/jeju/lms/ntc/ndetail2.bit?idx="+nno);
//					req.getRequestDispatcher("/ntc.jsp").forward(req, resp);
			}
		}	

