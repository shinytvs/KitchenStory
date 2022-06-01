<%@page import="com.dao.*"%>
<%@page import="com.entity.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

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

<%@include file="/includes/navbar.jsp"%> 
<%-- <% out.print(DbCon.getConnection()); %> --%>

	<div class="container">
		<div class="card-header my-3">All Products</div>
		<div class="row">
		<%
		if(!products.isEmpty())
		{ for(Product p:products)
		{
			%>
			<!-- --------------------------------------------------
			<div class="row">
			<div class="col-md-3 my-3">
				<div class="card" style="width: 18rem;">
					<img class="card-img-top" src="product/female-shoes.jpg" alt="Card image cap">
					<img class="card-img-top" src="includes/capcha.jfif" alt="Card image cap"> 	
					<div class="card-body">
					<h5 class="card-title">name</h5>
					-------------------------------------------- -->
			<div class="col-md-3 my-3">
				<div class="card" style="width: 18rem;">

                    <img class="card-img-top" src="<%= p.getImage() %>" alt="Card image cap">
					<!--<img class="card-img-top" src="product/" alt="Card image cap"> 	-->
					<div class="card-body">
					<h5 class="card-title"><%=p.getName() %></h5>
						<h6 class="price">Price: $<%=p.getPrice() %></h6>
						<h6 class="category">Category: <%=p.getCategory() %></h6>
						<div class="mt-3 d-flex justify-content-between">
							<a class="btn btn-dark" href="add-to-cart?id=<%=p.getId()%>">Add to Cart</a> <a
								class="btn btn-primary" href="order-now?quantity=1&id=<%=p.getId()%>">Buy Now</a>
						</div>
					</div>
				</div>
			</div>
					<%}}%> 
					</div>
				</div>
			</div>
			
		</div>
	

	<%@include file="/includes/footer.jsp"%>
</body>
</html>
