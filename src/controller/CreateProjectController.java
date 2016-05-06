package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BindModels;
import model.Project;
import model.User;
import utils.Response;
import utils.Tag;

public class CreateProjectController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8021659572207012115L;
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		  
				Response.initialize(response);
				//LoginController.session = request.getSession();
				String projectName = new String(request.getParameter(Tag.PROJECT_NAME).getBytes("8859_1"), "UTF-8");
				String projectCost = new String(request.getParameter(Tag.PROJECT_COST).getBytes("8859_1"), "UTF-8");
				String projectDeadline = new String(request.getParameter(Tag.PROJECT_DEADLINE).getBytes("8859_1"), "UTF-8");
				String projectNeededSkills = new String(request.getParameter(Tag.PROJECT_NEEDED_SKILLS).getBytes("8859_1"), "UTF-8");
				String projectDescription = new String(request.getParameter(Tag.PROJECT_DESCRIPTION).getBytes("8859_1"), "UTF-8");

				
				Project project = new Project();
				project.setProjectName(projectName);
				project.setBudget(projectCost);
				project.setDeadline(projectDeadline);
				project.setNeededSkills(projectNeededSkills);
				project.setDescription(projectDescription);
				
				BindModels.userProject((User)LoginController.session.getAttribute(Tag.USER), project);
				
				RequestDispatcher rd = request.getRequestDispatcher(Tag.FIRST_PAGE);
				rd.forward(request, response);
				
				/*boolean status= false;
				
				if (Dao.userDao.getUser(new User(userName, password)) != null) {
					status = true;
				}
				
				
				if(status){
					request.setAttribute(Tag.USER, Dao.userDao.getUser(userName));
					LoginController.session.setAttribute(Tag.USER, Dao.userDao.getUser(userName));
					RequestDispatcher rd = request.getRequestDispatcher(Tag.FIRST_PAGE);
					rd.forward(request, response);
				}
				else{
					RequestDispatcher rd = request.getRequestDispatcher(Tag.LOGIN_PAGE);
					rd.forward(request, response);
				}*/
	}

}
