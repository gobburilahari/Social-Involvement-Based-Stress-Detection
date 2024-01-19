<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All Friend Request and Responses...</title>
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
          <li><a href="U_Login.jsp"><span>User</span></a></li>
          <li><a href="A_Login.jsp" class="active"><span>Admin</span></a></li>
         
        </ul>
      </div>
      <div class="clr"></div>
    </div>

      <div class="textarea">
        
      </div>
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
  <div class="body">
    <div class="body_resize">
      <div class="left">
<h2>All Request and Response Details...         </h2>
             
            
            
            <table width="600" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
					<tr>
					  <td  width="142" valign="baseline" height="0" style="color: #2c83b0;"><div align="center"><b>Username</b></div></td>
					  <td  width="141" valign="baseline" height="0" style="color: #2c83b0;"><div align="center"><strong>Request Sent To </strong></div></td>
  					
					  <td   width="115" valign="baseline" height="0" style="color: #2c83b0;"><div align="center"><strong>Status</strong></div></td>
					  <td  width="188" valign="baseline" height="0" style="color: #2c83b0;"><div align="center"><b>Date &amp; Time </b></div></td>
					</tr>
					<%@ include file="connect.jsp" %>
					<%
String s1,s2,s3,s4,s5,s6,s7,s8,s9;
int i=0;
try 
{
	String query="select * from req_res"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
		i=rs.getInt(1);
		s1=rs.getString(2);
		s2=rs.getString(3);
		s3=rs.getString(4);
		s4=rs.getString(5);
		
					%>
							<tr>
								<td  width="142" valign="baseline" height="0" style="color:#000000;">&nbsp;&nbsp;
							  <%out.println(s1);%></td>	
								<td  width="141" valign="baseline" height="0">&nbsp;&nbsp;
							  <%out.println(s2);%></td>
								<td  width="115" valign="baseline" height="0">&nbsp;&nbsp;
							  <%out.println(s3);%></td>
							  <td  width="188" valign="baseline" height="0">&nbsp;&nbsp;
						      <%out.println(s4);%></td>
					
						
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

					<tr>
						<td  valign="baseline" height="0">&nbsp;</td>
						<td  valign="baseline" height="0">&nbsp;</td>
						<td  valign="baseline" height="0">&nbsp;</td>
						<td  valign="baseline" height="0">&nbsp;</td>
						
					</tr>
		</table>
            
	</div>

  <div class="right">
    <h2>Server Menu</h2>
    <ul>
     <div class="gadget">
              <p><a href="A_AllUsers.jsp"> All Users </a> </p>
              <p><a href="A_AllFrdReqResp.jsp">All Friends Requests and Responses </a> </p>
      <p><a href="A_AddCategory.jsp">Add Tweet Category</a></p>
              <p><a href="A_AddTweets.jsp">Select Tweet Category and Add Tweet Filters </a></p>
      <p><a href="A_ViewTweets.jsp">View All Tweets micro-blog with Users</a> </p>
              <p><a href="A_PossitiveFilter.jsp">View Positive Emotion Tweets </a>   </p>
              <p><a href="A_NegativeFilter.jsp">View Negative Emotion Tweets  </a></p>
              <p><a href="A_StressedFilter.jsp">View Stressed Tweets </a> </p>
      <p><a href="A_ViewAllTweets.jsp">View All Tweets </a></p>
              <p><a href="A_AllSearchHist.jsp">All Search History</a> </p>
      <p><a href="A_Results.jsp">Social Interaction Emotion Results</a> </p>
              <p><a href="A_Login.jsp">Logout</a></p>
              <p>&nbsp; </p>
              <p class="star">&nbsp;</p>
      </div>
    </ul>
  </div>
  <div class="clr"></div>
</div>
</div>
  <div class="clr"></div>
</div>
</div>
</div>
<div align=center></div></body>
</html>
