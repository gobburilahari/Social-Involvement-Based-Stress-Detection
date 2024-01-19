<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View  Tweets...</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="file:///C|/Tomcat 6.0/webapps/sample/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="file:///C|/Tomcat 6.0/webapps/sample/js/cufon-yui.js"></script>
<script type="text/javascript" src="file:///C|/Tomcat 6.0/webapps/sample/js/arial.js"></script>
<script type="text/javascript" src="file:///C|/Tomcat 6.0/webapps/sample/js/cuf_run.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 16px}
.style5 {color: #FF00FF}
-->
</style>
</head>

<%@ include file="connect.jsp" %>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="file:///C|/Tomcat 6.0/webapps/sample/index.html" class="style1"></a></h1>
      </div>
      <div class="menu">
        <ul>
          <li><a href="file:///C|/Tomcat 6.0/webapps/sample/index.html" class="active"><span>Home</span></a></li>
          <li><a href="file:///C|/Tomcat 6.0/webapps/sample/U_Login.jsp"><span>OSN User</span></a></li>
          <li><a href="file:///C|/Tomcat 6.0/webapps/sample/A_Login.jsp"><span>Admin Server</span></a></li>
         
        </ul>
      </div>
      <div class="clr"></div>
    </div>
    <div class="headert_text_resize"> <img src="file:///C|/Tomcat 6.0/webapps/sample/images/text_area_img.jpg" alt="" width="395" height="396" />
      <div class="textarea">
        <h2>Detecting Stress Based on Social Interactions in Social Networks</h2>
        <p> ----- Stress detection, factor graph model, micro-blog, social media, healthcare, social interaction.</p>
      </div>
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
  <div class="body">
    <div class="body_resize">
      <div class="left">
        <h2 class="style5">&nbsp;</h2>
		
		<div id="templatemo_content">
	 <div class="left">
	  
	     <h2>Give Your Retweet To Tweet:        </h2>
             
            
            
            <div class="cleaner_h40">
			<%
			try{
String s1,s2,s3,s4,s5,s6,s7,s8,s9,neg="negative",pos="positive",str="stress" ;
int i=0,count1=0,count2=0,count3=0;
    String query="select * from tweets "; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
			s2=rs.getString(5);	
			        String sql1="select * from filter where categorie='"+pos+"' ";
					Statement st1=connection.createStatement();
			  		ResultSet rs1=st1.executeQuery(sql1);
					while ( rs1.next() )
			   			{
			   			 String	t1=rs1.getString(1);
			             String t2=rs1.getString(2);
			   			 	
							  if ((s2.contains(t2)))
									{
									  count1++;
									}
									
			           }
					  String sql2="select * from filter where categorie='"+neg+"' ";
					Statement st2=connection.createStatement();
			  		ResultSet rs2=st2.executeQuery(sql2);
					while ( rs2.next() )
			   			{
			   			 String	t1=rs2.getString(1);
			             String t2=rs2.getString(2);
			   			 	
							  if ((s2.contains(t2)))
									{
									  count2++;
									}
									
			           }
					   String sql3="select * from filter where categorie='"+str+"' ";
					Statement st3=connection.createStatement();
			  		ResultSet rs3=st1.executeQuery(sql1);
					while ( rs3.next() )
			   			{
			   			 String	t1=rs3.getString(1);
			             String t2=rs3.getString(2);
			   			 	
							  if ((s2.contains(t2)))
									{
									  count3++;
									}
									
			           }
					   
					} 
					out.print(count1);
					out.print(count2);
					out.print(count3);  
				}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					
					
					%>
					
					
        </div>
	</div>
             
	  
        
	</div>
      </div>
      <div class="right">
        <h2>Sidebar Menu</h2>
        <ul>
          <li><a href="file:///C|/Tomcat 6.0/webapps/sample/U_Main.jsp">Home</a></li>
           <li><a href="file:///C|/Tomcat 6.0/webapps/sample/U_Login.jsp">LogOut </a></li>
          <li></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="FBG">
    <div class="FBG_resize">
      <div class="blok">
        <h2><span>Image</span> Gallery</h2>
        <img src="file:///C|/Tomcat 6.0/webapps/sample/images/gallery_1.gif" alt="" width="68" height="68" /><img src="file:///C|/Tomcat 6.0/webapps/sample/images/gallery_2.gif" alt="" width="68" height="68" /><img src="file:///C|/Tomcat 6.0/webapps/sample/images/gallery_3.gif" alt="" width="68" height="68" /><img src="file:///C|/Tomcat 6.0/webapps/sample/images/gallery_4.gif" alt="" width="68" height="68" /><img src="file:///C|/Tomcat 6.0/webapps/sample/images/gallery_5.gif" alt="" width="68" height="68" /><img src="file:///C|/Tomcat 6.0/webapps/sample/images/gallery_6.gif" alt="" width="68" height="68" />
        <div class="clr"></div>
        <h2>&nbsp;</h2>
      </div>
    </div>
  </div>
  <div class="footer">
    <div class="clr"></div>
  </div>
</div>
<div align=center></div></body>
</html>
