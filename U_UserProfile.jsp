<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View User Profile...</title>
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
          <li><a href="U_Login.jsp" class="active"><span> User</span></a></li>
          <li><a href="A_Login.jsp"><span>Admin </span></a></li>
         
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
	 <h2 class="style5" style="color: antiquewhite;"> User Profile  </h2>
	    <table width="600" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
					<%@ include file="connect.jsp" %>
					<%String user=(String )application.getAttribute("user");
						//int id = Integer.parseInt(request.getParameter("id"));
						
						String user1=request.getParameter("value");
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						   	String query="select * from user where username='"+user1+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(7);
								s6=rs.getString(8);
								//s7=rs.getString(9);
								//s8=rs.getString(8);
					%>
					<tr><td rowspan="8" >
						<div style="margin:10px 13px 10px 13px;" >
                		<a class="#" id="img1" href="#" >
							<input  name="image" type="image" src="profile_pic.jsp?id=<%=i%>&type=<%="user"%>" style="width:200px; height:230px;"  />
	               			
				   		</a>
						
                	</div>
					</td>
					<tr/>
					<tr>
 						<td  width="150" valign="middle" height="40" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><b >Username</b></div></td>
						<td  width="300" valign="middle" height="40" style="color:#00acee;"><div align="left" style="margin-left:20px;"><%out.println(s1);%></div></td>
					</tr>
					<tr>
 						<td  width="120" valign="middle" height="40" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><b>E-Mail</b></div></td>
						<td  width="72" valign="middle" height="40" style="color:#00acee;"><div align="left" style="margin-left:20px;"><%out.println(s2);%></div></td>
					</tr>
					<tr>
  						<td  width="100" valign="middle" height="40" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><strong >Mobile</strong></div></td>
						<td  width="82" valign="middle" height="40"><div align="left" style="margin-left:20px; color:#00acee;"><%out.println(s3);%></div></td>
					</tr>
					<tr>
  						<td  width="100" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><strong>Date Of Birth</strong></div></td>
						<td  width="82" align="left" valign="middle" height="40"><div align="left" style="margin-left:20px; color:#00acee;"><%out.println(s4);%></div></td>
					</tr>
					<tr>
  						<td  width="100" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left " style="margin-left:20px;"><strong>Gender</strong></div></td>
						<td  width="82" align="left" valign="middle" height="40"><div align="left" style="margin-left:20px; color:#00acee;"><%out.println(s5);%></div></td>
					</tr>
					<tr>
 						<td   width="100" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><strong >Address</strong></div></td>
						<td  width="100" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left"><div align="left" class="style4" style="margin-left:20px;"><%out.println(s6);%></div></td>
					</tr>
				
					<%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>

					
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