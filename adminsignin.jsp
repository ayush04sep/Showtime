<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<style class="text/css">
body{
background-image: url(images/111.jpeg);
background-size: cover;
}

.aa{
width:400px;
height: 300px;
background-color: rgba(0,0,0,.5);
margin:0 auto;
margin-top:100px;
padding-top:50px;
padding-left:120px;
border-radius:15px;
-webkit-border-radius:15px;
color: white;
font-weight:bolder;
box-shadow: inset -4px -4px rgba(0,0,0,.5);
font-size: 18px;
}

.aa input[type="text"]{
width: 200px;
height: 35px;
border=0;
border-radius: 5px;
-webkit-border-radius: 5px;
padding-left: 5px;
}

.aa input[type="password"]{
width: 200px;
height: 35px;
border-radius: 5px;
-webkit-border-radius: 5px;
padding-left: 5px;
}

.aa input[type="submit"]{
width:100px;
height:35px;
border:0px;
-webkit-border-radius:5px;
background-color: skyblue;
font-weight: bolder;
}
</style>
</head>

<body>
<div class="aa">
<h2>Admin Login</h2>
	<form name="frm" action="adminlogcontrol" method="post">
	<input type="text"  id="email" placeholder="Enter username" name="email" required="required" "><br><br>
	<input type="password"  id="password" placeholder="Enter Password" name="password"  required="required"><br><br>
    	<input type="submit" value="Let me in">
    	</form>
</body>
</html>