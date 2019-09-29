<!DOCTYPE html>
<html>
	<head>
		<title>Insert</title>
	</head>
	<body>

		<h1>Insert Aircrafts</h1>

    <br><br>

		<form name = "insertform" action = "Display-Aircrafts.jsp" method = "POST">
  			Enter Aircraft Code :
  			<input type="text" name="a_code" value="" size="6" maxlength="6" placeholder="CODE">
  			<br>
        <br>
  			Enter Route Number :
  			<input type="text" name="r_no" value="" size="3" maxlength="3" >
  			<br>
        <br>
        Enter Arrival Time :
        <input type="text" name="arrival" value="" size="5" maxlength="5" placeholder="HH:MM">
        <br>
        <br>
        Enter Departure Time :
        <input type="text" name="departure" value="" size="5" maxlength="5" placeholder="HH:MM">
        <br>
        <br>
        Select Status :
        <select name="status">
          <option value="On-time">On-time</option>
          <option value="Delayed">Delayed</option>
        </select>
        <br>
        <br>
        Enter Travel Time :
        <input type="text" name="duration" value="" size="5" maxlength="" placeholder="in Hrs">
        <br>
        <br>
        Enter Aircraft Type :
        <select name="a_type">
          <option value="Connecting">Connecting</option>
          <option value="Non-stop">Non-stop</option>
          <option value="Direct">Direct</option>
        </select>
        <br>
        <br>
        Enter Layover Time :
        <input type="text" name="layover_time" value="" size="3" maxlength="1" >
        <br>
        <br>
        Enter Number of Stops :
        <input type="text" name="stops" value="" size="3" maxlength="1" >
        <br>
        <br>
        Select Aircraft Model :
        <select name="model">
          <option value="BOEG-747">BOEG-747</option>
          <option value="BOEG-737">BOEG-737</option>
          <option value="BOEG-777">BOEG-777</option>
          <option value="BOEG-757">BOEG-757</option>
        </select>
        <br>
        <br>
        Enter Airline ID :
        <input type="text" name="a_id" value="" size="3" maxlength="2" >
        <br>
        <br>
  			<input type="reset" value="Clear" name="clear" />
  			<input type="submit" value="Submit" name="submit" />
</form> 

<p>If you click the "Submit" button, all the aircraft details entered will be inserted into the database.</p>

</body>
</html>