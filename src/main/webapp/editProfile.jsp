<%@page import="com.hai.dao.InformationDao"%>
<%@page import="com.hai.model.Information"%>
<%@page import="com.hai.model.User"%>
<%@page import="com.hai.dao.UserDao"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	String username = "Error";
	User user = new User();
	Information information = new Information();
	Cookie[] cookies = request.getCookies();
			
	if (cookies != null) {
		for (Cookie c : cookies) {
			if (c.getName().equals("username"))
				username = c.getValue();
		}
	}
	if (!username.equals("Error")) {
		UserDao userDao = new UserDao();
		InformationDao informationDao = new InformationDao();
		
		user = userDao.findById(username);
		user = (user != null ? user : new User());
		information = informationDao.findByUsername(username);
		information = (information != null ? information : new Information());
	}
	
%>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Edit | HaiZuka</title>
    <base href="/Servlet/">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
   	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  </head>
  <body>
  	<jsp:include page="menu.jsp"></jsp:include>
    <div class="container mt-4">
    	<div class="row d-flex justify-content-center">
  			<div class="alert alert-success">
  				<h4>Edit profile</h4>
  			</div>
  		</div>
    	<div class="row">
    		<div class="col">
    			<c:if test="${not empty message}">
    				<div class="alert alert-success">${ message }</div>
    			</c:if>
    			<c:if test="${not empty error}">
    				<div class="alert alert-danger">${ error }</div>
    			</c:if>
    		</div>
    	</div>
	    <div class="row">
	    	<div class="col">
	    		<form action="ProfileServlet/update" enctype="multipart/form-data" method="post">
	    			<div class="custom-file mb-4">
  						<label for="image" class="custom-file-label">Image</label>
  						<input type="file" class="custom-file-input" id="image" name="image" />
  					</div>
	    			<div class="form-group">
		    		 	<label for="username">Username</label>
		    		 	<input type="text" class="form-control" name="username" id="username" value="<%= user.getUsername() %>" readonly/>
		    		</div>
		    		<div class="form-group">
		    		 	<label for="password">Password</label>
		    		 	<input type="password" class="form-control" name="password" id="password" />
		    		</div>
		    		<div class="form-group">
		    		 	<label for="fullname">Fullname</label>
		    		 	<input type="text" class="form-control" name="fullname" id="fullname" value="<%= user.getFullname() %>"/>
		    		</div>
		    		<div class="form-group">
		    		 	<label for="age">Age</label>
		    		 	<input type="text" class="form-control" name="age" id="age" value="<%= user.getAge() %>"/>
		    		</div>
		    		<div class="form-group">
		    		 	<label for="fullname">Email</label>
		    		 	<input type="text" class="form-control" name="email" id="email" value="<%= information.getEmail() %>"/>
		    		</div>
		    		<div class="form-group mt-3 d-flex justify-content-center">
		    		 	<button class="btn btn-warning mx-2" formaction="ProfileServlet/update">Update</button>
		    		 	<a class="btn btn-primary mx-2" href="ProfileServlet?username=<%= user.getUsername() %>" >Cancel</a>
		    		</div>
	    		</form>
	    	</div>
	    </div>
	 </div>
	 <script>
	// Add the following code if you want the name of the file appear on select
		$(".custom-file-input").on("change", function() {
		  var fileName = $(this).val().split("\\").pop();
		  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
		});
	</script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <jsp:include page="footer.jsp"></jsp:include>
  </body>
</html>