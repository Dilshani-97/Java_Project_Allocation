<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="DataTables/datatables.min.css" rel="stylesheet"
	type="text/css">
<link href="DataTables/css/dataTables.jqueryui.min.css" rel="stylesheet"
	type="text/css">
<link href="css/salaryProfileList.css" rel="stylesheet" type="text/css">
<script src="js/bootstrap.min.js" ></script>
<script src="js/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/realtimeClock.js"></script>
<script src="js/bootstrap.min.js" ></script>	
	<script src="js/jquery.min.js"></script>
	<script type="text/javascript" src="DataTables/datatables.min.js"></script>


</head>
<body onload="realTimeClock();">
	<%
		String name = (String) session.getAttribute("s_username");
		
	if (name == null)
		response.sendRedirect("../index.jsp");
	%>

	<div class="row">
		<div class="col-sm-4">

			<img alt="logo" src="images/syzcogen.png">

		</div>
		<div class="col-sm-8">

			<div class="detailBox">

				<h4>
					<b>Emp ID: </b> ${s_username}
				</h4>
				<br>
				<button id="logout" class="btn btn-primary">
					<a href="${pageContext.request.contextPath}/view/logout.jsp">Log
						Out</a>
				</button>


			</div>

		</div>
	</div>







	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<ul class="navbar-nav">
			<li class="nav-item active"><a class="nav-link" href="#">SalaryProfile
					Manager</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
		</ul>
		<div class="clockBox">

			<h3>
				<div id="clock"></div>
			</h3>

		</div>
	</nav>

</body>
</html>