package model;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public class User {

	String userId;
	String userName;
	String email;
	String password;
	int gender; // 1 -> female, 2 -> male, 0 -> not defined
	String city;
	String birthDate;
	String resumeDescription;
	static List<User> users = new ArrayList<User>();

	public User(String userName, String password)
	{
		setUserId(UUID.randomUUID().toString());
		setUserName(userName);
		setPassword(password);
	}
	

	User(String userId, String userName, String password, String email)
	{
		setUserId(userId);
		setUserName(userName);
		setPassword(password);
		setEmail(email);
	}
	
	/**
	 * @return the userId
	 */
	public String getUserId() {
		return userId;
	}
	/**
	 * @return the userName
	 */
	public String getUserName() {
		return userName;
	}
	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * @return the gender
	 */
	public int getGender() {
		return gender;
	}
	/**
	 * @return the city
	 */
	public String getCity() {
		return city;
	}
	/**
	 * @return the birthDate
	 */
	public String getBirthDate() {
		return birthDate;
	}
	/**
	 * @return the resumeDescription
	 */
	public String getResumeDescription() {
		return resumeDescription;
	}
	/**
	 * @param userId the userId to set
	 */
	public void setUserId(String userId) {
		this.userId = userId;
	}
	/**
	 * @param userName the userName to set
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	/**
	 * @param gender the gender to set
	 */
	public void setGender(int gender) {
		this.gender = gender;
	}
	/**
	 * @param city the city to set
	 */
	public void setCity(String city) {
		this.city = city;
	}
	/**
	 * @param birthDate the birthDate to set
	 */
	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}
	/**
	 * @param resumeDescription the resumeDescription to set
	 */
	public void setResumeDescription(String resumeDescription) {
		this.resumeDescription = resumeDescription;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "User [userName=" + userName + ", email=" + email
				+ ", password=" + password + "]";
	}
	
	public static void setUserList(){
		for (int i = 0; i < 10; i++) {
			users.add(new User(UUID.randomUUID().toString(), "user" + i, i + "", i + "@gmail.com"));
		}	
	}
	
	public static List<User> getUserList(){
		return users;
	}

	public static void addUser(User user){
		users.add(user);
	}
	
	public boolean equals(User user){
		if(this.userId.equals(user.userId))
			return true;
		return false;	
	}
	

	public boolean contains(){
		for (User user : users) {
			if(this.userName.equals(user.userName) && this.password.equals(user.password))
				return true;
		}

		return false;	
	}
	
	
	
}
