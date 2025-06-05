package com.cdgn.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cdgn.dao.Employeedao;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		HttpSession session=request.getSession(true);
		
		if(email.equals("admin@codegnan.com")&& password.equals("admin@cg")) {
			session.setAttribute("email", email);
			response.sendRedirect("admin.jsp");
		}
		else {
			Employeedao dao=new Employeedao();
			try {
				boolean status= dao.checkLoginDetails(email,password);
				if(status) {
					session.setAttribute("email", email);
					response.sendRedirect("user.jsp");
				}
				else {
					request.setAttribute("status", "Invalid Credintials");
					RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
					rd.forward(request, response);
				}
			
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		
	}

}
