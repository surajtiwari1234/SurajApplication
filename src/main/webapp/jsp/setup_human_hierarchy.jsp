<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>SBI</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="../css/sbi_css.css" rel="stylesheet" type="text/css">
<script type="text/javascript" language="JavaScript" src="../script/sbi.js"></script>
<script type="text/javascript" language="JavaScript" src="../script/calendar.js"></script>
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
				<td class="top_tab"onMouseOver="this.className='top_tab_over'" onMouseOut="this.className='top_tab'"  onClick="MM_openBrWindow('search_geo_hierarchy.html','_parent','status=yes,scrollbars=yes,resizable=yes')">Home</td>
				<td class="top_tab_div"></td>
				<td class="top_tab" onMouseOver="this.className='top_tab_over'" onMouseOut="this.className='top_tab'" onClick="MM_openBrWindow('setup_geo_hierarchy.html','_parent','status=yes,scrollbars=yes,resizable=yes')">Setup Geo Hierarchy</td>
				<td class="top_tab_div"></td>
				<td class="top_tab_sel" onClick="MM_openBrWindow('setup_human_hierarchy.html','_parent','status=yes,scrollbars=yes,resizable=yes')">Setup Human Hierarchy</td>
				<td class="top_tab_div"></td>
				<td class="top_tab" onMouseOver="this.className='top_tab_over'" onMouseOut="this.className='top_tab'" onClick="MM_openBrWindow('contest.html','_parent','status=yes,scrollbars=yes,resizable=yes')">Contest</td>
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
                <td class="left_tab_sel" onClick="MM_openBrWindow('search_geo_hierarchy.html','_parent','status=yes,scrollbars=yes,resizable=yes')"> <span class="left_tab_sel_img">Personal Details</span> </td>
              </tr>
              <tr> 
                <td class="left_tab" onMouseOver="this.className='left_tab_over'" onMouseOut="this.className='left_tab'" onClick="MM_openBrWindow('human_her_qualification.html','_parent','status=yes,scrollbars=yes,resizable=yes')"> 
                  Qualification 
                              &amp; Official Details</td>
              </tr>
			  <tr> 
                <td class="left_tab" onMouseOver="this.className='left_tab_over'" onMouseOut="this.className='left_tab'"  onClick="MM_openBrWindow('human_her_contact.html','_parent','status=yes,scrollbars=yes,resizable=yes')">Contact 
                  Details</td>
              </tr>
			  <tr> 
                <td class="left_tab" onMouseOver="this.className='left_tab_over'" onMouseOut="this.className='left_tab'"  onClick="MM_openBrWindow('human_her_specific.html','_parent','status=yes,scrollbars=yes,resizable=yes')">Specific 
                  Details </td>
              </tr>
			  <tr> 
                <td class="left_tab" onMouseOver="this.className='left_tab_over'" onMouseOut="this.className='left_tab'"  onClick="MM_openBrWindow('human_her_assignment.html','_parent','status=yes,scrollbars=yes,resizable=yes')">Assignment</td>
              </tr>
            </table>
			
			</td>
			<td class="con_right">
				<table cellpadding="0" cellspacing="0" border="0">
              <tr> 
                <td class="page_title">Personal Details</td>
              </tr>
              <tr> 
                <td class="button_top"><input type="button" class="butt" value="Clear" onMouseOver="this.className='buttOver'" onMouseOut="this.className='butt'"> 
                  <input type="button" class="butt" value="Save Draft" onMouseOver="this.className='buttOver'" onMouseOut="this.className='butt'"> 
                  <input name="button3" type="button" class="butt" onMouseOver="this.className='buttOver'" onMouseOut="this.className='butt'" onclick="save1()"value="Save"></td>
              </tr>
              <tr> 
                <td class="datacell"> <table border="0" cellspacing="0" cellpadding="0" class="data_table">
                    <tr> 
                      <td width="15%">Title<span class="mandatory">*</span></td>
                      <td><select name="select" class="sel">
                          <option> </option>
                          <option selected>Mr</option>
                          <option>Ms</option>
                        </select></td>
                    </tr>
                    <tr> 
                      <td>First Name<span class="mandatory">*</span></td>
                      <td><input name="text" type="text" class="text" onFocus="this.className='textover'" onBlur="this.className='text'"id="text2" value="Sanjay"></td>
                    </tr>
                    <tr> 
                      <td>Middle Name</td>
                      <td><input name="text2" type="text" class="text" onFocus="this.className='textover'" onBlur="this.className='text'"id="text3"></td>
                    </tr>
                    <tr> 
                      <td>Last Name<span class="mandatory">*</span></td>
                      <td><input name="text3" type="text" class="text" onFocus="this.className='textover'" onBlur="this.className='text'"id="text4" value="majrekar"></td>
                    </tr>
                    <tr> 
                      <td>Date of Birth<span class="mandatory">*</span></td>
                      <td><input name="text4" type="text" class="text" onFocus="this.className='textover'" onBlur="this.className='text'"id="text5" value="05/03/1968"> 
                        <img onClick="displayCalendar(document.getElementById('text5'),'mm/dd/yyyy',this)"  src="../images/cal.gif" name="imgCalendar" width="20px" height="15px" border="0" alt="" align="middle" class="img_link"></td>
                    </tr>
                    <tr> 
                      <td>Date of Joining<span class="mandatory">*</span></td>
                      <td><input name="text5" type="text" class="text" onFocus="this.className='textover'" onBlur="this.className='text'"id="text6" value="05/03/2000"> 
                        <img onClick="displayCalendar(document.getElementById('text6'),'mm/dd/yyyy',this)"  src="../images/cal.gif" name="imgCalendar" width="20px" height="15px" border="0" alt="" align="middle" class="img_link"></td>
                    </tr>
                    <tr> 
                      <td>Gender<span class="mandatory">*</span></td>
                      <td><select name="select" class="sel">
                          <option selected>Male</option>
                          <option>Female</option>
                        </select></td>
                    </tr>
                    <tr> 
                      <td height="25">Status<span class="mandatory">*</span></td>
                      <td><select name="select2" class="sel">
                          <option>Active</option>
                          <option>Inactive</option>
                        </select></td>
                    </tr>
                    <tr> 
                      <td>Nationality</td>
                      <td><input name="text8" type="text" class="text" onFocus="this.className='textover'" onBlur="this.className='text'"id="text9" value="Indian"></td>
                    </tr>
                    <tr> 
                      <td>Spouse Name<span class="mandatory">*</span></td>
                      <td><input name="text9" type="text" class="text" onFocus="this.className='textover'" onBlur="this.className='text'"id="text10" value="Rani Devi"></td>
                    </tr>
                  </table></td>
              </tr>
              <tr> 
                <td  class="section_head">Passport Details</td>
              </tr>
              <tr> 
                <td class="datacell"><table border="0" cellspacing="0" cellpadding="0" class="data_table">
                    <tr> 
                      <td width="15%">Password No</td>
                      <td><input name="text102" type="text" class="text" onFocus="this.className='textover'" onBlur="this.className='text'"id="text102" value="181515151"></td>
                    </tr>
                    <tr> 
                      <td>Date of Issue</td>
                      <td><input name="text112" type="text" class="text" onFocus="this.className='textover'" onBlur="this.className='text'"id="text7"> 
                        <img onClick="displayCalendar(document.getElementById('text7'),'mm/dd/yyyy',this)"  src="../images/cal.gif" name="imgCalendar" width="20px" height="15px" border="0" alt="" align="middle" class="img_link"></td>
                    </tr>
                    <tr> 
                      <td>Date of Expiry</td>
                      <td><input name="text122" type="text" class="text" onFocus="this.className='textover'" onBlur="this.className='text'"id="text8"> 
                        <img onClick="displayCalendar(document.getElementById('text8'),'mm/dd/yyyy',this)"  src="../images/cal.gif" name="imgCalendar" width="20px" height="15px" border="0" alt="" align="middle" class="img_link"></td>
                    </tr>
                    <tr> 
                      <td>Issued At</td>
                      <td><input name="text132" type="text" class="text" onFocus="this.className='textover'" onBlur="this.className='text'"id="text132"></td>
                    </tr>
                  </table></td>
              </tr>
            </table>
  			</td>
  		</tr>
  	</table>
  <tr><td class="footer">&nbsp;</td></tr>
</table>
</form>
</body>
</html>
