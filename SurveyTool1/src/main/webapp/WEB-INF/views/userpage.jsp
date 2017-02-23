<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="resources/css/userpage.css">
<script type='text/javascript'>
window.history.forward();
    function noBack() {window.history.forward(); }
window.onload='noBack()';
window.onpageshow=function(evt){if(evt.persisted)noBack()}
window.onunload=function(){void(0)} 
</script>

<title>User Page</title>
</head>
<body>

<h1>User Page </h1>	
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      
    </div>
    <ul class="nav navbar-nav">
      
     
       <li><a><span class="glyphicon glyphicon-user"></span></a></li>      
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="loginpage"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
  </div>
</nav>  

<div class="container">
<form action="surveyForm" method="post">
<c:forEach items="${allQuestions}" var="q" varStatus="counter">
    <div class="well well-lg">
    <label>${q.getQuestion()}</label>
       <div class="radio">  <label><input type="radio" name="question-${q.getQuestion_id()}" value="${q.getSolution1()}">${q.getSolution1()}</label></div>
       <div class="radio">  <label><input type="radio" name="question-${q.getQuestion_id()}" value="${q.getSolution2()}">${q.getSolution2()}</label></div>
       <div class="radio">  <label><input type="radio" name="question-${q.getQuestion_id()}" value="${q.getSolution3()}">${q.getSolution3()}</label></div>
       <div class="radio">  <label><input type="radio" name="question-${q.getQuestion_id()}" value="${q.getSolution4()}">${q.getSolution4()}</label></div>
    </div>    
</c:forEach>       
 <input type="hidden" name="email" value="${email}">
 <input type="hidden" name="cat" value="${cat}">
    <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-primary" name="submit">Submit Survey</button>
      </div>
    </div> 
</form>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>