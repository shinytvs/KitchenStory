<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">KitchenStory</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <!-- <ul class="navbar-nav me-auto mb-2 mb-lg-0"> -->
        <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li>
      <li class="nav-item"><a class="nav-link" href="cart.jsp">cart</a></li>
        <% if(auth!=null){%>
          
        	 <li class="nav-item"><a class="nav-link" href="orders.jsp">orders</a></li>
             <li class="nav-item"><a class="nav-link" href="log-out">logout</a></li>
       <%  }else {%>
        <li class="nav-item"><a class="nav-link" href="login.jsp">login</a></li>
        	
        	
        	
        	<% }%>
         
             
       
      </ul>
      
    </div>
  </div>
</nav>
</body>
</html>