<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" import="java.sql.*,databasecon.Database" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String a=request.getParameter("uname");
String b=request.getParameter("upass");
String c=request.getParameter("email");
String d=request.getParameter("mob");
String e=request.getParameter("address");

try
{
Connection con=Database.getConnection();
String query="insert into user_registration(Username,Password,Email,Moblie,Address)values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"')";
PreparedStatement pstmt=con.prepareStatement(query);
int x=pstmt.executeUpdate();

           if(x>0)
                {
				           response.sendRedirect("index.html");
			}
            else
                {
            	response.sendRedirect("index.html");
               }
}
catch(Exception e1)
{
e1.printStackTrace();
out.print("reg");
}
%>
</body>
</html>