package syzcogen.service;

import java.util.ArrayList;

import syzcogen.model.Projects;

public interface projectServiceInterface {

	boolean addproject(Projects pro);

	public ArrayList<Projects> getProjectDetails();
	
	public static Projects getProjectDetailsById(String pId) {
		// TODO Auto-generated method stub
		return null;
	}

	boolean deleteProject(String pId);


}
