package com.cdgn.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cdgn.dao.Employeedao;
import com.cdgn.model.Employee;

/**
 * Servlet implementation class SearchEmployee
 */
@WebServlet("/search")
public class SearchEmployee extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		Employeedao dao=new Employeedao();
		try {
			Employee employee=dao.searchEmployee(id);
			if(employee.getId()!=0) {
				request.setAttribute("employee", employee);
				RequestDispatcher rd=request.getRequestDispatcher("viewemp.jsp");
				rd.forward(request, response);
			}
			else {
				request.setAttribute("status","Invalid Id");
				RequestDispatcher rd=request.getRequestDispatcher("search.jsp");
				rd.forward(request, response);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
