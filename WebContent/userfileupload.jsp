<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.oreilly.servlet.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.io.*"%>
<%@page import="java.text.*" %>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*" %>
<%@ page language="java" import="java.sql.*" errorPage="" %>
<%@ page language="java" import="databasecon.Database" %>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>


<%	    
String uname1=(String)session.getAttribute("uname");

String sugg="Suggestion will be given";
String stat="pending";
		 
		Connection con = null;  
		Statement stmt=null;
	   String fstore ="FileStore";
		 
  
		ArrayList list = new ArrayList();
		ServletContext context = getServletContext();
		String dirName = getServletContext().getRealPath("")+File.separator+fstore; 
	  
		File fold=new File(dirName);
		
		if(!fold.exists())
		{
			fold.mkdir();
		}
	            
		System.out.println("Directory Name " +dirName);
		
		String paramname=null;
		String size=null;
	    String image=null;
	   
		String fieldname1=null;
		String city1=null;
		String  message1=null;
		String fileupload1=null;
		
		
		long size_kb=0;
		FileInputStream fs=null;
 
		File file1 = null;
		try 
		{
			MultipartRequest multi = new MultipartRequest(request, dirName, 10*1024 * 1024);
			java.util.Enumeration params = multi.getParameterNames();
			while (params.hasMoreElements()) 
			{
				paramname = (String) params.nextElement();
			
								
				if(paramname.equalsIgnoreCase("fieldname"))
				{
					fieldname1=multi.getParameter(paramname);
				}
				
				if(paramname.equalsIgnoreCase("city"))
				{
					city1=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("message"))
				{
				message1=multi.getParameter(paramname);
				}
				
				if(paramname.equalsIgnoreCase("fileupload"))
				{
					fileupload1=multi.getParameter(paramname);
				}
				
				
			}
					
		int f = 0;
		Enumeration files = multi.getFileNames();	
		while (files.hasMoreElements()) 
		{
			paramname = (String) files.nextElement();
			if(paramname.equals("d1"))
			{
				paramname = null;
			}
		
		if(paramname != null)
		{
			f = 1;
			image = multi.getFilesystemName(paramname);
			 
			String fPath = context.getRealPath("")+File.separator+fstore+File.separator+image;//\\Gallery\\
			System.out.println("Filepath :"+fPath);
			
			file1 = new File(fPath);
			fs = new FileInputStream(file1);
			list.add(fs);
			
			
				
		String ss=fPath;
		FileInputStream fis = new FileInputStream(ss);
		StringBuffer sb1=new StringBuffer();
		int i = 0;
        while ((i = fis.read()) != -1) {
                 if (i != -1) {
                       //System.out.println(i);
						 String hex = Integer.toHexString(i);
						// session.put("hex",hex);
						 sb1.append(hex);
						// sb1.append(",");
						
			long file_size = file1.length();
			size_kb=file_size/1024;
			size=size_kb+"kb".toString();
			
			

                 }
			
    	}
         
			System.out.println(size_kb);
			fis.close();
				
		}		
	}
///Inserting in Database
	        FileInputStream fs1 = null;
  		
			con =Database.getConnection();  
			PreparedStatement ps=con.prepareStatement("insert into user_query(Fieldname,City,Message,Fileupload,Uname,Suggestion,Status) values(?,?,?,?,?,?,?)");
			
			
			 	
				ps.setString(1,fieldname1);
				ps.setString(2, city1);
				ps.setString(3, message1);
				
				
				ps.setBinaryStream(4, (InputStream)fs, (int)(file1.length()));
				ps.setString(5,uname1);
				ps.setString(6,sugg);
				ps.setString(7,stat);
				
				 
				 
				
     
	   if(f == 0)
		ps.setObject(4,null);
		else if(f ==4)
		{
			fs1 = (FileInputStream)list.get(0);
			ps.setBinaryStream(4,fs1,fs1.available());
		}	
			int x=ps.executeUpdate();
		
			if(x>0)
			{
				
				//System.out.println("Succes");
				 response.sendRedirect("userquery.jsp");
			}
			else
				{
				
				//System.out.println("failed");
				response.sendRedirect("userquery.jsp");
				}
		}
	catch(Exception e2)
	{
		e2.printStackTrace();
		//out.println(e2.getMessage());
	}
	
 %>







 




