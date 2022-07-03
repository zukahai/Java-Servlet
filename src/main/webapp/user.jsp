<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>User Management | HaiZuka</title>
    <base href="/Servlet/" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  </head>
  <body>
  	<jsp:include page="menu.jsp"></jsp:include>
    <div class="container mt-4">
    	<div class="row d-flex justify-content-center">
  			<div class="alert alert-success">
  				<h4>User manager</h4>
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
		    		<div class="form-group mt-3 d-flex justify-content-center">
		    		 	<button class="btn btn-primary mx-2" formaction="UserServlet/insert">Insert</button>
		    		 	<button class="btn btn-warning mx-2" formaction="UserServlet/update">Update</button>
		    		 	<button class="btn btn-danger mx-2" formaction="UserServlet/delete">Delete</button>
		    		 	<button class="btn btn-info mx-2" formaction="UserServlet/reset">Reset</button>
		    		</div>
	    		</form>
	    	</div>
	    </div>
	    <div class="row">
	    	<div class="col">
	    		<hr>
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
	    <hr>
	    <div class="row">
	    	<nav aria-label="...">
			  <ul class="pagination">
			  <c:if test="${page > 1}">
			  	<li class="page-item">
			      <a class="page-link" href="UserServlet?page=${ page - 1 }">Previous</a>
			    </li>
			    <li class="page-item"><a class="page-link" href="UserServlet?page=${ page - 1 }">${ page - 1}</a></li>
			   </c:if>
			    
			    <li class="page-item active">
			      <span class="page-link">${ page }</span>
			    </li>
			    
			    <c:if test="${page < numberofpage}">
			    	<li class="page-item">
			    		<a class="page-link" href="UserServlet?page=${ page + 1 }">${ page + 1 }</a>
			    	</li>
			    	<li class="page-item"><a class="page-link" href="UserServlet?page=${ page + 1 }">Next</a></li>
			    </c:if>
			  </ul>
			</nav>
	    </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  	<jsp:include page="footer.jsp"></jsp:include>
  </body>
</html>