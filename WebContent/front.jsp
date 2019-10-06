<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] ,input[type=Email]{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}


/* Set a style for all buttons */
.welcome
{
  marrgin-left:40px;
}
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  
}
.signup
{
 background-color: green;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}


button:hover {
  opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}

img.avatar {
  width: 20%;
  border-radius: 50%;
 }

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background) */
.modal {
  display: none; 
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 20px;
}

/* Modal Content/Box */
.modal-content {
  background-color: white;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 30%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
 .close {
  position: absolute;  
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
} 

  .close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}  

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>


</head>
<body>

<%
	String e=(String)session.getAttribute("err");
if(e!=null&&e.equals("error"))
{
	%><% 
}
%>

<img src="book.jpeg" style="height:100%;width:100%;position:fixed;opacity:0.8;top:0%;left:0%"/>
<img src="logo.PNG" style="height:300px;width:300px;position:fixed;top:35%;left:41%;border-color:none "/> 

<button onclick="document.getElementById('id01').style.display='block'" style="width:180px;height:60px;position:absolute;top:75%;left:45%;background-color:darkgreen;font-size:20px" >Login</button>

<div id="id01" class="modal">
  
  <form class="modal-content animate" action="<%=request.getContextPath() %>/RegController" method="post"  >
<!--     <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
 -->    
  <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="User.jpeg" alt="Avatar" class="avatar">
    </div>
   
     <div class="container">
      <label for="uname"><b>Username</b></label>
      <input type="text" placeholder="Username" name="un_login" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="pass_login" required>
      
      <input type="hidden" name="key" value="verify_login_details"/>
      <button type="submit">Login</button>
      
      
      
     </div>

    
  </form>
</div>

<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>


<!-- signup page -->

<button onclick="document.getElementById('id02').style.display='block'" style="width:180px;height:60px;position:absolute;top:85%;left:45%;background-color:darkgreen;font-size:20px">Signup</button>

<div id="id02" class="modal">
  
  <form class="modal-content animate" action="<%=request.getContextPath() %>/RegController" method="post"  >
    <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
    	<div class="container">
    	
      <label for="fn"><b>First Name</b></label>
      <input type="text" placeholder="firstname" name="fn" required>

      <label for="ln"><b>Last Name</b></label>
      <input type="text" placeholder="lastname" name="ln" required>
      
      <label for="un"><b>Username</b></label>
      <input type="text" placeholder="username" name="un_sign" required>
      
      <label for="pass"><b>Password</b></label>
      <input type="password" placeholder="password" name="pass_sign" required>
        
     
      
      <label for="phone"><b>Contact Number</b></label>
      <input type="text" placeholder="number" name="phone" required>
        
      <label for="email"><b>Email</b></label>
      <input type="Email" placeholder="email" name="email" required>
      
      <input type="hidden" name="key" value="add_data_signup"/>
      <button type="submit">Register</button>
        
      
     </div>
    	
    
  </form>
</div>


</body>
</html>