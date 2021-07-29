package com.saeyan.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.saeyan.dao.MemberDAO;
import com.saeyan.dto.MemberVo;

@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "member/login.jsp";
		
		HttpSession session = request.getSession();
		
		if(session.getAttribute("loginUser") != null) {
			url="main.jsp";
			
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		
			
		//RequestDispatcher dispatcher = request.getRequestDispatcher("member/login.jsp");
		dispatcher.forward(request, response);
		//response.sendRedirect("member/login.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "member/login.jsp";
		
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		
		
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.userCheck(userid, pwd);
		
		if(result ==1 ) {
			MemberVo mVo = mDao.getMember(userid);
			
			HttpSession session = request.getSession();
			session.setAttribute("loginUser",mVo);
			
			request.setAttribute("message", "success login. welcome!");
			url = "main.jsp";
		}else if(result==0) {
			request.setAttribute("message", "not this password");
		}else if(result==-1) {
			request.setAttribute("message", "not exist member");
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
