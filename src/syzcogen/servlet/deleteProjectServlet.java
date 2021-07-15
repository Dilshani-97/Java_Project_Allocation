package syzcogen.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import syzcogen.service.projectService;
import syzcogen.service.projectServiceInterface;

/**
 * Servlet implementation class deleteProjectServlet
 */
@WebServlet("/deleteProjectServlet")
public class deleteProjectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteProjectServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("came: ").append(request.getContextPath());
		response.setContentType("text/html");

		String pId = request.getParameter("projectId");
		
		projectServiceInterface serve = new projectService();
		serve.deleteProject(pId);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/newprojects.jsp");
		dispatcher.forward(request, response);
	}

}
