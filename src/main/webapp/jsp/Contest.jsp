<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>SBIL-Contest Prototype</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="../css/sbi_css.css" rel="stylesheet" type="text/css">
<script type="text/javascript" language="JavaScript" src="../script/sbi.js"></script>
<script type="text/javascript" language="JavaScript" src="../script/calendar.js"></script>
</head>

<body onLoad="check('../images/')" onResize="check('../images/')">
<table border="0" cellspacing="0" cellpadding="0" height="100%">
	<tr> <td class="logo">
		<table  border="0" cellpadding="0" cellspacing="0" class="table_width" align="right">
        <tr> 
          <td rowspan="2" class="info_welcome">Welcome:</td>
          <td height="12px"></td>
          <td ></td>
          <td></td>
          <td></td>
          <td></td>
          <td rowspan="2" class="info_logout" onMouseOver="this.className='info_logoutOver'" onMouseOut="this.className='info_logout'" onClick="logoff('../login.html');">Logout</td>
        </tr>
        <tr> 
          <td class="info_data">Mr. Ram</td>
          <td class="info">Role:</td>
          <td class="info_data">Administrator</td>
          <td class="info">Location:</td>
          <td class="info_data">Hyderabad</td>
        </tr>
      </table>
	
	</td></tr>
	<tr>
    <td class="top_nav_bg">
		<table cellpadding="0" cellspacing="0" border="0" class="table_width">
			<tr>
				<td class="top_tab"onMouseOver="this.className='top_tab_over'" onMouseOut="this.className='top_tab'"  onClick="MM_openBrWindow('search_geo_hierarchy.jsp','_parent','status=yes,scrollbars=yes,resizable=yes')">Home</td>
				<td class="top_tab_div"></td>
				<td class="top_tab" onMouseOver="this.className='top_tab_over'" onMouseOut="this.className='top_tab'" onClick="MM_openBrWindow('setup_geo_hierarchy.jsp','_parent','status=yes,scrollbars=yes,resizable=yes')">Setup Geo Hierarchy</td>
				<td class="top_tab_div"></td>
				<td class="top_tab" onMouseOver="this.className='top_tab_over'" onMouseOut="this.className='top_tab'" onClick="MM_openBrWindow('setup_human_hierarchy.jsp','_parent','status=yes,scrollbars=yes,resizable=yes')">Setup Human Hierarchy</td>
				<td class="top_tab_div"></td>
				<td class="top_tab_sel" onClick="MM_openBrWindow('contest.jsp','_parent','status=yes,scrollbars=yes,resizable=yes')">Contest</td>
          <td class="top_tab_div"></td>
			</tr>
		</table>
	</td>
  </tr>
	<tr>
    <td class="div_bg">&nbsp; </td>
  </tr>
  <tr><td class="con">
  	<table cellpadding="0" cellspacing="0" border="0" id="container" class="con_table">
		<tr>
			<td class="con_left">
				<table cellpadding="0" cellspacing="0" border="0" class="left_nav_table">
              <tr> 
                <td class="left_tab_sel" onClick="MM_openBrWindow('contest.jsp','_parent','status=yes,scrollbars=yes,resizable=yes')"> <span class="left_tab_sel_img">Search Contest</span> </td>
              </tr>
			   <tr> 
                <td class="left_tab" onMouseOver="this.className='left_tab_over'" onMouseOut="this.className='left_tab'"  onClick="MM_openBrWindow('reward_items.html','_parent','status=yes,scrollbars=yes,resizable=yes')">Reward Items</td>
              </tr>
			   <tr> 
                <td class="left_tab" onMouseOver="this.className='left_tab_over'" onMouseOut="this.className='left_tab'"  onClick="MM_openBrWindow('reports.html','_parent','status=yes,scrollbars=yes,resizable=yes')">Reports</td>
              </tr>
            </table>
			
			</td>
			<td class="con_right">
				<table cellpadding="0" cellspacing="0" border="0">
              <tr> 
                <td class="page_title">Search Contest Definition</td>
              </tr>
              <tr> 
                <td class="button_top"> 
				<input type="button" class="butt" value="Add" onMouseOver="this.className='buttOver'" onMouseOut="this.className='butt'" onClick="MM_openBrWindow('contest_definition_add.html','_parent','status=yes,scrollbars=yes,resizable=yes,channelmode=yes,menubar=no,location=no')"> 
                  <input type="button" class="butt" value="Reset" onMouseOver="this.className='buttOver'" onMouseOut="this.className='butt'"> 
                  <input name="button3" type="button" class="butt" onMouseOver="this.className='buttOver'" onMouseOut="this.className='butt'" value="Search"></td>
              </tr>
              <tr> 
                <td class="datacell"> <table border="0" cellspacing="0" cellpadding="0" class="data_table">
                    <tr> 
                      <td>Name<span class="mandatory">*</span></td>
                      <td><input name="text" type="text" class="text" onFocus="this.className='textover'" onBlur="this.className='text'"id="text2" value=""></td>

					   <td>Recurrence Type<span class="mandatory">*</span></td>
                      <td><select name="select" class="sel">
                          <option></option>
                          <option>Monthly</option>
						   <option>Quarterly</option>
						    <option>Half-Yearly</option>
							 <option>Yearly</option>
							  <option>Special</option>
                                                  </select></td>
                    </tr>
					 <tr> 
                      <td>Valid From<span class="mandatory">*</span></td>
                      <td><input name="text4" type="text" class="text" onFocus="this.className='textover'" onBlur="this.className='text'"id="text5" value=""> 
                        <img onClick="displayCalendar(document.getElementById('text5'),'mm/dd/yyyy',this)"  src="../images/cal.gif" name="imgCalendar" width="20px" height="15px" border="0" alt="" align="middle" class="img_link"></td>
                   
                      <td>Valid To<span class="mandatory">*</span></td>
                      <td><input name="text4" type="text" class="text" onFocus="this.className='textover'" onBlur="this.className='text'"id="text5" value=""> 
                        <img onClick="displayCalendar(document.getElementById('text5'),'mm/dd/yyyy',this)"  src="../images/cal.gif" name="imgCalendar" width="20px" height="15px" border="0" alt="" align="middle" class="img_link"></td>
                    </tr>
					
                 
                  </table></td></tr>
				  
				  <tr><td class="section_head">Contest Details</td></tr>
					<tr>
                <td class="dashboardcell"> <table cellpadding="0"  cellspacing="0" class="dashboard">
                    <tr> 
                      <td nowrap class="table_bar" width="1%"></td>
					  <td nowrap class="table_bar" onMouseOver="this.className='table_bar_over'" onMouseOut="this.className='table_bar'" width="30%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                      <td nowrap class="table_bar" onMouseOver="this.className='table_bar_over'" onMouseOut="this.className='table_bar'">Valid From</td>
                      <td nowrap class="table_bar" onMouseOver="this.className='table_bar_over'" onMouseOut="this.className='table_bar'">Valid To</td>
                      <td nowrap class="table_bar" onMouseOver="this.className='table_bar_over'" onMouseOut="this.className='table_bar'">Recurrence Type</td>
                      <td nowrap class="table_bar" onMouseOver="this.className='table_bar_over'" onMouseOut="this.className='table_bar'">Primary Approver</td>
					  <td nowrap class="table_bar" onMouseOver="this.className='table_bar_over'" onMouseOut="this.className='table_bar'">Secondary Approver</td>
					  <td nowrap class="table_bar" onMouseOver="this.className='table_bar_over'" onMouseOut="this.className='table_bar'">Contest Status</td>
					  
                    </tr>
                    <tr onMouseOver="this.className='tablecell_over'" onMouseOut="this.className=''"> 
                      <td class="tablecell" > <input type="radio" name="radiobutton" value="radiobutton" checked></td>
                      <td class="tablecell">SBIL Contest</td>
                      <td class="tablecell">01/10/2009</td>
                      <td class="tablecell">01/10/2010</td>
                      <td class="tablecell">Quarterly</td>
						<td class="tablecell"></td>
						<td class="tablecell"></td>
						<td class="tablecell">Active</td>
						
                    </tr>
                   
              </tr>
             
            </table>
  			</td>
  		</tr>
		<tr><td class="button_bottom">
					<table cellpadding="0" cellspacing="0" border="0">
						<tr><td>
					
                    <input name="button2" type="button" class="butt" onMouseOver="this.className='buttOver'" onMouseOut="this.className='butt'" value="Update" onClick="MM_openBrWindow('contest_definition.html','_parent','status=yes,scrollbars=yes,resizable=yes,channelmode=yes,menubar=no,location=no')">
                        
                      </td>
					  <td class="button_right">
					  <table cellpadding="0" cellspacing="2" border="0" class="table_width">
					  <tr><td>
					  <button class="butt2" onMouseOver="this.className='buttOver2'" onMouseOut="this.className='butt2'"><img src="../images/btn_first.gif" width="25px" height="14px"></button>
					  </td><td>
					  <button class="butt" onMouseOver="this.className='buttOver'" onMouseOut="this.className='butt'"><img src="../images/btn_pri.gif" width="12px" height="12px"></button>
					  </td>
					        <td>(1 of 1)</td>
					  <td>
					  <button class="butt" onMouseOver="this.className='buttOver'" onMouseOut="this.className='butt'"><img src="../images/btn_next.gif" width="12px" height="12px"></button> 
						</td>
						<td>
					  <button class="butt2" onMouseOver="this.className='buttOver2'" onMouseOut="this.className='butt2'"><img src="../images/btn_last.gif" width="25px" height="14px"></button>
					  
					  </td>
					  </tr>
					  </table>
					  </td>
		</tr>
  	</table>
  
</table>

</body>
</html>
