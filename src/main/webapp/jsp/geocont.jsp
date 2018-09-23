<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>SBI</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="../../../css/sbi_css.css" rel="stylesheet" type="text/css">
<script type="text/javascript" language="JavaScript" src="../../../script/sbi.js"></script>
<script type="text/javascript" language="JavaScript" src="../../../script/calendar.js"></script>

<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
</head>


<body onLoad="check('../../../images/')" onResize="check('../../../images/')">
<table border="0" cellspacing="0" cellpadding="0" height="100%">
	<tr> <td class="logo">
		<!-- position header -->
	
	<tiles:insertAttribute name="header"/>
	

	</td></tr>
	<tr>
    <td class="top_nav_bg">
		<!-- position nav -->
		<tiles:insertAttribute name="topnav"/>

		
	</td>
  </tr>
	<tr>
    <td class="div_bg">
    <!-- position blank -->
    
    <tiles:insertAttribute name="blank"/>
     </td>
  </tr>
  <tr><td class="con">
  	<table cellpadding="0" cellspacing="0" border="0" id="container" class="con_table">
		<tr>
			<td class="con_left">
			<!-- position left -->
			
			<tiles:insertAttribute name="leftmenu"/>

			
			
			</td>
			<td class="con_right">
		<!-- position body -->
		<tiles:insertAttribute name="body"/>
		
		
  			</td>
  		</tr>
  	</table>
  	  </td>
  </tr>
  <tr>
  <td class="footer">
  <!-- postion footer -->
  <tiles:insertAttribute name="footer"/>
  </td></tr>
</table>

</body>
</html>
