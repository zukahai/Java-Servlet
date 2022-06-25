<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>User Manager</title>
    <base href="/Servlet/" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
  </head>
  <body>
    <main class="container">
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
	    		<form action="UserServlet" method="post">
	    			<div class="form-group">
		    		 	<label for="username">Username</label>
		    		 	<input type="text" class="form-control" name="username" id="username" value="${ user.username }" />
		    		</div>
		    		<div class="form-group">
		    		 	<label for="password">Password</label>
		    		 	<input type="password" class="form-control" name="password" id="password" />
		    		</div>
		    		<div class="form-group">
		    		 	<label for="fullname">Fullname</label>
		    		 	<input type="text" class="form-control" name="fullname" id="fullname" value="${ user.fullname }"/>
		    		</div>
		    		<div class="form-group">
		    		 	<label for="age">Age</label>
		    		 	<input type="text" class="form-control" name="age" id="age" value="${ user.age }"/>
		    		</div>
		    		<div class="form-group mt-3">
		    		 	<button class="btn btn-primary ml-2" formaction="UserServlet/insert">Insert</button>
		    		 	<button class="btn btn-warning ml-2" formaction="UserServlet/update">Update</button>
		    		 	<button class="btn btn-danger" formaction="UserServlet/delete">Delete</button>
		    		 	<button class="btn btn-info" formaction="UserServlet/reset">Reset</button>
		    		</div>
	    		</form>
	    	</div>
	    </div>
	    <div class="row">
	    	<div class="col">
	    		<table class="table table-stripe">
	    			<tr>
	    				<th>Username</th>
	    				<th>Fullname</th>
	    				<th>Age</th>
	    				<th>&nbsp;</th>
	    			</tr>
	    			<c:forEach var="item" items="${ users }">
	    			<tr>
	    				<td>${ item.username }</td>
	    				<td>${ item.fullname }</td>
	    				<td>${ item.age }</td>
	    				<td>
	    					<a href="UserServlet/edit?username=${ item.username }">Edit</a>
	    					<a href="UserServlet/delete?username=${ item.username }">Delete</a>
	    				</td>
	    			</tr>
	    			</c:forEach>
	    		</table>
	    	</div>
	    </div>
    </main>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
  </body>
</html>