package syzcogen.servlet;

import java.io.IOException;
import java.sql.Date;

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
 * Servlet implementation class addProjectServlet
 */
@WebServlet("/addProjectServlet")
public class addProjectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addProjectServlet() {
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
		
		String pId = request.getParameter("pId");
		String pTitle = request.getParameter("pTitle");
		String pOwner = request.getParameter("pOwner");
		String startDate = request.getParameter("sDate");
		String endDate = request.getParameter("eDate");
		String deadline = request.getParameter("dline");
		String tasks = request.getParameter("tasks");
		String crewNo = request.getParameter("crew");
		String esBudget = request.getParameter("eBudget");
		String acBudget = request.getParameter("aBudget");
		String reso = request.getParameter("reso");
		String stat = request.getParameter("stat");
		String info = request.getParameter("info");
		
		Date sDate = Date.valueOf(startDate);
		Date eDate = Date.valueOf(endDate);
		Date dline = Date.valueOf(deadline);
		
		int crew=Integer.parseInt(crewNo); 
		double eBudget=Double.parseDouble(esBudget); 
		double aBudget=Double.parseDouble(acBudget); 
		
		Projects pro = new Projects (pId,pTitle,pOwner,sDate,eDate,dline,tasks,crew,eBudget,aBudget,reso,stat,info);
		
		boolean success = false;
		
		projectServiceInterface serve = new projectService();
		
		try {
			success = serve.addproject(pro);
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	
		if(success == true) {
			RequestDispatcher dis = request.getRequestDispatcher("newprojects.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("addproject.jsp");
			dis2.forward(request, response);
		}
	
	}

}
