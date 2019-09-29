<!DOCTYPE html>
<html>
	<head>
		<title>Search</title>
	</head>
	<body>

		<h1>Search Aircrafts</h1>

		<form name = "searchform" action = "Result-Aircrafts.jsp" method = "POST">
  			Enter Source Code :<br>
  			<input type="text" name="source_loc" value="" size="3" maxlength="3" placeholder="SRC">
  			<br>
        <br>
  			Enter Destination Code :<br>
  			<input type="text" name="dest_loc" value="" size="3" maxlength="3" placeholder="DST">
  			<br><br>
  			<input type="reset" value="Clear" name="clear" />
  			<input type="submit" value="Submit" name="submit" />
</form> 

<p>If you click the "Submit" button, all aircrafts between the entered source and destination locations will be displayed.</p>

</body>
</html>
