<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Main Page...</title>
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
            <li><a href="index.html" class="active"><span>Home</span></a></li>
            <li><a href="U_Login.jsp"><span>User</span></a></li>
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
          <h2>Detecting Stress Based on Social Interactions in Social Networks</h2>
  <div class="body">
    <div class="body_resize">
      <div class="left">
        <h2 align="justify">&nbsp;</h2>
		
		<h2> WelCome User <%=(String)application.getAttribute("user")%> </h2>
		<p><img src="images/User.jpg" width="660" height="211" /></p>
		<p>&nbsp;</p>
      </div>
      <div class="right">
        <h2>Menu</h2>
        <ul>
           <div class="gadget">
                  <p><a href="U_Profile.jsp">View  Profile</a> </p>
                  <p><a href="U_FriendSearchFrdReq.jsp">Search Friend and Friend Request </a></p>
				  <p><a href="U_AllFriends.jsp">View All Friends</a></p>
                  <p><a href="U_AddTweets.jsp">Create Tweet </a> </p>
				   <p><a href="U_ViewTweets.jsp">View all My created Tweets </a> </p>
           <p><a href="U_Retweet.jsp">View all the Retweets </a> </p>
                  <p><a href="U_AllFriendsComm.jsp">Friends Tweets and Retweets</a></p>
                  <p><a href="U_Login.jsp">Logout</a>   </p>
                  <p>&nbsp; </p>
                  <p class="star">&nbsp;</p>
          </div>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>
<div align=center></div></body>
</html>
