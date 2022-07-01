<%@page import="model.User"%>
<%@page import="com.hai.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%
	UserDao userDao = new UserDao();
	User user = userDao.findById(request.getParameter("username"));
	if (user == null)
		user = new User();

%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title><%= user.getFullname() %> | HaiZuka</title>
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body class="bg-black">
	<jsp:include page="menu.jsp"></jsp:include>
	<section class="h-100 gradient-custom-2">
	  <div class="container py-5 h-100">
	    <div class="row d-flex justify-content-center align-items-center h-100">
	      <div class="col col-lg-9 col-xl-7" style="background-color: #000">
	        <div class="card">
	          <div class="rounded-top text-white d-flex flex-row" style="background-color: #000; height:200px;">
	            <div class="ms-4 mt-1 ml-3 d-flex flex-column" style="width: 150px;">
	              <img src="https://scontent.fdad2-1.fna.fbcdn.net/v/t39.30808-6/286299148_1397109327438665_8021210654497368906_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=jv2ThommeV0AX8CI9zm&_nc_ht=scontent.fdad2-1.fna&oh=00_AT8OGz37U2VEHZbb3N5v2glsRwW8q8kJi7GTdmbcgorjbA&oe=62C3CC08"
	                alt="Generic placeholder image" class="img-fluid img-thumbnail mt-4 mb-2">
	              <button type="button" class="btn btn-outline-dark mt-5" data-mdb-ripple-color="dark"
	                style="z-index: 1;">
	                Edit profile
	              </button>
	            </div>
	            <div class="ms-3" style="margin-top: 130px;">
	              <h5 class="ml-3"><%= user.getFullname() %></h5>
	              <p class="ml-3">Age: <%= user.getAge() %></p>
	            </div>
	          </div>
	          <div class="p-4 text-black" style="background-color: #f8f9fa;">
	            <div class="d-flex justify-content-end text-center py-1">
	              <div>
	                <p class="mb-1 h5">253</p>
	                <p class="small text-muted mb-0">Photos</p>
	              </div>
	              <div class="px-3">
	                <p class="mb-1 h5">1026</p>
	                <p class="small text-muted mb-0">Followers</p>
	              </div>
	              <div>
	                <p class="mb-1 h5">478</p>
	                <p class="small text-muted mb-0">Following</p>
	              </div>
	            </div>
	          </div>
	          <div class="card-body p-4 text-black">
	            <div class="mb-5">
	              <p class="lead fw-normal mb-1">About</p>
	              <div class="p-4" style="background-color: #f8f9fa;">
	                <p class="font-italic mb-1">Web Developer</p>
	                <p class="font-italic mb-1">Lives in New York</p>
	                <p class="font-italic mb-0">Photographer</p>
	              </div>
	            </div>
	            <div class="d-flex justify-content-between align-items-center mb-4">
	              <p class="lead fw-normal mb-0">Recent photos</p>
	              <p class="mb-0"><a href="#!" class="text-muted">Show all</a></p>
	            </div>
	            <div class="row g-2">
	              <div class="col mb-2">
	                <img src="https://mdbcdn.b-cdn.net/img/Photos/Lightbox/Original/img%20(112).webp"
	                  alt="image 1" class="w-100 rounded-3">
	              </div>
	              <div class="col mb-2">
	                <img src="https://mdbcdn.b-cdn.net/img/Photos/Lightbox/Original/img%20(107).webp"
	                  alt="image 1" class="w-100 rounded-3">
	              </div>
	            </div>
	            <div class="row g-2">
	              <div class="col">
	                <img src="https://mdbcdn.b-cdn.net/img/Photos/Lightbox/Original/img%20(108).webp"
	                  alt="image 1" class="w-100 rounded-3">
	              </div>
	              <div class="col">
	                <img src="https://mdbcdn.b-cdn.net/img/Photos/Lightbox/Original/img%20(114).webp"
	                  alt="image 1" class="w-100 rounded-3">
	              </div>
	            </div>
	          </div>
	        </div>
	      </div>
	    </div>
	  </div>
	</section>
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>