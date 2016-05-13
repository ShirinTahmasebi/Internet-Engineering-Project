package model;

import java.util.ArrayList;
import java.util.List;

public class ProjectDaoImplementation implements ProjectDao{

	static List<Project> projects = new ArrayList<Project>();
	public List<Project> getAllProjects() {
		return projects;
	}


	public Project getProject(String projectId) {
		for (Project tProject : projects) {
			if(tProject.getProjectId().equals(projectId))
				return tProject;
		}
		return null;
	}

	public void addProject(Project project) {
		projects.add(project);		
	}

	public void updateProject(Project project) {
		projects.remove(getProject(project.getProjectId()));
		projects.add(project);
		
	}

	public void deleteProject(Project project) {
		projects.remove(getProject(project.getProjectId()));
		
	}

	public void initializeProjectsList() {
		for (int i = 0; i < 10; i++) 
			projects.add(new Project("پروژه شماره  " + i));
	}

}
