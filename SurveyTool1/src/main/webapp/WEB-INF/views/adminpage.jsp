<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="resources/css/adminpage.css">
<script type='text/javascript'>
window.history.forward();
    function noBack() {window.history.forward(); }
window.onload='noBack()';
window.onpageshow=function(evt){if(evt.persisted)noBack()}
window.onunload=function(){void(0)} 
</script>

<title>Admin Page</title>
</head>
<body>

<h1>Add Questions</h1>	
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">SurveyTool</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Add Questions</a></li>
      <li><a href="viewQuestions">View Questions</a></li>
      <li><a href="deleteQuestions">Delete Questions</a></li>
      <li><a href="analyzeResult">Analyze Result </a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">      
      <li><a href="loginpage"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>       
    </ul>
  </div>
</nav>  
<div class="container">
<form action="adminPost" method="POST" class="form-horizontal" role="form">
    <div class="form-group">
      <label class="control-label col-sm-2" for="Question">Question:</label>
      <div class="col-sm-6">
        <textarea class="form-control" rows="5" name="question" placeholder="Enter new Question"></textarea>
      </div>
     <div class="col-sm-4"></div>
    </div>
    
  <div class="form-group">
      <label class="control-label col-sm-2" for="Option1">Solution 1:</label>
      <div class="col-sm-6">
        <input type= "text" class="form-control" name="sol1" placeholder="Enter option1">
      </div>
     <div class="col-sm-4"></div>
    </div>

<div class="form-group">
      <label class="control-label col-sm-2" for="Option2">Solution 2:</label>
      <div class="col-sm-6">
        <input type= "text" class="form-control" name="sol2" placeholder="Enter option2">
      </div>
     <div class="col-sm-4"></div>
    </div>
<div class="form-group">
      <label class="control-label col-sm-2" for="Option3">Solution 3:</label>
      <div class="col-sm-6">
        <input type= "text" class="form-control" name="sol3" placeholder="Enter option3">
      </div>
     <div class="col-sm-4"></div>
    </div>
<div class="form-group">
      <label class="control-label col-sm-2" for="Option4">Solution 4:</label>
      <div class="col-sm-6">
        <input type= "text" class="form-control" name="sol4" placeholder="Enter option4">
      </div>
     <div class="col-sm-4"></div>
    </div>
    <div class="form-group">
     <label class="control-label col-sm-2">Actual Answer:</label>
     <div class="col-sm-8">
<label class= "col-sm-2 radio-inline" ><input type="radio" name="answer" value="1">Solution 1</label>
<label class= "col-sm-2 radio-inline"><input type="radio" name="answer" value="2">Solution 2</label>
<label class="col-sm-2 radio-inline"><input type="radio" name="answer" value="3">Solution 3</label>
<label class="col-sm-2 radio-inline"><input type="radio" name="answer" value="4">Solution 4</label>
</div>
<div class="col-sm-2">
</div>
</div>
<div class="form-group">
      <label class="control-label col-sm-2" for="Cat">Select category</label>
      <div class="col-sm-6">
       <div class="radio">
  <label><input type="radio" name="optradio" value="1">Student</label>
</div>
<div class="radio">
  <label><input type="radio" name="optradio" value="2">Customer</label>
</div>
<div class="radio">
  <label><input type="radio" name="optradio" value="3">Patient</label>
</div>
      </div>
     <div class="col-sm-4"></div>
    </div>

<div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-primary">Submit</button>
      </div>
    </div>
  </form>
</div>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>