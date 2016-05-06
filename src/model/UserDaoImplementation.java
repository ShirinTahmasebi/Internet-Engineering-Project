package model;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import utils.Tag;

import controller.LoginController;

public class UserDaoImplementation implements UserDao {

	static List<User> users = new ArrayList<User>();
	public List<User> getAllUsers() {
		return users;
	}

	//b jaye methode contains() k ghablen estefade mishod az in estefade mikonam
	//agar null bood yani nist to db agaram bood k khode usero mide
	public User getUser(User user) {
		for (User tUser : users) {
			if (tUser.userName.equals(user.getUserName()) && tUser.getPassword().equals(user.getPassword())) {
				return tUser;
			}
		}
		return null;
	}
	
	
	
	public User getUser(String userName) {
		for (User tUser : users) {
			if (tUser.getUserName().equals(userName)) {
				return tUser;
			}
		}
		return null;
	}

	public void addUser(User user) {
		users.add(user);
	}

	public void updateUser(User user) {
		for (User deletedUser : users) {
			if (deletedUser.getUserName().equals(user.getUserName())) {
				users.remove(deletedUser);
			}
		}
		users.add(user);
		
	}

	public void deleteUser(User user) {
		users.remove(user);
		
	}
	
	public void initializeUserList(){
		for (int i = 0; i < 10; i++) {
			users.add(new User(UUID.randomUUID().toString(), "user" + i, i + "", i + "@gmail.com"));
		}	
	}

	public User getCurrentUser() {
		User user = (User) LoginController.session.getAttribute(Tag.USER);
		return getUser(user);
	}
	
}
