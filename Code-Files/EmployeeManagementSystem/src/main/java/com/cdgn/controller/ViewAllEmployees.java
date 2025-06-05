package com.cdgn.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cdgn.dao.Employeedao;
import com.cdgn.model.Employee;

@WebServlet("/findAll")
public class ViewAllEmployees extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		Employeedao dao=new Employeedao();
		try {
			List<Employee> emplist=dao.viewAllEmployees();
			request.setAttribute("emplist",emplist);
			RequestDispatcher rd=request.getRequestDispatcher("viewallemp.jsp");
			rd.forward(request, response);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}

}
