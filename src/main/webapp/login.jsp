<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>HaiZuka | Login</title>
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  </head>
  <body>
  
  	<div class="container">
  		<div class="row">
  			<div class="col">
  				<div class="alert alert-success">
	  				<h2>Login your account</h2>
	  			</div>
  			</div>
  		</div>
  		<div class="row">
  			<div class="col">
  				<form action="LoginServlet" method="POST">
		  			<div class="form-group">
		    		 	<label for="username">Username</label>
		    		 	<input type="text" class="form-control" name="username" id="username" value="${ user.username }" />
		    		</div>
		    		<div class="form-group">
		    		 	<label for="password">Password</label>
		    		 	<input type="password" class="form-control" name="password" id="password" />
		    		</div>
		    		<button class="btn btn-primary">Login</button>
	  			</form>
  			</div>
  		</div>
  		<c:if test="${ not empty message}">
  			<div class="row mt-4">
	  			<div class="col">
	  				<div class="alert alert-success">
		  				<h3>${ message }</h3>
		  			</div>
	  			</div>
	  		</div>
  		</c:if>
  		
  		<c:if test="${ not empty error}">
  			<div class="row mt-4">
	  			<div class="col">
	  				<div class="alert alert-danger">
		  				<h3>${ error }</h3>
		  			</div>
	  			</div>
	  		</div>
  		</c:if>
  		
  	</div>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

  </body>
</html>