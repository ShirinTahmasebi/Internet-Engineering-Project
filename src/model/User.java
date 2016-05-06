package model;

import java.util.HashSet;
import java.util.Set;
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
	Set<Project> createdProject = new HashSet<Project>();
	

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
	 * @return the createdProject
	 */
	public Set<Project> getCreatedProject() {
		return createdProject;
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
	/**
	 * @param createdProject the createdProject to set
	 */
	public void setCreatedProject(Set<Project> createdProject) {
		this.createdProject = createdProject;
	}

	public void addProject(Project project){
		this.createdProject.add(project);
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", email="
				+ email + ", password=" + password + ", gender=" + gender
				+ ", city=" + city + ", birthDate=" + birthDate
				+ ", resumeDescription=" + resumeDescription
				+ ", createdProject=" + createdProject + ", getUserId()="
				+ getUserId() + ", getUserName()=" + getUserName()
				+ ", getEmail()=" + getEmail() + ", getPassword()="
				+ getPassword() + ", getGender()=" + getGender()
				+ ", getCity()=" + getCity() + ", getBirthDate()="
				+ getBirthDate() + ", getResumeDescription()="
				+ getResumeDescription() + ", getCreatedProject()="
				+ getCreatedProject() + "]";
	}


	
	

	
	
	
}
