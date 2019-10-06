<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
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


li a.hover {
  background-color:black;
  color: white;
}

li a:hover:not(.active) {
  background-color: black;
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
</style>

</head>
<body>

<div class="icon-bar">
   <a href="#" class="active" style="font-size:20px;font-family:sans-serif;text-decoration: none;text-align: center">HOME</a>
   <a href="#" style="font-size:20px;font-family:sans-serif;text-decoration: none;text-align: center">SEARCH</a>
   <a href="addbook.jsp" style="font-size:20px;font-family:sans-serif;text-decoration: none;text-align: center">ADD BOOK</a>
   <a href="#" style="font-size:20px;font-family:sans-serif;text-decoration: none;text-align: center">YOUR CART</a>
   <a href="#" style="font-size:20px;font-family:sans-serif;text-decoration: none;text-align: center">CONTACT US</a>
   <a href="#" style="font-size:20px;font-family:sans-serif;text-decoration: none;text-align: center">PROFILE</a>
</div>
<ul>
  <li><a href="home.jsp" style="font-size:20px">All Books</a></li>
  <li><a href="home.jsp?key=eng" style="font-size:20px">Engineering Books</a></li>
  <li><a href="home.jsp?key=medical" style="font-size:20px">Medical Books</a></li>
</ul>

<div style="margin-left:16.6%;margin-top:60px;padding:1px 16px;height:100%;">

	<%
	ResultSet r=null;
	Class.forName("com.mysql.jdbc.Driver"); 
	Connection c=DriverManager.getConnection("jdbc:mysql://localhost/hackout","root","root");
	Statement s=c.createStatement();
	
	String key=request.getParameter("key");
   
    if(key!=null&&key.equals("eng"))
     r=s.executeQuery("select * from book_details where Stream='ENGINEERING' ");
	else if(key!=null&&key.equals("medical"))
	 r=s.executeQuery("select * from book_details where Stream='MEDICAL' ");
	else
		 r=s.executeQuery("select * from book_details");
	%>
	
	
    <%
	while(r.next())
	{
		%>
		<div style="height:300px;width:100%;border-bottom:1px solid black">
		
		<div style="height:290px;width:220px;float:left">
			<img src="4.jpg"  style="height:290px;width:220px"/>
		</div>
		
		<div style="height:300px;width:auto;margin-left:20%;font-size:20px;float:left">
		<% 
		String title=r.getString("Title");
		 out.println("Title   :- "+title+"  ");%><br><br><%
			
		
		  String author=r.getString("Author");
		  out.println("Author       :- "+author+"  ");%><br><br><%

		  String publication=r.getString("Publication");
		  out.println("Publication  :- "+publication+"  ");%><br><br><%

		  String stream=r.getString("Stream");
		  out.println("Stream       :- "+stream+"  ");%><br><br><%

		  String ISBN=r.getString("ISBN");
		  out.println("ISBN         :- "+ISBN+"  ");%><br><br><%
		  
		  int Price=r.getInt("Price");	
		 out.println("Price        :- "+Price+" rupee");%><br><br>
		 
 		 <a href="#"><input type="button" style="background-color:black;color:white;float:left" value="ADD TO CART"></a>
		 
		  </div>
		  		
		  </div>

	
		  <br><%
	}
	%>
	
</div> 

</body>
</html>
