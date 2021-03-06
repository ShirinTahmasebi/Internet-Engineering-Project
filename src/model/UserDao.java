package model;

import java.util.List;

public interface UserDao {

	   public List<User> getAllUsers();
	   public User getUser(User user);
	   public User getUser(String userName);
	   public User getCurrentUser();
	   public void addUser(User user);
	   public void updateUser(User user);
	   public void deleteUser(User user);
	   public void initializeUserList();
	   public String getGenderString(int genderCode);
	
}
