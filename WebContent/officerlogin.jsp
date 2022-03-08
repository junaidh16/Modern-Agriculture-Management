<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@ page language="java" import="java.sql.*,databasecon.Database" %>
 
<%

String a=request.getParameter("fcname");
String b=request.getParameter("fcpass");
String c=request.getParameter("fccity");




try
{
Connection con=Database.getConnection();
String query="select * from officer_registration where offrname='"+a+"' && Password='"+b+"' && City='"+c+"'";
PreparedStatement pstmt=con.prepareStatement(query);
ResultSet rs=pstmt.executeQuery();

           if(rs.next())
                {
        	   String fo=rs.getString("offrname");
			   session.setAttribute("fo1",fo);
			   
			   String fc=rs.getString("City");
               session.setAttribute("fc1",fc);
			  // System.out.println("********fc city is******"+c);
			   

			  // System.out.println("fo name is"+fo);
        	   
            	response.sendRedirect("officerview.jsp");
				}
            else
                {
            	response.sendRedirect("officer1.jsp");
               }
}
catch(Exception e1)
{
e1.printStackTrace();
}
%> 