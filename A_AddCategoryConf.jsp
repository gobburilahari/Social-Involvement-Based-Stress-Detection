<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All Category...</title>
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

<script language="javascript" type="text/javascript">      <!--Start Reg Validation Jai Siddalinga-->
function valid()
{
var na3=document.s.categorie.value;
if(na3=="")

{
alert("Please Enter Categorie");
document.s.categorie.focus();
return false;
}
else
{

}
}
</script> 


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
        <div id="templatemo_content">
<h2>Add Categories...         </h2>
             
            
            
                             <p>
                               <%@ include file="connect.jsp" %>
                               <%@ page import="java.io.*"%>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import ="java.text.SimpleDateFormat" %>

            <%
			       
					
				    ArrayList list = new ArrayList();
					
					ServletContext context = getServletContext();
					
					String dirName =context.getRealPath("Gallery/");
					
					String title=null,categorie=null,location1=null,sk=null,bin = "", paramname=null;
					
					FileInputStream fs=null;
					
					File file1 = null;	
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);	
						Enumeration params = multi.getParameterNames();
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							
							if(paramname.equalsIgnoreCase("categorie"))
							{
								categorie=multi.getParameter(paramname);
								
							}
							
							
							}
							
						
						
						
		
						FileInputStream fs1 = null;
			 			String query1="select * from categories  where categorie='"+categorie+"' "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		out.print("categorie Already Exist");
							
							
				%>
			<p><a href="A_AddCategory.jsp" class="style8">Back</a></p>
				<%
				
					   }
					   else
					   {
					   
					   SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		   	           SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			           Date now = new Date();

			           String strDate = sdfDate.format(now);
			           String strTime = sdfTime.format(now);
			           String dt = strDate + "   " + strTime;
			
					  
						
					
					String participant = (String)application.getAttribute("participant");
					
					String strQuery2 = "insert into categories(categorie) values('"+categorie+"')";
					connection.createStatement().executeUpdate(strQuery2);
					
			
							out.print("categorie Added Successfully");
							
			%>			
			<p><a href="A_AddCategory.jsp" class="style8">Back</a></p>
			<%
			
					
					
					
					
						}
					}
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>

		  </p>
            
            <p align="right">&nbsp;</p>
			<form action="search_friend.jsp" method="post">
			</form>
            
        </div>
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
