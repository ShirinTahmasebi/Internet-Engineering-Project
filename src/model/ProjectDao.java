package model;

import java.util.List;

public interface ProjectDao {
	
	   public List<Project> getAllProjects();
	   public Project getProject(String projectId);
	   public void addProject(Project project);
	   public void updateProject(Project project);
	   public void deleteProject(Project project);
	   public void initializeProjectsList();

}
