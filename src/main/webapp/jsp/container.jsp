<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>SBI</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="../css/sbi_css.css" rel="stylesheet" type="text/css">
<script type="text/javascript" language="JavaScript" src="../script/sbi.js"></script>
<script type="text/javascript" language="JavaScript" src="../script/calendar.js"></script>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
</head>
<script type="text/javascript">
function save1()
{
	document.forms[0].action="insert";
	document.forms[0].submit();
}

</script>
<body onLoad="check('../images/')" onResize="check('../images/')">
<form>
<table border="0" cellspacing="0" cellpadding="0" height="100%">
	<tr> 
			<td class="logo">
		
		<!-- Header -->
			
			<tiles:insertAttribute name="header"/>
			
		
			</td>
	</tr>
	
	<tr>
		    <td class="top_nav_bg">
			
			<!-- Navigation  -->
			<%-- <%@ include file="/jsp/navigation.jsp" %> --%>
			<tiles:insertAttribute name="topnav"/>
			
			</td>
 	 </tr>
 	 
	<tr>
		    <td class="div_bg">
		    
		    <!-- blank -->
		   <%--  <%@ include file="/jsp/blank.jsp" %> --%>
		   <tiles:insertAttribute name="blank"/>
		     </td>
  	</tr>
  <tr><td class="con">
  	<table cellpadding="0" cellspacing="0" border="0" id="container" class="con_table">
		<tr>
			<td class="con_left">
	
	<!-- left menu -->
	
	<tiles:insertAttribute name="leftmenu"/>
			
			</td>
			
			<td class="con_right">
				<!-- right menu -->
				
				
				<tiles:insertAttribute name="body"/>
  			</td>
  		</tr>
  	</table>
  <tr>
		  <td class="footer">
		
		<!-- footer  -->

		<tiles:insertAttribute name="footer"/>
			</td>
</tr>
</table>
</form>
</body>
</html>
