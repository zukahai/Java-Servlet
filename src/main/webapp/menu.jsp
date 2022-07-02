<%@page import="com.hai.dao.InformationDao"%>
<%@page import="model.Information"%>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="model.User"%>
<%@page import="com.hai.dao.UserDao"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	String username = "Error";
	String fullname = "";
	
	Cookie[] cookies = request.getCookies();
			
	if (cookies != null) {
		for (Cookie c : cookies) {
			if (c.getName().equals("username"))
				username = c.getValue();
		}
	}
	if (!username.equals("Error")) {
		UserDao userDao = new UserDao();
		User user = userDao.findById(username);
		if (user != null) {
			fullname = user.getFullname();
		}
	}
	
	InformationDao informationDao = new InformationDao();
	Information information = informationDao.findByUsername(username);
	information = (information != null) ? information : new Information();
	
%>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top"> <%-- fixed-top --%>
  <a class="navbar-brand" href="./">HaiZuka</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="./">Home <%--<span class="sr-only">(current)</span> --%></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="UserServlet">User Management</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="UploadServlet">Upload</a>
      </li>
     
    </ul>
    <% if (fullname.length() > 0)  {%>
    <form class="form-inline my-2 my-lg-0  nav-item dropdown">
      <a class="nav-link dropdown-toggle text-success font-weight-bold" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <%= fullname %>
        </a>
        <a href="ProfileServlet?username=<%=username%>">
        	<img
			      src="uploads/<%= information.getUrlavata() %>"
			      class="rounded-circle"
			      style = "vertical-align: middle; width: 35px; height: 35px;"
			      alt="${ information.getUrlavata() }"
			/>
		</a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="ProfileServlet?username=<%=username%>">Profile</a>
          <a class="dropdown-item" href="UploadServlet">Upload</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="LogoutServlet">LogOut</a>
         </div>
    </form>
    <% } else {%>
    	 <form class="form-inline my-2 my-lg-0  nav-item dropdown">
          <a class="dropdown-item active" href="LoginServlet">Login</a>
    	</form>
    <% } %>
  </div>
</nav>