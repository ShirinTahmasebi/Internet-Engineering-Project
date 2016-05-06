package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Dao;
import model.User;
import model.UserDaoImplementation;
import utils.Response;
import utils.Tag;

public class LoginController extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = -4015599647677928668L;
	public static HttpSession session;
	
	
	@Override
	public void init() throws ServletException {
		super.init();
		Dao.userDao = new UserDaoImplementation(); 
		Dao.userDao.initializeUserList();
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	    
	    
		Response.initialize(response);
		session = request.getSession();
		String userName= new String(request.getParameter(Tag.USER_NAME).getBytes("8859_1"), "UTF-8");
		//userName = new String(userName.getBytes(), "UTF-8");
		String password=request.getParameter(Tag.PASSWORD);
		
		User user = new User(userName, password);
		
		
		
		boolean status= false;
		
		if (Dao.userDao.getUser(user) != null) {
			status = true;
		}
		
		
		if(status){
			request.setAttribute(Tag.USER ,user);
			session.setAttribute(Tag.USER, user);
			RequestDispatcher rd = request.getRequestDispatcher(Tag.FIRST_PAGE);
			rd.forward(request, response);
		}
		else{
			RequestDispatcher rd = request.getRequestDispatcher(Tag.LOGIN_PAGE);
			rd.forward(request, response);
		}
	}
	
	
	
}
