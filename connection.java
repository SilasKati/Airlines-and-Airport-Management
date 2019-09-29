//-- Java code for connection --

import java.sql.*;
public class connection
{
	public static void main(String[] args) throws Exception
	{
		String driverclass = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "homeuser";
		String pass = "silas";
		Class.forName(driverclass);
		Connection con = DriverManager.getConnection(url,user,pass);
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("SELECT a.AIRLINEID, a.AL_NAME, a.PH FROM AIRLINE a");
		System.out.println("Airline ID " + " \tAirline Name " + "\t\t" + " Phone Number");
		while(rs.next())
		{
			System.out.print(rs.getString(1));
			System.out.print(" \t\t ");
			System.out.print(rs.getString(2));
			System.out.print("\t \t");
			System.out.println(rs.getString(3));

		}
	}
}