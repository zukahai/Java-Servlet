<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>User Manager</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
  </head>
  <body>
    <main class="container">
	    <div class="row">
	    	<div class="col">
	    		<form action="UserServlet" method="post">
	    			<div class="form-group">
		    		 	<label for="username">Username</label>
		    		 	<input type="text" class="form-control" name="username" id="username" />
		    		</div>
		    		<div class="form-group">
		    		 	<label for="password">Password</label>
		    		 	<input type="text" class="form-control" name=""password"" id=""password"" />
		    		</div>
		    		<div class="form-group">
		    		 	<label for="fullname">Fullname</label>
		    		 	<input type="text" class="form-control" name="fullname" id="fullname" />
		    		</div>
		    		<div class="form-group">
		    		 	<label for="age">Age</label>
		    		 	<input type="text" class="form-control" name="age" id="age" />
		    		</div>
		    		<div class="form-group mt-3">
		    		 	<button class="btn btn-primary" formaction="UserServlet/insert">Insert</button>
		    		 	<button class="btn btn-warning" formaction="UserServlet/update">Update</button>
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
	    				<td>Username</td>
	    				<td>Fullname</td>
	    				<td>Age</td>
	    				<td>&nbsp;</td>
	    			</tr>
	    			<tr>
	    				<td></td>
	    				<td></td>
	    				<td></td>
	    				<td></td>
	    			</tr>
	    		</table>
	    	</div>
	    </div>
    </main>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
  </body>
</html>