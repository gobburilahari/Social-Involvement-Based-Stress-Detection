<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View your Friends Tweets...</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 16px}
.style5 {color: #FF00FF}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
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
    height: 150vh; width: 100%; -webkit-background-size: cover; background-size: cover;
     background-position: center center; overflow: hidden; margin-bottom: 1%;"> 
     <div class="container" style=" width: 100%; height: 150vh; background: rgba(0,0,0,0.8);" >
  <div class="body">
    <div class="body_resize">
      <div class="left">
	    <h2 style="color: #00acee;">All Tweets Details...</h2>
			<p><table width="" border="" align="center"  cellpadding="0" cellspacing="0"  >
				
					<%String tname=request.getParameter("tname");
					 application.setAttribute("tname",tname);
					 String t_user=request.getParameter("t_user");
					 application.setAttribute("t_user",t_user);
					String t_des=request.getParameter("t_des");
					application.setAttribute("t_desc",t_des);
					  	
					%> 
					  <form id="form1" name="form1" method="post" action="U_RetweetIns.jsp">
					    <label>
					      <textarea name="tcomment"></textarea>
				        </label>
					   
					 
					    <input type="submit" name="Submit" value="Retweet" />
					 
					 </form>
			
					
				</table>
				</div>
				<div class="right">
          <h2 style="color: antiquewhite;">Menu</h2>
          <ul>
             <div class="gadget">
              <p><a href="U_Main.jsp">Main page</a></p>
                    <p><a href="U_Profile.jsp">View  Profile</a> </p>
                    <p><a href="U_FriendSearchFrdReq.jsp">Search Friend and Friend Request </a></p>
            <p><a href="U_AllFriends.jsp">View All Friends</a></p>
                    <p><a href="U_AddTweets.jsp">Create Tweet </a> </p>
                    <p><a href="U_AllFriendsComm.jsp">Friends Tweets and Retweets</a></p>
                    <p><a href="U_ViewTweetsDetail.jsp">View all My created Tweets </a> </p>
                    <p><a href="U_Retweet.jsp">View all the Retweets </a> </p>
                    <p><a href="U_Login.jsp">Logout</a>   </p>
                    <p>&nbsp; </p>
                    <p class="star">&nbsp;</p>
            </div>
          </ul>
        </div>
        <div class="clr"></div>
          <div class="clr"></div>
        </div>
      </div>
    </div>
    <div align=center></div></body>
    </html>