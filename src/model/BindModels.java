package model;

public class BindModels {
	
	public static void userProject(User user, Project project){
		user.getCreatedProject().add(project);
	}

}
