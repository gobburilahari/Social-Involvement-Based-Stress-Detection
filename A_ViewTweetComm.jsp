<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All tweets comment ...</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 16px}
.style6 {
	color: #CC0066;
	font-style: italic;
	font-weight: bold;
}
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
            <div class="cleaner_h40">
			<p><table width="658" border="1.5" align="center"  cellpadding="0" cellspacing="0" >
			<tr>
			<td width="99" height="44" align="center" valign="middle" style="color: #2c83b0;">
			<div align="left" class="style3 style4 style14 style7" style="margin-left:20px;">Tweet Name</div></td>
			<td width="78" align="center" valign="middle" style="color: #2c83b0;">
			<div align="left" class="style3 style4 style14 style7" style="margin-left:20px;">Tweet By</div></td>
			<td><div align="left" class="style4 style7 style14" style="margin-left:20px;"><strong>Comment</strong></div></td>
			<td width="97" height="44" align="center" valign="middle" style="color: #2c83b0;">Date</td>
			</tr>
			
<%@ include file="connect.jsp" %>


					<%
						
					
					String tname=request.getParameter("tname");
						
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						   	String query="select * from tweets where tname='"+tname+"'"; 
						   	Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(query);
					   		while ( rs1.next() )
					   		{
								i=rs1.getInt(1);
								String tn=rs1.getString(3);
								String c_user=rs1.getString(2);
								String cmt=rs1.getString(5);
								String dt=rs1.getString(6);
							
							
					%>
			
			
		<tr>
			
			  <td  width="99" height="44" align="center" valign="middle" style="color:#000000;">
			  <div align="left" class="style6 style10" style="margin-left:20px;"><%out.println(tn);%></div></td>
				 <td  width="78" align="center" valign="middle" style="color:#000000;"><div align="center"> 
			  <span class="style6 style10" style="margin-left:20px;"><a href="A_UserProfile.jsp?value=<%=c_user%>&type=<%="tweets"%>"> <%out.println(c_user);%> </a> </span></div></td>
			  <td  width="113" height="44" align="center" valign="middle" style="color:#000000;"> <%out.println(cmt);%></td>
			   <td  width="97" height="44" align="center" valign="middle" style="color:#000000;"> <%out.println(dt);%></td>
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
			
				</p>
            
            <p align="right">&nbsp;</p>
			<p align="right"><a href="A_ViewTweets.jsp" class="style2">Back</a></p>
			
	</div>
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
