<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Upload | HaiZuka</title>
    <base href="/Servlet/" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  	<script>
	   
	    $(document).ready(function(){
	    	 $('#galleryModal').on('show.bs.modal', function (e) {
	    	       $('#galleryImage').attr("src",$(e.relatedTarget).data("large-src"));
	    	 });
	        $("#myModal").modal('show');
	    });
	</script>
  </head>
  <body>
  	<jsp:include page="menu.jsp"></jsp:include>
  
  	<div class="container mt-4">
  		<div class="row">
  			<div class="alert alert-success">
  				<h2>${ fullname } - Upload Image</h2>
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
  				<form action="UploadServlet/insert" enctype="multipart/form-data" method="post">
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
			  <div class="col-lg-4 mb-lg-0">
			    <img
			      src="uploads/${ image.url }"
			      class="w-100 img-fluid .img-thumbnail img-container mb-2"
			      alt="${ image.url }"
			    />
			    <div class="d-flex justify-content-center mb-4">
				    <a href="#galleryModal" id="view" data-large-src="uploads/${ image.url }" data-toggle="modal">
		                <button class="btn btn btn-warning mr-1">View</button>
		            </a>
					
			  		<button class="btn btn-primary ml-1">Upload</button>
				</div>
			  </div>
  			</c:forEach>
  		</div>
  		
	
		<div id="galleryModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
		    <div class="modal-dialog modal-lg">
		        <div class="modal-content">
		            <div class="modal-header">
		                <h3 class="text-center mb-0"></h3>
		                <button type="button" class="close float-right" aria-label="Close" data-dismiss="modal">
		                  <span aria-hidden="true">&#xD7;</span>
		                </button>
		            </div>
		            <div class="modal-body p-0 text-center bg-alt">
		                <img src="//placehold.it/1200x700/222?text=..." id="galleryImage" class="loaded-image mx-auto img-fluid">
		            </div>
		            <div class="modal-footer">
		                <button class="btn btn-primary" data-dismiss="modal" aria-hidden="true">OK</button>
		            </div>
		        </div>
		    </div>
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
	<jsp:include page="footer.jsp"></jsp:include>
  </body>
</html>