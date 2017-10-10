<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.airline.models.Passenger"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Passengers List</h1>
	<table>
		<thead>
			<tr>
				<td>Id</td>
				<td>First Name</td>
				<td>Last Name</td>
				<td>DoB</td>
				<td>Gender</td>
			</tr>
		</thead>
		<tbody>
				<%
					List<Passenger> pList = (List<Passenger>) request.getAttribute("passengers");
					for (Passenger passenger : pList) {
				%>
				<tr>
				<td><%=passenger.getId() %></td>
				<td><%=passenger.getFirstName()%></td>
				<td><%=passenger.getLastName()%></td>
				<td><%=passenger.getDob()%></td>
				<td><%=passenger.getGender()%></td>
				<td colspan="4">No tickets purchased</td>
				</tr>
				<%
					}
				%>
		</tbody>
	</table>
</body>
</html>