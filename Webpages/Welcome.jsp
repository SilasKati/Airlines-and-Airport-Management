<!DOCTYPE html>
<html>
<head>
	<title>Welcome</title>
</head>
<body>

	<h1>Welcome to Airlines Portal</h1>

	<form name = "changeform1" action = "Search-Aircrafts.jsp" method = "POST">
		<p>If you want to search Aircrafts between Airports, Click Below:</p>
		<input type="submit" value="Search Flights" name="search" />
	</form> 

	<p>If you click the "Search Flights" button, you will be able to search all aircrafts between the entered locations.</p>
	<br><br><br><br>
	<!-- <form name="changeform2" action="Choice.jsp" method=""> -->
	<!-- <form name="changeform2"  method=""> -->
	<!-- <form name="changeform2"  action="Choice.jsp" method="POST"> -->
	<form name="changeform2">
		<p>If you are an ADMINISTRATOR, Login to modify Data in Database.</p>
		<input id="uname" type="text" placeholder="Username" name="username">
		<input id="pass" type="text" placeholder="Password" name="psw">
		<input type="button" value="Login" onclick="check()">
		<p id="warningMsg">[Please Check before submitting]</p>
		<%--<input type="submit" value="Login" name="login" onclick="check()">--%>
	</form>

	<script language="javascript">
		// console.log(document.changeform2.pass.value);
		function check()
		{
			if((document.changeform2.uname.value== "admin") && (document.changeform2.pass.value == "admin"))
			{
				console.log("hellohellohellohellohellohellohellohellohellohellohello");
				window.location = '/Project/Choice.jsp';
			}

			else
			{
				console.log("Invalid login details...!!!");
				document.getElementById('warningMsg').innerHTML = "Invalid login details...!!!";
			}

			
		}

	</script>

</body>
</html>