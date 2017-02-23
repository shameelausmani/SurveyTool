<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="resources/css/deleteQuestions.css">
<title>Delete Questions</title>
</head>
<body>
<h1>Delete Questions </h1>	
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">SurveyTool</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="adminpage">Add Questions</a></li>
      <li><a href="viewQuestions">View Questions</a></li>
      <li class="active"><a href="#">Delete Questions</a></li>
      <li><a href="analyzeResult">Analyze Result</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">      
      <li><a href="loginpage"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>       
    </ul>
  </div>
</nav> 

<div class="container">   
<form action="deleteForm" method="POST">
  <div class="panel-group" id="accordion">
    <div class="panel panel-primary">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Student</a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse in">
        <div class="panel-body">        
        <c:forEach items="${allQuestions}" var="q">
        <c:if test="${q.getCategory()==1}">
        <label>${q.getQuestion()}</label>
        <ul>
        <li>
        <c:choose>
        <c:when test="${q.getSolution1() == q.getAnswer()}">
        <b>${q.getSolution1()}</b>
        </c:when>
        <c:otherwise>
        ${q.getSolution1()}
        </c:otherwise>
        </c:choose>
        </li> 
          
        <li><c:choose>
        <c:when test="${q.getSolution2() == q.getAnswer()}">
        <b>${q.getSolution2()}</b>
        </c:when>
        <c:otherwise>
        ${q.getSolution2()}
        </c:otherwise>
        </c:choose></li>
        <li><c:choose>
        <c:when test="${q.getSolution3() == q.getAnswer()}">
        <b>${q.getSolution3()}</b>
        </c:when>
        <c:otherwise>
        ${q.getSolution3()}
        </c:otherwise>
        </c:choose></li>
        <li><c:choose>
        <c:when test="${q.getSolution4() == q.getAnswer()}">
        <b>${q.getSolution4()}</b>
        </c:when>
        <c:otherwise>
        ${q.getSolution4()}
        </c:otherwise>
        </c:choose>
        <br>
        <button class="btn btn-primary btn-sm" type="submit" name="delete" value="${q.getQuestion_id()}" >Delete</button> 
        </li>
        </ul>
        
        <br/>  
        </c:if>              
        </c:forEach>       
                
        </div>
      </div>
    </div>
    <div class="panel panel-primary">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Customer</a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse">
        <div class="panel-body">
        <c:forEach items="${allQuestions}" var="q">
        <c:if test="${q.getCategory()==2}">
        <label>${q.getQuestion()}</label>
         <ul>
        <li>
        <c:choose>
        <c:when test="${q.getSolution1() == q.getAnswer()}">
        <b>${q.getSolution1()}</b>
        </c:when>
        <c:otherwise>
        ${q.getSolution1()}
        </c:otherwise>
        </c:choose>
        </li>     
        <li><c:choose>
        <c:when test="${q.getSolution2() == q.getAnswer()}">
        <b>${q.getSolution2()}</b>
        </c:when>
        <c:otherwise>
        ${q.getSolution2()}
        </c:otherwise>
        </c:choose></li>
        <li><c:choose>
        <c:when test="${q.getSolution3() == q.getAnswer()}">
        <b>${q.getSolution3()}</b>
        </c:when>
        <c:otherwise>
        ${q.getSolution3()}
        </c:otherwise>
        </c:choose></li>
        <li><c:choose>
        <c:when test="${q.getSolution4() == q.getAnswer()}">
        <b>${q.getSolution4()}</b>
        </c:when>
        <c:otherwise>
        ${q.getSolution4()}
        </c:otherwise>
        </c:choose>
        <br/>
        <button class="btn btn-primary btn-sm" type="submit" name="delete" value="${q.getQuestion_id()}" >Delete</button>
        </li>
        </ul>
        <br/>  
        </c:if>              
        </c:forEach>
        </div>
      </div>
    </div>
    <div class="panel panel-primary">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Patient</a>
        </h4>
      </div>
      <div id="collapse3" class="panel-collapse collapse">
        <div class="panel-body">
        <c:forEach items="${allQuestions}" var="q">
        <c:if test="${q.getCategory()==3}">
        <label>${q.getQuestion()}</label>
         <ul>
        <li>
        <c:choose>
        <c:when test="${q.getSolution1() == q.getAnswer()}">
        <b>${q.getSolution1()}</b>
        </c:when>
        <c:otherwise>
        ${q.getSolution1()}
        </c:otherwise>
        </c:choose>
        </li>     
        <li><c:choose>
        <c:when test="${q.getSolution2() == q.getAnswer()}">
        <b>${q.getSolution2()}</b>
        </c:when>
        <c:otherwise>
        ${q.getSolution2()}
        </c:otherwise>
        </c:choose></li>
        <li><c:choose>
        <c:when test="${q.getSolution3() == q.getAnswer()}">
        <b>${q.getSolution3()}</b>
        </c:when>
        <c:otherwise>
        ${q.getSolution3()}
        </c:otherwise>
        </c:choose></li>
        <li><c:choose>
        <c:when test="${q.getSolution4() == q.getAnswer()}">
        <b>${q.getSolution4()}</b>
        </c:when>
        <c:otherwise>
        ${q.getSolution4()}
        </c:otherwise>
        </c:choose>
        <br/>        
        <button class="btn btn-primary btn-sm" type="submit" name="delete" value="${q.getQuestion_id()}" >Delete</button>
        </li>
        </ul>
        <br/>  
        </c:if>              
        </c:forEach>
        </div>
      </div>
    </div>
  </div>
  </form>
</div>
    


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>