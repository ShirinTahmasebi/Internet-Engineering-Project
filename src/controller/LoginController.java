package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.User;
import utils.Response;
import utils.Tag;

public class LoginController extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = -4015599647677928668L;
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	    
	    
		Response.initialize(response);
		HttpSession session = request.getSession();
		String userName= new String(request.getParameter(Tag.USER_NAME).getBytes("8859_1"), "UTF-8");
		//userName = new String(userName.getBytes(), "UTF-8");
		String password=request.getParameter(Tag.PASSWORD);
		
		User user =new User();
		user.setUserName(userName);
		user.setPassword(password);
		request.setAttribute(Tag.USER ,user);
		session.setAttribute(Tag.USER, user);
		
	
		boolean status= true;
		
		if(status){
			RequestDispatcher rd=request.getRequestDispatcher(Tag.FIRST_PAGE);
			rd.forward(request, response);
		}
		else{
			RequestDispatcher rd=request.getRequestDispatcher(Tag.LOGIN_PAGE);
			rd.forward(request, response);
		}
	}
	
	
	
}
