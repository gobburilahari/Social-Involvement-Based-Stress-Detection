<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User search Friends</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 16px}
.style5 {color: #FF00FF}
.style6 {
	font-size: 36px;
	color: #FF00FF;
}
.style7 {font-size: 36px}
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
      <div class="textarea" style="margin-left: 150px; width: 900px;">
		<div class="left">
			<h2 class="style5 style6 style5">Search Results:</h2>
		  <table width="500" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
			<%@ include file="connect.jsp" %>
		<%@ page import="java.util.Date,java.lang.*" %>
	<%@ page import="java.text.SimpleDateFormat, java.util.Date"%>
			<%
		
							String s1,s2,s3,s4;
							int i=0;
							String keyword=request.getParameter("keyword");
							String user=(String)application.getAttribute("user");
		   
							try 
							{
								String status1=null;
								   String status=null;
								   String query="select * from user where username LIKE '%"+keyword+"%'"; 
								   Statement st=connection.createStatement();
								   ResultSet rs=st.executeQuery(query);
								   while(rs.next()==true)
								   {
									i=rs.getInt(1);
									s1=rs.getString(2);
									s2=rs.getString(4);
									s3=rs.getString(5);
									//s8=rs.getString(8);
									status ="request";
									if(s1.equalsIgnoreCase(user)){}
									else
									{
									
										String query7="select * from req_res where (requestfrom='"+user+"'||requestto='"+user+"')" ; 
										Statement st7=connection.createStatement();
										ResultSet rs7=st7.executeQuery(query7);
										while(rs7.next())
										{
											String rfrom =rs7.getString(2);
											String rto =rs7.getString(3);
											status1 = rs7.getString(4);
											
											if((!status1.equalsIgnoreCase("Accepted"))&&(rfrom.equalsIgnoreCase(s1)||(rto.equalsIgnoreCase(s1))))
											{
												status="sent";
											}
											else if((status1.equalsIgnoreCase("Accepted"))&&(rfrom.equalsIgnoreCase(s1)||(rto.equalsIgnoreCase(s1))))
											{
												status="Already Friend";
											}
											
										}	
									
						%>
			  
				<tr>
						<td width="129" rowspan="3" valign="middle" >
							<div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
							 <input  name="image" type="image" src="profile_pic.jsp?id=<%=i%>&type=<%="user"%>" style="width:100px; height:100px;"  />
				  </a></div>					</td>
			  </tr>
				 
				 <tr> <td width="105" valign="middle" height="80" style="color:#00acee;"><div align="center">Name</div></td>
				 <td width="90" valign="middle" height="80" style="color:#00acee;">&nbsp;&nbsp;
				   <%out.println(s1);%></td></tr>
					   <tr>
						<td width="105" valign="middle" height="26" style="color:#00acee;"><div align="center">Status</div></td>
				  <%
							if(status.equals("Already Friend")){
							%>
				  <td  width="90" valign="middle" height="26" style="color:#00acee;"align="center"><%=status %>&nbsp;</td>
				  <%
							}else if(status.equals("sent")){
							%>
				  <td  width="57" valign="middle" height="26" style="color:#00acee;"align="center"><%=status %>&nbsp;</td>
				  <%
							}else{
							
							%>
				  <td  width="107" valign="middle" height="26" style="color:#00acee;"align="center"><a href="U_UpdateStatus.jsp?username=<%=s1%>&id=<%=i%>"><%=status %>&nbsp;</a></td>
				  <%}
							%>
				</tr>
				<%
						
							}
						
					
								 
							SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
							SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
	
							Date now = new Date();
							
							String strDate = sdfDate.format(now);
							String strTime = sdfTime.format(now);
							String dt = strDate + "   " + strTime;
					
							String sql="insert into friend_search(username,keyword,date)values('"+user+"','"+keyword+"','"+dt+"')";
							Statement st1=connection.createStatement();
							st1.executeUpdate(sql);
								
						}
						
						connection.close();
						//out.print("There is no Friends with " +keyword);
						}
						catch(Exception e)
						{
							out.println(e.getMessage());
						}
						%>
		  </table>
      </div>
	  <div class="right">
        <h2>Menu</h2>
        <ul>
           <div class="gadget">
            <p><a href="U_Main.jsp">Main page</a></p>
                  <p><a href="U_Profile.jsp">View  Profile</a> </p>
				  <p><a href="U_AllFriends.jsp">View All Friends</a></p>
                  <p><a href="U_AddTweets.jsp">Create Tweet </a> </p>
				   <p><a href="U_ViewTweets.jsp">View all My created Tweets </a> </p> 
                  <p><a href="U_AllFriendsComm.jsp">Friends Tweets and Retweets</a></p>
                  <p><a href="U_Login.jsp">Logout</a>   </p>
                  <p>&nbsp; </p>
                  <p class="star">&nbsp;</p>
          </div>
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
  <div class="body">
    <div class="body_resize">
	  <h2>&nbsp;</h2>
             
            
            
            <div class="cleaner_h40">
              <div class="cleaner_h40">
                <p></p>
                </p>

              </div>
            </div>
            
            <div id="div">
              <h2>&nbsp;</h2>
        </div>
            <h2>&nbsp;</h2>
        <div class="col c1">
          <h2>&nbsp;</h2>
        </div>
	</div>
      </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="clr"></div>
  </div>
</div>
<div align=center></div></body>
</html>
