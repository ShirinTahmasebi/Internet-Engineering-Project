package model;


public class Project {
	String projectId;
	String projectName;
	String adminName;
	String neededSkills;
	String deadline;
	String budget;
	String description;
	
	public Project(){
		setProjectId(Utils.generateUUID());
	}
	
	public Project(String projectName){
		setProjectId(Utils.generateUUID());
		setProjectName(projectName);
	}
	
	
	/**
	 * @return the projectId
	 */
	public String getProjectId() {
		return projectId;
	}
	/**
	 * @return the projectName
	 */
	public String getProjectName() {
		return projectName;
	}
	/**
	 * @return the adminName
	 */
	public String getAdminName() {
		return adminName;
	}
	/**
	 * @return the neededSkills
	 */
	public String getNeededSkills() {
		return neededSkills;
	}
	/**
	 * @return the deadline
	 */
	public String getDeadline() {
		return deadline;
	}
	/**
	 * @return the budget
	 */
	public String getBudget() {
		return budget;
	}
	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}
	/**
	 * @param projectId the projectId to set
	 */
	public void setProjectId(String projectId) {
		this.projectId = projectId;
	}
	/**
	 * @param projectName the projectName to set
	 */
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	/**
	 * @param adminName the adminName to set
	 */
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	/**
	 * @param neededSkills the neededSkills to set
	 */
	public void setNeededSkills(String neededSkills) {
		this.neededSkills = neededSkills;
	}
	/**
	 * @param deadline the deadline to set
	 */
	public void setDeadline(String deadline) {
		this.deadline = deadline;
	}
	/**
	 * @param budget the budget to set
	 */
	public void setBudget(String budget) {
		this.budget = budget;
	}
	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Project [projectId=" + projectId + ", projectName="
				+ projectName + ", adminName=" + adminName + ", neededSkills="
				+ neededSkills + ", deadline=" + deadline + ", budget="
				+ budget + ", description=" + description + ", getProjectId()="
				+ getProjectId() + ", getProjectName()=" + getProjectName()
				+ ", getAdminName()=" + getAdminName() + ", getNeededSkills()="
				+ getNeededSkills() + ", getDeadline()=" + getDeadline()
				+ ", getBudget()=" + getBudget() + ", getDescription()="
				+ getDescription() + "]";
	}
	
	
	
	
}
