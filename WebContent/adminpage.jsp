<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.sql.*,databasecon.Database"%>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Nature Website Layout, Free CSS Templates</title>

<meta name="keywords"
	content="free css templates, nature website, green color, XHTML CSS" />

<meta name="description"
	content="Nature Website, light green color, free css template, XHTML CSS" />

<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="js/mootools-core.js"></script>
<script type="text/javascript" src="js/mootools-more.js"></script>
<script type="text/javascript" src="js/byzoomer-0.9.js"></script>

<script language="javascript" type="text/javascript">
function clearText(field){

    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;

}

window.addEvent('load', function(){
		new ByZoomer();	
	});

</script>
<!--[if lt IE 7]>
<style type="text/css">
    
    #templatemo_header_bottom { behavior: url(iepngfix.htc); }
    
</style>
<![endif]-->

</head>
<body>
	<div id="templatemo_top_bg">
		<!--  Free CSS Templates by TemplateMo.com  -->
		<div class="templatemo_container">

			<div id="templatemo_header">
				<div id="templatemo_logoAP">
					<div align="center">
						<font color="darkblue"
							style="font-size: 50px; align: right;">Admin Page</font>
					</div>
				</div>
				<div id="templatemo_header_bottomAP">
					<div id="templatemo_menuAP">
						<ul>
							<li class="current"><a href="index.html"><b>Home</b></a></li>
							<li><a href="adminuser.jsp"><b> User Details </b></a></li>
							<li><a href="adminofficer.jsp"><b>Officer Details</b></a></li>
							<li><a href="index.html"><b>Logout</b></a></li>
						</ul>
					</div>
				</div>
			</div>
			
			<!-- End Of Header -->

			<div id="templatemo_contentAP">
				<div id="templatemo_content_leftAP">
					<div class="templatemo_post">
						<table width="100%" align="center" cellpadding="2px"
							cellspacing="0" border="1px">
							<tr align="center">
								<td colspan="8">
									<font color="black" size="4"><strong> USER VIEW
											DETAILS </strong> </font></td>
							</tr>

							<tr>


								<td><font color="black" size="4"><strong>Category</strong></font></td>
								<td><font color="black" size="4"><strong>City</strong></font></td>
								<td><font color="black" size="4"><strong>Message</strong></font></td>
								<td><font color="black" size="4"><strong>File Upload</strong></font></td>
								<td><font color="black" size="4"><strong>Username</strong></font></td>
								<!-- <td><font color="black" size="4"><strong>Suggestion</strong></font></td> -->
								<td><font color="black" size="4"><strong>Status</strong></font></td>


							</tr>

							<%
                 
					 try
					 {

						 Connection con=Database.getConnection();

						 Statement st=con.createStatement();

						 String sql="select * from user_query";

						 ResultSet rs=st.executeQuery(sql);
						
						 while(rs.next())
						 {

							 %>
							<tr>
								<td><b><font color="black"><%=rs.getString("Fieldname")%></font></b></td>
								<td><b><font color="black"><%=rs.getString("City")%></font></b></td>
								<td><b><font color="black"><%=rs.getString("Message")%></font></b></td>
								<td><p>
										<img src="fileview.jsp?sid=<%=rs.getString("sid")%>"
											height="200px" width="200px"
											title="<%=rs.getString("Fieldname")%>">
									</p></td>
								<td><font color="black"><%=rs.getString("uname")%></font></td>
								<!--<td><%=rs.getString("Suggestion")%></td>   -->

								<td><b><fonr color="black"><%=rs.getString("Status")%></fonr></b></td>

							</tr>

							<% 
						 
 }
					 }
                      catch(Exception e)
					 {
						 e.printStackTrace();
					 } 
					 
                 	 %>

						</table>


					</div>



				</div>
				<!-- End Of Content Left-->

				<div id="templatemo_content_right">
					<div class="templatemo_section">
						<!--<div class="templatemo_section_1_top">
                        	USER LOGIN
                        </div>
                        <div class="templatemo_section_1_mid">
                        	<div class="templatemo_form">
                                <form method="post" action="user.jsp">
                                    <div class="templatemo_label">
                                        <label>Username :</label>
                                        <label>Password :</label>                            
                                    </div>
                            
                                    <div class="templatemo_textboxes">
                                        	<input name="username" value="Username" type="text" onfocus="clearText(this)" onblur="clearText(this)" class="textfield"/>
                                        <input name="password" value="password" type="password" onfocus="clearText(this)" onblur="clearText(this)" class="textfield"/>
                                    </div>	
                                    <div class="cleaner_with_height"></div>					
                                    <div class="templatemo_login_bottom">
                                      <input type="checkbox" name="remember" class="checkbox"/> <span class="remember"> Remember Me</span>
                                      <input type="submit" name="login" value="" class="button"/>
                                    </div>
                                </form>
                                
                            </div>
                            
                    	<div class="cleaner_with_height"></div>

                        </div>
                        <div class="templatemo_section_1_bottom"></div>
                    </div>
                    
                    <div class="templatemo_section">
                    	<div class="templatemo_section_2_top">
                      USER REGISTERATION
                        </div>
                        <div class="templatemo_section_2_mid">
					<center>
                        <form name="form" method="get" action="">
						<input name="username" value="Username" type="text" onfocus="clearText(this)" onblur="clearText(this)" class="textfield"/>
                        <br /><br /><input name="password" value="password" type="password" onfocus="clearText(this)" onblur="clearText(this)" class="textfield"/>
                        <br /><br /><input name="username" value="Username" type="text" onfocus="clearText(this)" onblur="clearText(this)" class="textfield"/>
                        <br /><br /><input name="password" value="password" type="password" onfocus="clearText(this)" onblur="clearText(this)" class="textfield"/>
                          <br /> <br /><input type="submit" value="submit" />&nbsp;<input type="reset" value="clear" />               
						
						
                        </form></center>	
                        </div>
                        <div class="templatemo_section_2_bottom">
                        </div>-->
					</div>

				</div>
				<!-- End Of right -->

				<!-- <div class="cleaner_with_height"></div>
			</div>
			<!-- End Of Content --
			<div class="cleaner_with_height"></div>
		</div>
		<!-- End Of Container --

	</div>
	<!-- End Of Top bg --
	<div id="templatemo_bottom_bg">

		<div class="templatemo_container">

			<div id="templatemo_bottom_panel">

				<div class="templatemo_section_3"></div>
				<!-- End Of Section 3 --

				<div class="templatemo_section_4">

					<div class="templatemo_section_4_bottom"></div>
				</div>
				<!-- End Of Section 4 --

			</div>
			<!-- End Of bottom panel --
			<div class="cleaner_with_height"></div>-->

		</div>
		<!-- End Of container -->
		<!--  Free CSS Templates by TemplateMo.com  -->
	</div>
	<!-- End Of bottom bg -->
	
	<div style="text-align: center; font-size: 0.75em;"></div>
</body>
</html>