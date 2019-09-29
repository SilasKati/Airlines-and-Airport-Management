<%@ page import="java.sql.*" %>
  
<!DOCTYPE html>
   <html>
      <head>
      
<title>Delete</title>
     </head>
    <body onload="dispRes()">
<h1>Delete Aircraft</h1>



 <%!
  public class Actor 
  {
    String url = "jdbc:oracle:thin:@localhost:1521:xe";
    String username = "homeuser";
    String password = "silas";

    Connection conn = null;
    PreparedStatement selectActors = null;
    PreparedStatement deleteActor = null;
    ResultSet rs = null;

    public Actor()
    {
        try 
        {


        	conn = DriverManager.getConnection(url, username, password);

        	selectActors = conn.prepareStatement("SELECT AIRCRAFT_CODE FROM AIRCRAFT ");

          deleteActor = conn.prepareStatement("DELETE FROM AIRCRAFT WHERE AIRCRAFT_CODE = ?");
         } 

         catch (SQLException e)
         {
             e.printStackTrace();
         }
    }

    public ResultSet getActors()
    {
      try 
        {
          rs = selectActors.executeQuery();
        } 

        catch (SQLException e)
        {
            e.printStackTrace();
        }


    	return rs;
	}	

  public void deleteActor(String a_code)
  {
    try
    {
      deleteActor.setString(1, a_code);
      deleteActor.executeUpdate();
    }

    catch (SQLException e)
      {
        e.printStackTrace();
      }

  }
}
%>

<%

Actor actor = new Actor();
ResultSet actors = actor.getActors();

if(request.getParameter("submit") != null)
{
  String a_code = request.getParameter("a_code");
  actor.deleteActor(a_code);
}

%>

<form name="myform1" action="Delete-Aircrafts.jsp" method="POST">
  <table border = 0>
    <tbody>
      <tr>
        <td>Select Aircraft Code to delete : </td>
        <td>
          <select name="a_code">
            <% while (actors.next())
                {%>
                  <option value="<%= actors.getString("AIRCRAFT_CODE")%>">
                    <%= actors.getString("AIRCRAFT_CODE")%>
                  </option>
            <%  }   %>
            
          </select>
        </td>
      </tr>
    </tbody>
  </table>
  <br>
  <input type="submit" value="Submit" name="submit" />
  <br><br><br>
  <p>To veiw UPDATED database, Click below. </p>
  <button type="submit" formaction="Display-Aircrafts-2.jsp">View</button>
</form>

</body>
 </html>