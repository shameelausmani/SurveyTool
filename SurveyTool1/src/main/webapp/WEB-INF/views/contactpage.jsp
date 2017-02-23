<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/contactpage.css">
<title>Contact Page</title>

</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">SurveyTool</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="">Home</a></li>
      <li  class="active"><a href="#">Contact Us</a>       
      </li>      
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="registrationpage"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="loginpage"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
       <li><a href="#"><span class="glyphicon glyphicon-search"></span> Search</a></li>
    </ul>
  </div>
</nav>  

<div class="container">
<h1>Contact Us</h1>
<div id="nav">
<h4>Shameela Usmani<br>
shameelausmani@gmail.com
contactno-3213550566<br>
Florida</h4>
</div>

<div id="section">

 <form class="form-horizontal"  role="form" action="contactPost" method="post">
    <div class="form-group">
      <label class="control-label col-sm-4" for="yourname">Your Name</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="yourname" name="name" placeholder="Enter name">
        </div>
        
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="email">Email:</label>
      <div class="col-sm-8">
        <input type="email" class="form-control" id="email" name="email" placeholder="Enter email">
      </div>
      
    </div>
<div class="form-group">
      <label class="control-label col-sm-4" for="message">Message</label>
      <div class="col-sm-8">
        <textarea class="form-control" rows="5" name="message" placeholder="Enter new Message"></textarea>
        <br>
      </div>
      </div>
     
    
    <div class="form-group">
      <div class="col-sm-offset-8 col-sm-4">
    <input type="submit" name="submit" value="send">
      </div>
    </div>
  </form>
</div>

</div>


 
  
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>