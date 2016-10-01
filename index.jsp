<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.Vector" import ="Showtime.UserBusinessMethod" import ="Showtime.MovieData"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Index</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/main.css" rel="stylesheet" type="text/css" id="main-css" />
<meta http-equiv="description" content="">
<meta http-equiv="keywords" content="">
</head>
<body class="hide-search index">	
<div id="header-wrapper">
<div id="header" class="content">
<div class="logo">
<a href="/"><img src="images/Showtime_logo.jpg" alt="" width="137" height="62" id="header-logo" /></a>
</div>

<ul id="header-menu">
<li class="first"><a id="header-signin" href="signup.jsp">Sign In</a></li>
<li class="last"><a id="header-register" href="registration.jsp">Register</a></li>
</ul>

</div>
</div>

<div id="top-wrapper">
<div id="top" class="content">
<ul id="top-menu"><li class="first"><a href="index.jsp">Home</a></li>
<li><a href="#">Categories</a>
<ul>
<li class="first"><a href="english.jsp">English</a></li>
<li class="first"><a href="main.jsp">Hindi</a></li>
<li class="first"><a href="animated.jsp">Animated</a></li>


</ul>
</li>
<li><a href="aboutus.jsp">About Us</a></li>
<li><a href="contact.jsp">Contact Us</a></li>
</ul>
<div align="left"></div>
</div>
</div>

<!-- fma -->
 <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
 <div class="bgimg">
 <div id="fma" class="content">

<style>

.mySlides
 {
display:none;
}
.bgimg
{
  background-image:url('lx2.jpeg');
}

.description{color: orange;}
</style>



<div class="w3-content w3-section" max-width="100px">
<br>

<center><img class="mySlides" src="images/rustom1.jpg" style="width:62%" style="height:100%"></center>
<center><img class="mySlides" src="images/dhoni1.jpg" style="width:62%" style="height:100%"></center>
<center><img class="mySlides" src="images/dishoom.jpg" style="width:62%" style="height:100%"></center>
</div>

<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}
    x[myIndex-1].style.display = "block";
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>




<!-- TemplateBeginEditable name="MainContent" -->
<div id="stacked-featured-popular-wrapper">
<div id="stacked-featured-popular" class="content"><br>
<div class="split-home">
<div class="column-one">
<div id="featured-box" class="home-box">
<% Vector<MovieData> d=new UserBusinessMethod().getMovieData(); 
   for(MovieData md:d)
   {
	   %>
<h2><%=md.getName() %></h2>
<div class="info">
<div class="image"> 
<img src="displayservlet?id=<%=md.getImage() %>"height="240" width="170" >
</div>
<div class="details" >
<div class="description">
<table>
<tr><td> Name: </td><td><%=md.getName() %></td></tr>
<tr><td>Category:</td><td><%=md.getCategory() %></td></tr>
<tr><td>Actors:</td><td><%=md.getActors() %></td></tr>
<tr><td>Actress:</td><td><%=md.getActress() %></td></tr>
<tr><td>Genre:</td><td><%=md.getType() %></td></tr>
<tr><td>Rating:</td><td><%=md.getRating() %></td></tr>
<tr><td>Release Date:</td><td><%=md.getReleasedate() %>
<tr><td>Reviews:</td><td><%=md.getReviews()%></td></tr>
</table>

</div>
<div class="buttons"> <a href="signup.jsp" class="button"><strong>Book Now</strong></a> <br></div>
</div>
</div>

<% } %>

</div>
</div>
<br>
<!--
<div class="column-three">
<div id="featured-box" class="home-box"><br>
<h2>Movie 2</h2>
<div class="info">
<div class="image">
<img src="displayservlet?id=2" height="240" width="170" > </div>
<div class="details" >
<div class="name"><a href="#"></a></div>
<div class="price"> 
</div>
<div class="description">


</div>
<div class="buttons"> <a href="#" class="button"><strong>Book Now</strong></a> </div>
</div>
</div>
</div>
</div>
<div class="column-two">
<div id="popular-box" class="home-box">
<h2>Movie 3</h2>
<div class="info">
<div class="image"> 
<img src="displayservlet?id=3" height="240" width="170" >  </div>
<div class="details" >
<div class="name"><a href="#"></a></div>
<div class="price"></div>
<div class="description">
  
 
</div>
<div class="buttons"> <a href="#" class="button"><strong>Book Now</strong></a> </div>
</div>
</div>
</div>
</div>
</div>

-----!>
<div class="search-pod">
<div id="home-search">
<form action="/products" method="get" id="top-search-form2">
<input type="submit" class="button" alt="Search" id="home-search-submit" value="Search" name="home-search-submit">
<input type="text" placeholder="Search..." value="" id="home-search-query" name="home-search-query" class="field">
<input type="hidden" value="1" name="Search2">
</form>
</div>
<div id="info-content">
<div id="info-content-heading">
<h2>
<p>Content goes here</p>
</h2>
</div>

</div>
</div>
</div>
</div>
-->
<!-- TemplateEndEditable -->
<!-- footer -->

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">

<div id="footer-wrapper">
<div id="footer" class="content">

<ul>
<li class="first"><a href="#" rel="" target="_self">FAQ</a></li>
<li class=""><a href="#" rel="" target="_self">Privacy Policy</a></li>
<li class="last"><a href="#" rel="" target="_self">Terms of Use</a></li>

<li>&nbsp;&nbsp;&nbsp;</li>
<li>&nbsp;&nbsp;&nbsp;</li>
<li>&nbsp;&nbsp;&nbsp;</li>
<li>&nbsp;&nbsp;&nbsp;</li>
<li>&nbsp;&nbsp;&nbsp;</li>
<li>&nbsp;&nbsp;&nbsp;</li>
<li>&nbsp;&nbsp;&nbsp;</li>
<li>&nbsp;&nbsp;&nbsp;</li>
<li>&nbsp;&nbsp;&nbsp;</li>
<li>&nbsp;&nbsp;&nbsp;</li>
<li></li>
<li><img src="images/fbicon.png" width="40" height="40"></li>
<li><img src="images/google.png" width="40" height="40"></li>
<li><img src="images/in.png" width="40" height="40"></li>
<li><img src="images/insta.jpg" width="40" height="40"></li>
<li><img src="images/twitter.png" width="40" height="40"></li>


</div>
</div>


<!-- TemplateBeginEditable name="end" --><!-- TemplateEndEditable -->


</body>
</html>