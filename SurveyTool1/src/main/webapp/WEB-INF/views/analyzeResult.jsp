<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="resources/css/analyzeResult.css">
<title>Analyze Result</title>
</head>
<body>
	<h1>Analyze Result</h1>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">SurveyTool</a>
			</div>
			<ul class="nav navbar-nav">
				<li><a href="adminpage">Add Questions</a></li>
				<li><a href="viewQuestions">View Questions</a></li>
				<li><a href="deleteQuestions">Delete Questions</a></li>
				<li class="active"><a href="#">Analyze Result</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="loginpage"><span
						class="glyphicon glyphicon-log-out"></span> Logout</a></li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<h2>Analysis Table</h2>
		<p></p>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>Questions</th>
					<th>Solution1</th>
					<th>Solution2</th>
					<th>Solution3</th>
					<th>Solution4</th>
					<th>Preferred Answer By User</th>
				</tr>
			</thead>
			<tbody>
			<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr class="success">
					<th>Student</th>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<c:forEach items="${allAnswers}" var="result">
					<c:if test="${result.getCatid()==1}">
						<tr>
							<td>${result.getQuestion()}</td>
							<c:forEach items="${result.getSol()}" var="sol" varStatus="count1">
								<td>${result.getOpt().get(count1.index)} - ${sol}</td>
							</c:forEach>
							<td>${result.getAnswer()}</td>
						</tr>
					</c:if>
				</c:forEach>				
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr class="danger">
					<th>Customer</th>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<c:forEach items="${allAnswers}" var="result">
					<c:if test="${result.getCatid()==2}">
						<tr>
							<td>${result.getQuestion()}</td>
							<c:forEach items="${result.getSol()}" var="sol" varStatus="count2">
								<td>${result.getOpt().get(count2.index)} - ${sol}</td>
							</c:forEach>
							<td>${result.getAnswer()}</td>
						</tr>
					</c:if>
				</c:forEach>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr class="info">
					<th>Patient</th>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<c:forEach items="${allAnswers}" var="result">
					<c:if test="${result.getCatid()==3}">
						<tr>
							<td>${result.getQuestion()}</td>
							<c:forEach items="${result.getSol()}" var="sol" varStatus="count3">
								<td>${result.getOpt().get(count3.index)} - ${sol}</td>
							</c:forEach>
							<td>${result.getAnswer()}</td>
						</tr>
					</c:if>
				</c:forEach>
			</tbody>
		</table>
	</div>



	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>