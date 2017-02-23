<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="resources/css/loginpage.css">
<script type='text/javascript'>
window.history.forward();
    function noBack() {window.history.forward(); }
window.onload='noBack()';
window.onpageshow=function(evt){if(evt.persisted)noBack()}
window.onunload=function(){void(0)} 
</script>
<title>Login Page</title>

</head>
<body>
	<h1>Login Page</h1>
	<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">SurveyTool</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li ><a  href="contactpage">Contact Us</a>
       
      </li>
      
    </ul>
   
  </div>
</nav>  
	
<div class="container">
<form action="loginPost" method="POST">


<div class="row"> 
<div class="col-sm-8"></div>
<div class="col-sm-4" style="margin-top:100px;">
</div>
</div>
<div class="row">
<div class="col-sm-offset-6 col-sm-2">
<div style="color:red;">${errorMsg}</div>
<br>
<label>Email<span class="glyphicon glyphicon-user"></span></label>

<br><br><br>
<label>Password </label>
</div>
<div class="col-sm-4">
<input type="text" name="email" class="form-control" placeholder="Enter email">
<br>
<br>
<input type="password" name="pswd"  class="form-control" placeholder="Enter password">
</div>
</div>
<br>
<br>
<div class="form-group">
      <div class="col-sm-offset-8 col-sm-2">
        <button type="submit" class="btn btn-primary">Login</button>
        </div>
        <div class="col-sm-2">
        <a href="registrationpage" class="btn btn-primary">Signup</a>
        </div>
        </div>
      </form>
      
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>