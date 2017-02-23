<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="resources/css/registrationpage.css">
<title>Registration Page</title>

</head>
<body>
	<h1>Registration Page</h1>
	
	<form action="registerPost" method="post" class="form-horizontal" role="form">
    <div class="form-group">
      <label class="control-label col-sm-4" for="firstname">First Name</label>
      <div class="col-sm-4">
        <input type="text" class="form-control" name="firstname" placeholder="Enter FirstName">
      </div>
      <div class="col-sm-4"></div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="lastname">Last Name</label>
      <div class="col-sm-4">
        <input type="text" class="form-control" name="lastname" placeholder="Enter LastName">
      </div>
      <div class="col-sm-4">    </div></div>
      <div class="form-group">
      <label class="control-label col-sm-4" for="dob">Date Of Birth:</label>
      <div class="col-sm-4">
        <input type="text" class="form-control" name="dob" placeholder="Enter your date of Birth(mm/dd/yyyy)">
      </div>
      <div class="col-sm-4">    </div></div>
      <div class="form-group">
      <label class="control-label col-sm-4" for="email">Email</label>
      <div class="col-sm-4">
        <input type="email" class="form-control" name="email" placeholder="Enter Email">
      </div>
      <div class="col-sm-4">    </div>
      </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="pwd">Password:</label>
      <div class="col-sm-4">
        <input type="password" class="form-control" name="pwd" placeholder="Enter password">
      </div>
      <div class="col-sm-4"></div>
      
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="Phone">Phone number:</label>
      <div class="col-sm-4">
        <input type="number" class="form-control" name="phone_number" id="phone" >
      </div>
      <div class="col-sm-4"></div>      
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="Cat">Select category</label>
      <div class="col-sm-4">
       <div class="radio">
  <label><input type="radio" name="cat" value="1">Student</label>
</div>
<div class="radio">
  <label><input type="radio" name="cat" value="2">Customer</label>
</div>
<div class="radio">
  <label><input type="radio" name="cat" value="3">Patient</label>
</div>
      </div>
     <div class="col-sm-4"></div>
    </div>
    <div class="form-group">
      <div class="col-sm-offset-4 col-sm-4">
        <button type="submit" class="btn btn-primary">Register</button>
         
         <a href="loginpage" class="btn btn-primary">Login</a>
      </div>
    </div>
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>
    
	

	
	
	
	
	
	
	

	