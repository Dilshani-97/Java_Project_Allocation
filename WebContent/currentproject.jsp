<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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


<title>Current Project</title>
</head>
<body>

<div class="container">
  <h2>What we do next?</h2>
  <form action="addproject" method="post" class="needs-validation" novalidate>
    <div class="row">
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
        
         <div class="col">
         <div class="form-group">
      	<label for="No">No:</label>
        <input type="text" class="form-control" id="No" placeholder="Enter Employee No" name="No">
        </div>
        <div class="form-group">
        <label for="projectId">Project title:</label>
        <input type="text" class="form-control" id="projectId" placeholder="Enter Project Id" name="projectId" required>
        <div class="valid-feedback">Valid.</div>
      	<div class="invalid-feedback">Please fill out this field.</div>
        </div>
        <div class="form-group">
        <label for="empId">Project owner(s):</label>
        <input type="text" class="form-control" id="empId" placeholder="Enter Project owners" name="empId" required>
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



</body>
</html>