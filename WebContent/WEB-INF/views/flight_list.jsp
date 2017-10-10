<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="java.util.List,com.airline.models.Flight, com.airline.models.Pilot"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List of flights</title>
</head>
<body>
	<h1>Following are the flights</h1>
	<table>
		<tr>
			<td>Id</td>
			<td>Destination</td>
			<td>Origin</td>
			<td>Time</td>
			<td>Airplane Id</td>
			<td>Number of Pilots</td>
			<td>Pilot Names</td>
		</tr>

		<%
			List<Flight> fList = (List<Flight>) request.getAttribute("flightList");
			for (Flight flight : fList) {
		%>
		<tr>
			<td><%=flight.getId()%></td>
			<td><%=flight.getDestination()%></td>
			<td><%=flight.getOrigin()%></td>
			<td><%=flight.getTime()%></td>
			<td><%=flight.getAirplan().getId()%></td>
			<td><%=flight.getPilots().size()%></td>
			<td>
				<%
					for (Pilot pilot : flight.getPilots()) {
							if (pilot != null) {
				%> <%=pilot.getFirstName() + " " + pilot.getLastName()%><br> <%
				 			}//if
				 	}//for
				 %>
			</td>
			<td colspan="7">No tickets purchased yet</td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>