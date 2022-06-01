<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="com.dao.*"%>
<%@page import="com.entity.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
               <%@include file="/includes/head.jsp"%>
<title>E-Commerce Cart</title>
</head>
<body>

                  <%@include file="/includes/navbaradmin.jsp"%> 
<%-- 					<% out.print(DbCon.getConnection()); %> --%>
		<div align="center">
				<table border="1" cellpadding="5">
				<tr>
				   <td colspan="5">
				       <font face="verdana" size="2"><a href="AddPdt.jsp"> Add item</a></font>
				   </td>
				</tr>
				
				
<tr>
<th>Name</th>
<th>Price</th>
<th>Category</th>
<th>Id</th>
<th>Delete</th>
</tr>
<% ProductDao pd= new ProductDao(DbCon.getConnection());
List<Product> products = pd.getAllProducts();
if(!products.isEmpty())
      {for(Product p:products)
		{%>
		<tr>
              <td> <%=p.getName() %>  </td>
						<td><%=p.getPrice() %></td>
			<td><%=p.getCategory() %></td>
					<td>	<%=p.getId()%></td>
					<td><a href="RemovePdt.jsp?pdtid=<%=p.getId()%>">Delete Item</a>
					</tr>
								
						
				
					<%}}%> 
					</table>
					
</div>
	<%@include file="/includes/footer.jsp"%>
</body>
</html>
