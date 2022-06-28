<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Upload</title>
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  </head>
  <body>
  
  	<div class="container">
  		<div class="row">
  			<div class="alert alert-success">
  				<h2>${ fullname } - Upload Image</h2>
  			</div>
  		</div>
  		<div class="row">
  			<div class="col">
  				<form action="UploadServlet" enctype="multipart/form-data" method="post">
  					<div class="custom-file mb-4">
  						<label for="image" class="custom-file-label">Image</label>
  						<input type="file" class="custom-file-input" id="image" name="image" />
  					</div>
  					<%-- 
  					<div class="custom-file mb-4">
  						<label for="document" class="custom-file-label">Document</label>
  						<input type="file" class="custom-file-input" id="document" name="document" />
  					</div>
  					--%>
  					<button class="btn btn-primary">Upload</button>
  				</form>
  			</div>
  		</div>
  		<hr>
  		<div class="row mt-3">
  			<c:forEach var="image" items="${ Images }"> 
			  <div class="col-lg-4 mb-4 mb-lg-0">
			    <img
			      src="uploads/${ image.url }"
			      class="w-100 shadow-1-strong rounded mb-4"
			      alt="Waves at Sea"
			    />
			  </div>
  			</c:forEach>
  		</div>
  	</div>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
   
	<script>
	// Add the following code if you want the name of the file appear on select
		$(".custom-file-input").on("change", function() {
		  var fileName = $(this).val().split("\\").pop();
		  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
		});
	</script>
  </body>
</html>