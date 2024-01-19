<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Login...</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 16px}
.style3 {
	font-size: 24px;
	color: #FF0000;
	font-family: "Times New Roman", Times, serif;
}
.style4 {
	font-size: 18px;
	font-family: "Times New Roman", Times, serif;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header" style="background:#00acee"> 
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style1"></a></h1>
      </div>
      <div class="menu">
        <ul>
          <li><a href="index.html"><span>Home</span></a></li>
          <li><a href="U_Login.jsp" class="active"><span>User</span></a></li>
          <li><a href="A_Login.jsp"><span>Admin</span></a></li>
         
        </ul>
      </div>
      <div class="clr"></div>
    </div>
    <div class="headert_text_resize" style="background-image: linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)), url(text_area_img.jpg);
    height: 100vh; width: 100%; -webkit-background-size: cover; background-size: cover;
   background-position: center center; overflow: hidden; margin-bottom: 1%;"> 
   <div class="container" style=" width: 100%; height: 100vh; background: rgba(0,0,0,0.8);" >
      <div class="textarea" style="margin-left: 150px; width: 900px;">
 
        <form id="form1" name="form1" method="post" action="authentication.jsp?type=<%="user"%>">
          <table width="660" align="left">
              <tr>
                <td width="162" height="35" style="color: #00acee;">UserName (required)</td>
                <td width="486"><input id="name" name="userid" class="text" /></td>
              </tr>
              <tr>
                <td height="38" style="color: #00acee;">Password (required)</td>
                <td><input type="password" id="password" name="pass" class="text" /></td>
              </tr>			 
      <tr><td></td>
  <div class="clr"></div>
</div>
<div class="clr"></div>
</div>
<div class="body">
<div class="body_resize">
  <div class="left" >
      <td>
             <input name="imageField" type="submit"  class="style3" id="imageField" value="Login" <a href="U_UserProfile.jsp" class="style4"></a>>
            <input name="Reset" type="reset" class="style3" value="Reset"/>
            <h4 style="color: #00acee;"> New user? <a href="U_Register.jsp">Register </a> </h4>
           </td>
     </tr>
         
          </p>
            <p>&nbsp;</p>
     </table>
    </form>
      </div>
    </div>
      </div>
      <script>
        function auth(){
          var UserName=document.getElementById("UserName").value;
          var password=document.getElementById("Password").value;
          if(UserName=="admin@gmail.com" && password=="admin123"){
            window.location.assign("U_Profile.jsp");
            alert("Login Successfully");

          }
          else{
            alert("Invalid Values");
            return;
            
          }

          
        }
      </script>
</html>
