var app = angular.module('myapp', []);
		app.controller(
						'StudentController',
						[
								'$scope',
								'$http',
								function($scope, $http) {
									$http.get('http://localhost:8080/JSonTester/StudentController')
											.success(function(data) {

												$scope.students = data;
												console.log(data);
											});
									
									$scope.add = function(name,batch,marks,city,email,contact){
										
										var student = new Object();
										
										student.name = name;
										student.batch = batch;
										student.marks = marks;
										student.city = city;
										student.email = email;
										student.contact = contact;
										
										$scope.students.push(student);
									}
									
									$scope.deleteStudent = function(student){
										//alert("Deleting = "+student);
										var oldData = $scope.students;
										var newData = [];
										for(i=0;i<oldData.length;i++){
											if(oldData[i].name == student){
												//do nothing
											}else{
												newData.push(oldData[i]);
											}
										}
										$scope.students = newData;
									}
									
									$scope.tableShow = true;
									
									$scope.toggleTable = function(){
										 $scope.tableShow = $scope.tableShow === false ? true: false;
									}

								} ]);