<%@page import="java.util.Calendar"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.sun.net.httpserver.Authenticator.Result"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="syzcogen.util.DBConnectionUtil"%>
<%@page import="syzcogen.model.Projects" %>
<%@page import="syzcogen.service.projectService" %>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Upcoming Projects</title>
</head>
<body>

<br><br><br>

<div class="container">
          <form action="deleteProjectServlet" method="post">
  <div class="table-responsive">
    <table class="table table-bordered">
	
      <thead>
        <tr>
          <th>Project ID</th>
          <th>Project Title</th>
          <th>Project Owner(s)</th>
          <th>Start Date</th>
          <th>End Date</th>
          <th>Deadline</th>
          <th>Project Tasks</th>
          <th>No of Crew</th>
          <th>Estimated Budget</th>
          <th>Actual Budget</th>
          <th>Resources</th>
          <th>Status</th>
          <th>Other Information</th>
          <th></th>
        </tr>
      </thead>
      <tbody>
      <% 
     	projectService serve = new projectService();
    	ArrayList<Projects> arraylist = serve.getProjectDetails();
      
     	for(Projects pro : arraylist){
    %>
      
        <tr>
          <td><%=pro.getpId() %></td>
          <td><%=pro.getpTitle() %></td>
          <td><%=pro.getpOwner() %></td>
          <td><%=pro.getsDate() %></td>
          <td><%=pro.geteDate() %></td>
          <td><%=pro.getDline() %></td>
          <td><%=pro.getTasks() %></td>
          <td><%=pro.getCrew() %></td>
          <td><%=pro.geteBudget() %></td>
          <td><%=pro.getaBudget() %></td>
          <td><%=pro.getReso() %></td>
          <td><%=pro.getStat() %></td>
          <td><%=pro.getInfo() %></td>
          <td><input type="submit" value="<%=pro.getpId() %>" name="Delete"></td>
        </tr>
        <%
      		}
        %>
        
        
        
      </tbody>
     
    </table>
  </div>
          </form>
</div>

</body>
</html>