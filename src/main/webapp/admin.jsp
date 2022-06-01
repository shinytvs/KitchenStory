<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.dao.*"%>
<%@page import="com.entity.*"%>
<%@page import="java.util.*"%>

<% User auth= (User) request.getSession().getAttribute("auth");
if (auth!=null)
{ request.setAttribute("auth",auth);}
ProductDao pd= new ProductDao(DbCon.getConnection());
List<Product> products = pd.getAllProducts();%>

<!DOCTYPE html>
<html>
<head>
<%@include file="/includes/head.jsp"%>
<title>E-Commerce Cart</title>
</head>
<body>

<%@include file="/includes/navbaradmin.jsp"%> 
<% out.print(DbCon.getConnection()); %>

	<div class="container">
		<div class="card-header my-3">All Products</div>
		<div class="row">
		
					

	<%@include file="/includes/footer.jsp"%>
</body>
</html>
