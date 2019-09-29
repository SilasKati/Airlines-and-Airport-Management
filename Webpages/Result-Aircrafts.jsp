<%@ page import="java.sql.*" %>
  
<!DOCTYPE html>
   <html>
      <head>
      
<title>Search</title>
     </head>
    <body>
<h1>Aircraft Search Details</h1>
 <%!
  public class Actor 
  {
    String url = "jdbc:oracle:thin:@localhost:1521:xe";
    String username = "homeuser";
    String password = "silas";

    Connection conn = null;
    PreparedStatement selectActors = null;
    ResultSet rs = null;

    public Actor()
    {
        try 
        {


        	conn = DriverManager.getConnection(url, username, password);
        	selectActors = conn.prepareStatement("SELECT a1.AL_NAME, a2.AIRCRAFT_CODE, r.SOURCE, r.DESTINATION, a2.ARRIVAL, a2.DEPARTURE, a2.DURATION1, a2.AIRCRAFTTYPE, a2.LAYOVER_TIME, a2.NO_OF_STOPS FROM AIRLINE a1, AIRCRAFT a2, ROUTE r WHERE r.SOURCE = ? AND r.DESTINATION = ? AND a1.AIRLINEID = a2.AIRLINEID AND a2.R_NO = r.R_NO");
         } 

         catch (SQLException e)
         {
             e.printStackTrace();
         }
    }

    public ResultSet getActors(String source_loc, String dest_loc)
    {

        try 
        {
            selectActors.setString(1,source_loc);
            selectActors.setString(2,dest_loc);
         	rs = selectActors.executeQuery();
        } 

        catch (SQLException e)
        {
            e.printStackTrace();
        }


    	return rs;
	}	
}
%>
<%
String s_loc = new String();
String d_loc = new String();

if (request.getParameter("source_loc") !=null) 
	{
    	s_loc = request.getParameter("source_loc");
	}

if (request.getParameter("dest_loc") !=null) 
	{
    	d_loc = request.getParameter("dest_loc");
	} 


Actor actor = new Actor();

ResultSet actors = actor.getActors(s_loc, d_loc);

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

				while(actors.next())
				{
					%>
					<tr>
						<td><%=actors.getString("AL_NAME")%></td>
						<td><%=actors.getString("AIRCRAFT_CODE")%></td>
						<td><%=actors.getString("SOURCE")%></td>
						<td><%=actors.getString("DESTINATION")%></td>
						<td><%=actors.getString("ARRIVAL")%></td>
						<td><%=actors.getString("DEPARTURE")%></td>
						<td><%=actors.getString("DURATION1")%></td>
						<td><%=actors.getString("AIRCRAFTTYPE")%></td>
						<td><%=actors.getString("LAYOVER_TIME")%></td>
						<td><%=actors.getString("NO_OF_STOPS")%></td>
					</tr>
				<% } %>


  </body>
 </html>