package com.bellinfo.advance.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.bellinfo.advance.jdbc.RepositoryDAO;
import com.bellinfo.advance.modal.LoginDetails;

public class LoginServlet extends HttpServlet {
	
	public void init(){
		System.out.println("Register init Service called");
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		
		String userName = req.getParameter("userName");
		String password = req.getParameter("password");
		String message = null;
		System.out.println("details: "+userName + " "+password);
		
		/*if(userName.equals("siva") && password.equals("abcd1234")){
			message = "login successful";
		} else {
			message ="login failed";
		}*/
		
		RepositoryDAO repDAO = new RepositoryDAO();
		LoginDetails ld = new LoginDetails();
		ld.setUsername(userName);
		ld.setPassword(password);
		boolean result = repDAO.extractUserDetails(ld);
		if(result){
			message = "login successfull";
		} else{
			message ="oops...login failed";
		}
		
		req.setAttribute("info", message);
		req.setAttribute("loggedUser", ld);
			if(message.equals("oops...login failed"))
				{
				RequestDispatcher rd = req.getRequestDispatcher("MyErrorPage.jsp");
				rd.forward(req, res);
				}
			else{
		RequestDispatcher rd = req.getRequestDispatcher("result.jsp");
		rd.forward(req, res);
				}
	}

}
