<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" import="java.sql.*,databasecon.Database" %>
 
<%

String a=request.getParameter("fdname");
String b=request.getParameter("qry");
 
String c=request.getParameter("sugg");
String d="Solved";
String aa=(String)session.getAttribute("fo1");


try
{
Connection con=Database.getConnection();
String query="update user_query set Suggestion='"+c+"',Status='"+d+"',Fieldoffname='"+aa+"' where Message='"+b+"' && Fieldname='"+a+"'";
PreparedStatement pstmt=con.prepareStatement(query);
int x=pstmt.executeUpdate();

           if(x>0)
                {
            	response.sendRedirect("officerview.jsp");
				}
            else
                {
            	response.sendRedirect("officerview.jsp");
               }
}
catch(Exception e1)
{
e1.printStackTrace();
}
%>