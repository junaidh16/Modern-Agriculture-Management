<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" import="java.sql.*,databasecon.Database" %>
 
<%

String a=request.getParameter("uname");
session.setAttribute("uname",a);
String b=request.getParameter("upass");


try
{
Connection con=Database.getConnection();
String query="select * from user_registration where Username='"+a+"' && Password='"+b+"' ";
PreparedStatement pstmt=con.prepareStatement(query);
ResultSet rs=pstmt.executeQuery();
           if(rs.next())
                {
            	response.sendRedirect("userquery.jsp");
				}
            else
                {
            	response.sendRedirect("user1.html");
               }
}
catch(Exception e1)
{
e1.printStackTrace();
}
%> 