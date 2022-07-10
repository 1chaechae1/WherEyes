package com.list.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/register")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		String uname = request.getParameter("name");
		String uemail = request.getParameter("email");
		String upwd = request.getParameter("pass");
		String reUpwd = request.getParameter("re_pass");
		String umobile = request.getParameter("contact");

		RequestDispatcher dispatcher = null;
		Connection con = null;

		if (uname == null || uname.equals("")) {
			request.setAttribute("status", "invalidUname");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
			return;
		}
		if (uemail == null || uemail.equals("")) {
			request.setAttribute("status", "invalidUemail");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
			return;
		}
		if (upwd == null || upwd.equals("")) {
			request.setAttribute("status", "invalidUpwd");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
			return;
		} else if (!upwd.equals(reUpwd)) {
			request.setAttribute("status", "invalidConfirmPassword");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
			return;
		}
		if (umobile == null || umobile.equals("")) {
			request.setAttribute("status", "invalidUmobile");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
			return;
		} else if (umobile.length() > 13) {
			request.setAttribute("status", "invalidUmobileLength");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
			return;
		}

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/YOUR_DATABASE_NAME?serverTimezone=UTC&useSSL=FALSE", "root",
					"YOUR_DATABASE_PASSWORD");
			PreparedStatement pst = con
					.prepareStatement("INSERT INTO users (uname, upwd, uemail, umobile) VALUES (?, ?, ?, ?)");
			pst.setString(1, uname);
			pst.setString(2, upwd);
			pst.setString(3, uemail);
			pst.setString(4, umobile);
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("registration.jsp");
			if (rowCount > 0) {
				// INSERT SUCCESS
				request.setAttribute("status", "success");
			} else {
				// INSERT FAILED
				request.setAttribute("status", "failed");
			}
			dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

	}

}
