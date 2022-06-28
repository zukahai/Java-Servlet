<%
  String s = "aaa";
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">HaiZuka</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="#">Home <%--<span class="sr-only">(current)</span> --%></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="UserServlet">User Manage</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="UploadServlet">Upload</a>
      </li>
     
    </ul>
    <form class="form-inline my-2 my-lg-0  nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Login
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Profile</a>
          <a class="dropdown-item" href="#">Upload</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">${cookie['username'].getValue()}</a>
         </div>
    </form>
  </div>
</nav>