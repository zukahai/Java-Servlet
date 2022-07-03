<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login | HaiZuka</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  </head>
  <body>
  
  	<jsp:include page="menu.jsp"></jsp:include>
  
  	<div class="container mt-4">
  		<div class="row">
  			<div class="col">
  				<div class="alert alert-success">
	  				<h2>Login your account</h2>
	  			</div>
  			</div>
  		</div>
  		<%-- Notyfi --%>
  		<c:if test="${not empty message or not empty error}">
	  		<div class="row">
	    		<div id="myModal" class="modal fade">
				    <div class="modal-dialog">
				        <div class="modal-content">
				            <div class="modal-header">
				                <h5 class="modal-title">Notify</h5>
				                <button type="button" class="close" data-dismiss="modal">&times;</button>
				            </div>
				            <div class="modal-body">
				                <c:if test="${not empty message}">
				    				<div class="alert alert-success">${ message }</div>
				    			</c:if>
				    			<c:if test="${not empty error}">
				    				<div class="alert alert-danger">${ error }</div>
				    			</c:if>
				            </div>
				        </div>
				    </div>
				</div>
	    	</div>
    	</c:if>
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
		    		<button class="btn btn-warning">Login</button>
		    		<a class="btn btn-primary ml-2" href="RegisterServlet">Register</a>
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
  	
  	<script>
	    $(document).ready(function(){
	        $("#myModal").modal('show');
	    });
	</script>
	<jsp:include page="footer.jsp"></jsp:include>
	
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

	
  </body>
</html>