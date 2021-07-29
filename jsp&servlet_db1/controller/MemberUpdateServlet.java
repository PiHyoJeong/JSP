package com.saeyan.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.saeyan.dao.MemberDAO;
import com.saeyan.dto.MemberVo;

@WebServlet("/memberUpdate.do")
public class MemberUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid = request.getParameter("userid");
		MemberDAO mDao = MemberDAO.getInstance();
		
		MemberVo mVo = mDao.getMember(userid);
		request.setAttribute("mVo", mVo);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("member/memberUpdate.jsp");
		dispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		//폼에서 입력한 회원 정보 얻어오기
		String id = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String admin = request.getParameter("admin");
		
		//회원정보 저장할 객체
		MemberVo mVo = new MemberVo();
		mVo.setUserid(id);
		mVo.setPhone(phone);
		mVo.setPwd(pwd);
		mVo.setEmail(email);
		mVo.setAdmin(Integer.parseInt(admin));
		
		MemberDAO mDao = MemberDAO.getInstance();
		
		mDao.updateMember(mVo);
		response.sendRedirect("login.do");
	}
}
