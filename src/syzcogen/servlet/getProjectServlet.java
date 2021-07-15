package syzcogen.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import syzcogen.model.Projects;
import syzcogen.service.projectService;
import syzcogen.service.projectServiceInterface;

/**
 * Servlet implementation class getProjectServlet
 */
@WebServlet("/getProjectServlet")
public class getProjectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public getProjectServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	response.setContentType("text/html");	
		
	String pId = request.getParameter("pId");
	projectServiceInterface serve = new projectService();
	Projects pro = projectServiceInterface.getProjectDetailsById(pId);
	
	request.setAttribute("pro", pro);
	RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("newprojects.jsp");
	dispatcher.forward(request, response);
	
	}

}
