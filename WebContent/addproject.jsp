<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>

<title>Add Projects</title>
<meta charset="ISO-8859-1">

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


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
			<li class="nav-item active"><a class="nav-link" href="#">SalaryProfileManager</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
		</ul>
		<div class="clockBox">

			<h3>
				<div id="clock"></div>
			</h3>

		</div>
	</nav>

<br><br>
<div class="container-fluid">
  <h2>Project allocation</h2>
 
 <br>
  <div class="row">
    <div class="col">
  	<img class="card-img-top" src="images/completed.jpg" alt="Card image" style="width:100%">
    </div>
    <div class="col">
    	<img class="card-img-top" src="images/current.jpg" alt="Card image" style="width:100%">
    </div>
    <div class="col">
     	<img class="card-img-top" src="images/upcoming.jpeg" alt="Card image" style="width:100%">
    </div>
  </div>
</div>

<br>
<div class="container">
  <ul class="pagination">
    <li class="page-item"><a class="page-link" href="oldprojects.jsp" style="width:300px">  <p style="text-align:center;">Completed Projects</p></a></li>
    <li class="page-item active"><a class="page-link" href="currentproject.jsp" style="width:500px">  <p style="text-align:center;">What we are doing now..</p></a></li>
    <li class="page-item"><a class="page-link" href="newprojects.jsp" style="width:300px">  <p style="text-align:center;">Upcoming Projects</p></a></li>
  </ul>
</div>

<br><br>
<div class="container">
  <h2>What we do next?</h2>
  <form action="addproject" method="post" class="needs-validation" novalidate>
    <div class="row">
      <div class="col">
      	<div class="form-group">
      	<label for="pId">Project ID:</label>
        <input type="text" class="form-control" id="pId" placeholder="Enter Project ID" name="pId" required>
        <div class="valid-feedback">Valid.</div>
      	<div class="invalid-feedback">Please fill out this field.</div>
        </div>
        <div class="form-group">
        <label for="pTitle">Project title:</label>
        <input type="text" class="form-control" id="pTitle" placeholder="Enter Project title" name="pTitle" required>
        <div class="valid-feedback">Valid.</div>
      	<div class="invalid-feedback">Please fill out this field.</div>
        </div>
        <div class="form-group">
        <label for="pOwner">Project owner(s):</label>
        <input type="text" class="form-control" id="pOwner" placeholder="Enter Project owners" name="pOwner" required>
        <div class="valid-feedback">Valid.</div>
        <div class="invalid-feedback">Please fill out this field.</div>
        </div>
        <label for="sDate">Start date:</label>
        <input type="date" class="form-control" id="sDate" placeholder="Enter Start date" name="sDate">
        <label for="eDate">End date:</label>
        <input type="date" class="form-control" id="eDate" placeholder="Enter End date" name="eDate">
        <div class="form-group">
        <label for="dline">Deadline:</label>
        <input type="date" class="form-control" id=" dline"placeholder="Enter Deadline" name="dline" required>
        <div class="valid-feedback">Valid.</div>
        <div class="invalid-feedback">Please fill out this field.</div>
        </div>
        <div class="form-group">
        <label for="tasks">Project tasks:</label>
        <input type="text" class="form-control" id="tasks" placeholder="Enter Project tasks" name="tasks" required>
        <div class="valid-feedback">Valid.</div>
        <div class="invalid-feedback">Please fill out this field.</div>
        </div>
        <label for="crew">Number of crew:</label>
        <input type="text" class="form-control" id="crew" placeholder="Enter Number of crew" name="crew">
        <div class="form-group">
        <label for="ebudget">Estimated budget:</label>
        <input type="text" class="form-control" id="eBudget" placeholder="LKR" name="eBudget" required>
        <div class="valid-feedback">Valid.</div>
        <div class="invalid-feedback">Please fill out this field.</div>
        </div>
        <label for="aBudget">Actual budget:</label>
        <input type="text" class="form-control" id="abudget" placeholder="LKR" name="aBudget">
        <label for="reso">Resources:</label>
        <input type="text" class="form-control" id="reso" placeholder="Enter Resources" name="reso">
        <label for="stat">Status:</label>
        <input type="text" class="form-control" id="stat" placeholder="Enter Status" name="stat">
        <label for="info">Other information:</label>
        <input type="text" class="form-control" id="info" placeholder="Enter other information" name="info">
        <br>
        <div class="form-group form-check">
      	<label class="form-check-label">
        <input class="form-check-input" type="checkbox" name="remember" required> I agree with above project details.
        <div class="valid-feedback">Valid.</div>
        <div class="invalid-feedback">Check this checkbox to continue.</div>
      	</label>
    	</div>    
    	
    	 <button type="submit" class="btn btn-primary mt-3">Submit</button> 
    	<button type="submit" class="btn btn-primary mt-3">Search</button> 
    	<button type="submit" class="btn btn-primary mt-3">Update</button>   
        </div>
        
         <div class="col">
           
  			<div class="card" style="width:550px">
   			<img class="card-img-top" src="images/employee-img1.png" alt="Card image" style="width:30%">
    		<div class="card-body">
      		<h4 class="card-title">John Doe</h4>
      		<p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
      		<a href="#" class="btn btn-info">See Profile</a>
    		</div>
  		</div>
  		<br>
  
  			<div class="card" style="width:550px">
  			<img class="card-img-bottom" src="images/employee-img2.png" alt="Card image" style="width:30%">
    		<div class="card-body">
      		<h4 class="card-title">Mary Jane (HR Manager-Department of human resources)</h4>
      		<p class="card-text">Some example text some example text. Jane Doe is an architect and engineer</p>
      		<a href="#" class="btn btn-info">See Profile</a>
    		</div>
    		
  		</div>
       <br>
    
  		<div class="card" style="width:550px">
   			<img class="card-img-top" src="images/employee-img3.png" alt="Card image" style="width:30%">
    		<div class="card-body">
      		<h4 class="card-title">Tom Cruise</h4>
      		<p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
      		<a href="#" class="btn btn-info">See Profile</a>
    		</div>
  		</div>
  		<br>

      </div>
    </div>
    </form>
    </div>
  
<script>
(function() {
  'use strict';
  window.addEventListener('load', function() {
    
    var forms = document.getElementsByClassName('needs-validation');
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();

</script>

<br><br><br>
</body>
</html>