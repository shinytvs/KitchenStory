<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="com.dao.*"%>
<%@page import="com.entity.*"%>
<%@page import="java.util.*"%>
<%-- <% User auth= (User) request.getSession().getAttribute("auth");
if (auth!=null)
{ request.setAttribute("auth",auth);}
OrderDao orderDao  = new OrderDao(DbCon.getConnection());
List<Order> orders = null;
orders = orderDao.userOrders(auth.getId());
%>
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
  <%@include file="/includes/head.jsp"%>
<body>
 <%@include file="/includes/navbaradmin.jsp"%> 
<%-- 					<% out.print(DbCon.getConnection()); %> --%>
		<table class="table table-light">
			<thead>
				<tr>
					<th scope="col">Date</th>
					<th scope="col">Name</th>
					<th scope="col">Category</th>
					<th scope="col">Quantity</th>
					<th scope="col">Price</th>
					<th scope="col">Cancel</th>
				</tr>
			</thead>
			<tbody>
			
			<% ProductDao pd= new ProductDao(DbCon.getConnection());
			OrderDao orderDao  = new OrderDao(DbCon.getConnection());
			List<Product> products = pd.getAllProducts();
			if(!products.isEmpty())
			      {for(Product p:products)
					{int id=p.getId();
			
			List<Order> orders = orderDao.userOrders(id);
			if(orders != null){
				for(Order o:orders){
				%>
					<tr>
						<td><%=o.getDate() %></td>
						<td><%=o.getName() %></td>
						<td><%=o.getCategory() %></td>
						<td><%=o.getQunatity() %></td>
						<td><%=o.getPrice() %></td>
					
						<td><a class="btn btn-sm btn-danger" href="cancel-order?id=<%=o.getOrderId()%>">delete Order</a></td>
					</tr>
				<%}
			}}}
			%>
			
			</tbody>
		</table>
	
	<%@include file="/includes/footer.jsp"%>
</body>
</html>		