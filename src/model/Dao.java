package model;

public class Dao {
	public static UserDao userDao;
	public static ProjectDao projectDao;
	
	
	public static void init() {
		Dao.userDao = new UserDaoImplementation(); 
		Dao.projectDao = new ProjectDaoImplementation();
	}
}
