<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html  PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="myapp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="container" ng-controller="StudentController">
		<h3>AngularJS Demo Application</h3>
		<hr/>
		<div class="row well">
			<table class="table table-hover table-striped table-bordered">
				<tr>
					<td class="col-md-1">Name</td>
					<td class="col-md-1"><input type="text" ng-model="name"/></td>
					<td class="col-md-1">Batch</td>
					<td class="col-md-2"><input type="text" ng-model="batch"/></td>
				</tr>
				
				<tr>
					<td>Marks</td>
					<td><input type="text" ng-model="marks"/></td>
					<td>City</td>
					<td><input type="text" ng-model="city"/></td>
				</tr>
			
				<tr>
					<td>Email</td>
					<td><input type="text" ng-model="email"/></td>
					<td>Contact</td>
					<td><input type="text" ng-model="contact"/></td>
				</tr>
				
			</table>
			<button class="btn btn-success btn-sm" ng-click="add(name,batch,marks,city,email,contact)">Add new Student</button>
			<button class="btn btn-danger btn-sm" ng-click="toggleTable()">Toggle Table</button>
		</div>

		Search : <input type="text" ng-model="searchTerm" /> <br /> <br />
		<table class="table table-hover table-striped table-bordered" ng-show="tableShow">
			<tr ng-repeat="student in students|filter: searchTerm">
				<td>{{student.name}}</td>
				<td>{{student.batch}}</td>
				<td>{{student.marks}}</td>
				<td>{{student.city}}</td>
				<td>{{student.email}}</td>
				<td>{{student.contact}}</td>
				<td><button class="btn btn-danger btn-xs" ng-click="deleteStudent(student.name)">Delete</button></td>
			</tr>
		</table>

	</div>




	<script src="script.js"></script>
</body>
</html>