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

String a=request.getParameter("fcname");
String b=request.getParameter("fcpass");
String c=request.getParameter("email");
String d=request.getParameter("fccity");
try
{
Connection con=Database.getConnection();
String query="insert into officer_registration(offrname,Password,Email,City)values('"+a+"','"+b+"','"+c+"','"+d+"')";
PreparedStatement pstmt=con.prepareStatement(query);
int x=pstmt.executeUpdate();

           if(x>0)
                {
            	response.sendRedirect("officer.jsp");
				}
            else
                {
            	response.sendRedirect("officer.jsp");
               }
}
catch(Exception e1)
{
e1.printStackTrace();
}
%>

</body>
</html>