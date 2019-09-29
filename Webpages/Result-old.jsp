<html>
<head>
	<title>Airline Results</title>
</head>
<body>
	<h1>Search Results</h1>
	<%@ page import = "java.sql.*" %>
	
	<%	

		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","homeuser","silas");
		Statement stmt = conn.createStatement();
		String sql = "SELECT a1.AL_NAME, a2.AIRCRAFT_CODE, r.SOURCE, r.DESTINATION, a2.ARRIVAL, a2.DEPARTURE, a2.DURATION1, a2.AIRCRAFTTYPE, a2.LAYOVER_TIME, a2.NO_OF_STOPS FROM AIRLINE a1, AIRCRAFT a2, ROUTE r WHERE a1.AIRLINEID = a2.AIRLINEID AND a2.R_NO = r.R_NO";


		ResultSet rs = stmt.executeQuery(sql);
		try
		{
			if(rs!=null)
			{
				%>
				<table border = 1 cellpadding = 5>
					<tr>
						<td>Airline</td>
						<td>Aircraft Code</td>
						<td>Source</td>
						<td>Destination</td>
						<td>Arrival Time</td>
						<td>Departure Time</td>
						<td>Duration</td>
						<td>Aircraft Type</td>
						<td>Layover Time (Hrs)</td>
						<td>Number of Stops</td>
					</tr>
				<%

				while(rs.next())
				{
					%>
					<tr>
						<td><%=rs.getString("AL_NAME")%></td>
						<td><%=rs.getString("AIRCRAFT_CODE")%></td>
						<td><%=rs.getString("SOURCE")%></td>
						<td><%=rs.getString("DESTINATION")%></td>
						<td><%=rs.getString("ARRIVAL")%></td>
						<td><%=rs.getString("DEPARTURE")%></td>
						<td><%=rs.getString("DURATION1")%></td>
						<td><%=rs.getString("AIRCRAFTTYPE")%></td>
						<td><%=rs.getString("LAYOVER_TIME")%></td>
						<td><%=rs.getString("NO_OF_STOPS")%></td>
					</tr>
					<%
				}
			}
		}

		catch(SQLException e)
		{
			e.printStackTrace();
		}

		stmt.close();
		rs.close();
		conn.close();
		stmt=null;
		rs=null;
		conn=null;
		%>
	</table>
</body>
		
</html>