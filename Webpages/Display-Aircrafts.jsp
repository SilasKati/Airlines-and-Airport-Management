<html>
<head>
	<title>Airline Results</title>
</head>
<body>
	<h1>Data Inserted Successfully</h1>
	<br><br>
	<%@ page import = "java.sql.*" %>
	
	<%	

		String a_code = request.getParameter("a_code");
		String r_no = request.getParameter("r_no");
		String arrival = request.getParameter("arrival");
		String departure = request.getParameter("departure");
		String status = request.getParameter("status");
		String duration = request.getParameter("duration");
		String a_type = request.getParameter("a_type");
		String layover_time = request.getParameter("layover_time");
		String stops = request.getParameter("stops");
		String model = request.getParameter("model");
		String a_id = request.getParameter("a_id");


		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","homeuser","silas");
		Statement stmt = conn.createStatement();

		stmt.executeUpdate("INSERT INTO AIRCRAFT(AIRCRAFT_CODE, R_NO, ARRIVAL, DEPARTURE, STATUS, DURATION1, AIRCRAFTTYPE, LAYOVER_TIME, NO_OF_STOPS, MODEL1, AIRLINEID) VALUES('"+a_code+"','"+r_no+"','"+arrival+"','"+departure+"','"+status+"','"+duration+"','"+a_type+"','"+layover_time+"','"+stops+"','"+model+"','"+a_id+"')");

		String sql = "SELECT a.AIRCRAFT_CODE, a.R_NO, a.ARRIVAL, a.DEPARTURE, a.STATUS, a.DURATION1, a.AIRCRAFTTYPE, a.LAYOVER_TIME, a.NO_OF_STOPS, a.MODEL1, a.AIRLINEID FROM AIRCRAFT a";


		ResultSet rs = stmt.executeQuery(sql);
		try
		{
			if(rs!=null)
			{
				%>
				<table border = 1 cellpadding = 5>
					<tr>
						<td>Aircraft Code</td>
						<td>Route</td>
						<td>Arrival Time</td>
						<td>Departure Time</td>
						<td>Status</td>
						<td>Duration</td>
						<td>Aircraft Type</td>
						<td>Layover Time (Hrs)</td>
						<td>Number of Stops</td>
						<td>Aircraft Model</td>
						<td>Aircraft ID</td>
					</tr>
				<%

				while(rs.next())
				{
					%>
					<tr>
						<td><%=rs.getString("AIRCRAFT_CODE")%></td>
						<td><%=rs.getString("R_NO")%></td>
						<td><%=rs.getString("ARRIVAL")%></td>
						<td><%=rs.getString("DEPARTURE")%></td>
						<td><%=rs.getString("STATUS")%></td>
						<td><%=rs.getString("DURATION1")%></td>
						<td><%=rs.getString("AIRCRAFTTYPE")%></td>
						<td><%=rs.getString("LAYOVER_TIME")%></td>
						<td><%=rs.getString("NO_OF_STOPS")%></td>
						<td><%=rs.getString("MODEL1")%></td>
						<td><%=rs.getString("AIRLINEID")%></td>
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