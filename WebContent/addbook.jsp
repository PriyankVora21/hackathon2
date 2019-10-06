<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<style>
body {margin:0;}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  width: 16.6%;
  background-color: #f1f1f1;
  top:7%;
  position: fixed;
  height: 100%;
  overflow: auto;
}

li a{
  display: block;
  color: #000;
  padding: 8px 16px;
  text-decoration: none;
  font-size: 25px;
}


li a.active {
  background-color: red;
  color: white;
}

li a:hover:not(.active) {
  background-color: #555;
  color: white;
}


.icon-bar {
  width: 100%;
  background-color: #555;
  overflow: auto;
  top:0;
  left:0;
  position:fixed;
  z-index:1;
}



.icon-bar a {
  float: left;
  width: 16.6%;
  text-align: center;
  padding: 12px 0;
  transition: all 0.3s ease;
  color: white;
  height: 30px;
}


.icon-bar a:hover {
  background-color: green;
}

.active {
  background-color: green;
}

.categories
{
	width:19%;
	
}
.slideshow-container
{
	position:fixed;
	width:100%;
}
.mySlides fade
{

}
</style>
</head>
<body>
<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="img1.jpg" style="width:100%;opacity:0.5">
  <div class="text">Caption Text</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="img2.jpg" style="width:100%;opacity:0.5">
  <div class="text">Caption Two</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="img3.jpg" style="width:100%;opacity:0.5">
  <div class="text">Caption Three</div>
</div>

</div>
<br>

<div style="text-align:center;position:fixed">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides,3500); // Change image every 2 seconds
}
</script>



<div class="icon-bar">
   <a href="home.jsp" style="font-size:20px;font-family:sans-serif;text-decoration: none;text-align: center">HOME</a>
   <a href="#" style="font-size:20px;font-family:sans-serif;text-decoration: none;text-align: center">SEARCH</a>
   <a href="#" class="active" style="font-size:20px;font-family:sans-serif;text-decoration: none;text-align: center">ADD BOOK</a>
   <a href="#" style="font-size:20px;font-family:sans-serif;text-decoration: none;text-align: center">YOUR CART</a>
   <a href="#" style="font-size:20px;font-family:sans-serif;text-decoration: none;text-align: center">CONTACT US</a>
   <a href="#" style="font-size:20px;font-family:sans-serif;text-decoration: none;text-align: center">PROFILE</a>
</div>
<div style="width:100%;height:100%;left:0">

<form action="<%=request.getContextPath() %>/RegController" style="margin-left:600px;margin-top:75px;font-size:25px;font-family: sans-serif;position:fixed;" method="post">
	<bold>Title</bold><br><input type="text" name="Title" placeholder="Title" style="width:250px;height:25px" required><br><br>
	Author<br><input type="text" name="Author" placeholder="Author" style="width:250px;height:25px" required><br><br>
	Publication<br><input type="text" name="Publication" placeholder="Publication" style="width:250px;height:25px" required><br><br>
	Stream<br>
	<select style="width:250px;height:25px" name="Stream">
	<option>ENGINEERING</option>
	<option>MEDICAL</option>
	</select><br><br>
	Edition<br><input type="text" name="Edition" placeholder="Edition" style="width:250px;height:25px" required/><br><br>
	ISBN<br><input type="text" name="ISBN" placeholder="ISBN" style="width:250px;height:25px" required><br><br>
	PRICE<br><input type="number" name="price" placeholder="price" style="width:250px;height:25px" required><br><br>
	<input type="hidden" value="addbook" name="key"/>
	<input type="submit" value="Add book" style="height:30px;width:100px;margin-left:70px;background-color:green;color:white"/>	 
</form>

</div>
</body>
</html>