<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.sql.*,databasecon.Database" %>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Nature Website Layout, Free CSS Templates</title>

<meta name="keywords" content="free css templates, nature website, green color, XHTML CSS" />

<meta name="description" content="Nature Website, light green color, free css template, XHTML CSS" />

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
<%


 
String fldname=request.getParameter("fdname");
String msg1=request.getParameter("msg");


%>


<body>
	<div id="templatemo_top_bg">
    <!--  Free CSS Templates by TemplateMo.com  -->
   	  <div class="templatemo_container">
        
        	<div id="templatemo_headerO">
            	<div id="templatemo_logoO">
				<div align="center"><font color="darkblue" style="font-size:50px;align:right;">Officer Suggestion</font>
                </div>
	            	    </div>
                <div id="templatemo_header_bottomOS">
                	<div id="templatemo_menuOS">
                    	<ul>
                        	<li class="current"><a href="index.html"><b>Home</b></a></li>
							
                            <li><a href="officerview.jsp"><b>Query View</b></a></li>
							 <li><a href="officersuggestion.jsp"><b>Suggestion</b></a></li>
                            <li><a href="index.html"><b>Logout</b></a></li>
                        </ul>
                    </div>
                </div>
            </div><!-- End Of Header -->
            
            <div id="templatemo_contentOS">
            	<div id="templatemo_content_leftOS">
                	<div class="templatemo_postOS">
                    	
						 
						 <form action="officerviewdb.jsp" name="form" method="get"
									onSubmit="return validation()">
                   <table width="60%" align="center" cellpadding ="10px" cellspacing="0" border="1px"> 
					 <tr align="center">
					 	<td colspan="3"> <font  size="4"><strong>Field Officer Suggestion  </strong></font></td>
					 	</tr>
					 	

										<tr>
											<td><font color="black" size="4"><strong>Query type</strong></font></td>
											<td><input type="text" size="48" name="fdname" value="<%=fldname%>" readonly></td>
										</tr>
					 	
			                            <tr>
											<td><strong><font color="black" size="4">Query</font></strong></td>
											<td><input type="text" size="48" name="qry" value="<%=msg1%>"></td>
										</tr>
					 	                
										<tr>
											<td><strong><font color="black" size="4">Suggestion</font></strong></td>
											<td><textarea input type="text" name="sugg"   rows="10"cols=" 46"></textarea></td>
										</tr>
										<tr>
										
											<td></td><td><input type="submit" value="Sumbit" /></td>

										</tr>
										</table>
										</form>






	</div>
                    
                 
                      
              </div><!-- End Of Content Left-->
                
                <div id="templatemo_content_rightUQ">
				<br><br><br><br>
                	<div class="templatemo_sectionUSV">
                    	<div class="templatemo_section_1_topUQ">
                        	
                        </div>
                        <div class="templatemo_section_1_midUQ">
                        	<div class="templatemo_form">
                                <form method="post" action="user.jsp">
                                    <img src="images/apserver.gif" width="210" height="150">
                                </form>
                                
                            </div>
                            
                    	<div class="cleaner_with_height"></div>

                        </div>
                       <div class="templatemo_section_1_bottom"></div>
                    </div>
                    
                   <!--  <div class="templatemo_section">
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
                    
                </div><!-- End Of right -->
                
                <!-- <div class="cleaner_with_height"></div>
        </div><!-- End Of Content --
        <div class="cleaner_with_height"></div>
   	  </div><!-- End Of Container --
    	
    </div><!-- End Of Top bg --
    <div id="templatemo_bottom_bg">
    
    	<div class="templatemo_container">
        
        	<div id="templatemo_bottom_panel">
            
				<div class="templatemo_section_3">
                
    	        	
                    
	            </div><!-- End Of Section 3 --
                
                <div class="templatemo_section_4">
                	
                    <div class="templatemo_section_4_bottom">
                    	
                    </div>
                </div><!-- End Of Section 4 --
                
			</div><!-- End Of bottom panel --
            <div class="cleaner_with_height"></div>-->
            
        </div><!-- End Of container -->
        <!--  Free CSS Templates by TemplateMo.com  -->
    </div><!-- End Of bottom bg -->
    
    	
   
<div style="text-align: center; font-size: 0.75em;"></div>
</body>
</html>