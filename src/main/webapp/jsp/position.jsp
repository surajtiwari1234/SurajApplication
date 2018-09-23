<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>SBI</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="../../../css/sbi_css.css" rel="stylesheet" type="text/css">
<script type="text/javascript" language="JavaScript" src="../../../script/sbi.js"></script>
<script type="text/javascript" language="JavaScript" src="../../../script/calendar.js"></script>
</head>

<body onLoad="check('../../../images/')" onResize="check('../../../images/')">
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
          <td rowspan="2" class="info_logout" onMouseOver="this.className='info_logoutOver'" onMouseOut="this.className='info_logout'" onClick="logoff('../../../login.html');">Logout</td>
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
				<td class="top_tab"onMouseOver="this.className='top_tab_over'" onMouseOut="this.className='top_tab'"  onClick="MM_openBrWindow('../../search_geo_hierarchy.html','_parent','status=yes,scrollbars=yes,resizable=yes')">Home</td>
				<td class="top_tab_div"></td>
				<td class="top_tab_sel" onClick="MM_openBrWindow('../../setup_geo_hierarchy.html','_parent','status=yes,scrollbars=yes,resizable=yes')">Setup Geo Hierarchy</td>
				<td class="top_tab_div"></td>
				<td class="top_tab" onMouseOver="this.className='top_tab_over'" onMouseOut="this.className='top_tab'" onClick="MM_openBrWindow('../../setup_human_hierarchy.html','_parent','status=yes,scrollbars=yes,resizable=yes')">Setup Human Hierarchy</td>
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
                <td class="left_tab"  onMouseOver="this.className='left_tab_over'" onMouseOut="this.className='left_tab'"onClick="MM_openBrWindow('../../setup_geo_hierarchy.html','_parent','status=yes,scrollbars=yes,resizable=yes')">Select Function </td>
              </tr>
              <tr> 
                <td class="left_tab" onMouseOver="this.className='left_tab_over'" onMouseOut="this.className='left_tab'" onClick="MM_openBrWindow('basic_details.html','_parent','status=yes,scrollbars=yes,resizable=yes')"> 
                 Basic Details</td>
              </tr>
			  <tr> 
                <td class="left_tab" onMouseOver="this.className='left_tab_over'" onMouseOut="this.className='left_tab'" onClick="MM_openBrWindow('address_contact.html','_parent','status=yes,scrollbars=yes,resizable=yes')"> Address &amp; Contact</td>
              </tr>
			  <tr> 
                <td class="left_tab"  onMouseOver="this.className='left_tab_over'" onMouseOut="this.className='left_tab'"onClick="MM_openBrWindow('t9_details.html','_parent','status=yes,scrollbars=yes,resizable=yes')">T9 Details</td>
              </tr>
			  <tr> 
                <td class="left_tab" onMouseOver="this.className='left_tab_over'" onMouseOut="this.className='left_tab'" onClick="MM_openBrWindow(''partner_entities.html','_parent','status=yes,scrollbars=yes,resizable=yes')">Partner Entities</td>
              </tr>
			 <tr> 
                <td class="left_tab" onMouseOver="this.className='left_tab_over'" onMouseOut="this.className='left_tab'" onClick="MM_openBrWindow('geounit_types.html','_parent','status=yes,scrollbars=yes,resizable=yes')">Geo Unit Types</td>
              </tr>
              <tr> 
                <td class="left_tab_sel" onClick="MM_openBrWindow('position.html','_parent','status=yes,scrollbars=yes,resizable=yes')"><span class="left_tab_sel_img">Position Types</span></td>
              </tr>
			  <tr> 
                <td class="left_tab" onMouseOver="this.className='left_tab_over'" onMouseOut="this.className='left_tab'" onClick="MM_openBrWindow('vacancies.html','_parent','status=yes,scrollbars=yes,resizable=yes')">Vacancies</td>
              </tr>
            </table>
			
			</td>
			<td class="con_right">
				<table cellpadding="0" cellspacing="0" border="0">
              <tr> 
                <td class="page_title">Position Types</td>
              </tr>
              <tr> 
                <td class="button_top"><input type="button" class="butt" value="Clear" onMouseOver="this.className='buttOver'" onMouseOut="this.className='butt'"> 
                  <input type="button" class="butt" value="Save Draft" onMouseOver="this.className='buttOver'" onMouseOut="this.className='butt'"> 
                  <input name="button3" type="button" class="butt" onMouseOver="this.className='buttOver'" onMouseOut="this.className='butt'" value="Save"></td>
              </tr>
              <tr> 
                <td class="datacell"> <table border="0" cellspacing="0" cellpadding="0" class="data_table">
                    <tr> 
                      <td width="20%">Geographic Unit Type</td>
                      <td><select name="select4" class="sel">
                          <option selected>--Select--</option>
                          <option>Corporate</option>
                          <option>Region</option>
                          <option>Area</option>
                          <option>Division</option>
                        </select></td>
                    </tr>
                    <tr> 
                      <td>Position Code</td>
                      <td><input name="text" type="text" class="text" onFocus="this.className='textover'" onBlur="this.className='text'" value="012354"></td>
                    </tr>
                    <tr> 
                      <td>Position Name</td>
                      <td><input name="text3" type="text" class="text" onFocus="this.className='textover'" onBlur="this.className='text'" value="MD &amp; Dy. CEO"></td>
                    </tr>
                    <tr> 
                      <td>Position Level</td>
                      <td><select name="select2" class="sel">
                          <option selected>--Select--</option>
                          <option>Level 10</option>
                          <option>Level 09</option>
                          <option>Level 08</option>
                          <option>Level 07</option>
                          <option>Level 06</option>
                          <option>Level 05</option>
                          <option>Level 04</option>
                          <option>Level 03</option>
                          <option>Level 02</option>
                          <option>Level 01</option>
                        </select></td>
                    </tr>
                    <tr> 
                      <td>Parent Geo Unit</td>
                      <td><select name="select" class="sel" onChange="if(this.selectedIndex==1){showme2('corporate');hideme2('region');hideme2('area');hideme2('division');}else if(this.selectedIndex==2){showme2('region');hideme2('corporate');hideme2('area');hideme2('division');}else if(this.selectedIndex==3){showme2('area');hideme2('corporate');hideme2('region');hideme2('division');}if(this.selectedIndex==4){showme2('division');hideme2('region');hideme2('area');hideme2('corporate');}else if(this.selectedIndex==0){hideme2('area');showme2('corporate');hideme2('region');hideme2('division');}">
                          <option selected>--Select--</option>
                          <option>Corporate</option>
                          <option>Region</option>
                          <option>Area</option>
                          <option>Division</option>
                        </select></td>
                    </tr>
                    <tr id="corporate" > 
                      <td>Parent Position</td>
                      <td><select name="select3" class="sel">
                          <option selected>--Select--</option>
                          <option>MD &amp; Dy. CEO</option>
                        </select></td>
                    </tr>
                    <tr id="region" class="hide"> 
                      <td>Parent Position</td>
                      <td><select name="select3" class="sel">
                          <option selected>--Select--</option>
                          <option>Region Manager</option>
                        </select></td>
                    </tr>
                    <tr id="area" class="hide"> 
                      <td>Parent Position</td>
                      <td><select name="select3" class="sel">
                          <option selected>--Select--</option>
                          <option>Area Manager</option>
                        </select></td>
                    </tr>
                    <tr id="division" class="hide"> 
                      <td>Parent Position</td>
                      <td><select name="select3" class="sel">
                          <option selected>--Select--</option>
                          <option>Division Manager</option>
                        </select></td>
                    </tr>
                    <tr> 
                      <td>&nbsp;</td>
                      <td><input name="button32" type="button" class="butt" onMouseOver="this.className='buttOver'" onMouseOut="this.className='butt'" value="Add"></td>
                    </tr>
                  </table></td>
              </tr>
			  					<tr>
                <td class="section_head">Existing Position Types</td>
              </tr>

              <tr>
                <td class="dashboardcell"><table cellpadding="0"  cellspacing="0" class="dashboard">
                    <tr> 
                      <td  class="table_bar" width="1%">&nbsp;</td>
                      <td  class="table_bar" onMouseOver="this.className='table_bar_over'" onMouseOut="this.className='table_bar'" >Position 
                        Code </td>
                      <td  class="table_bar" onMouseOver="this.className='table_bar_over'" onMouseOut="this.className='table_bar'" >Position 
                        Name</td>
                      <td  class="table_bar" onMouseOver="this.className='table_bar_over'" onMouseOut="this.className='table_bar'" >Unit 
                        Type</td>
                      <td  class="table_bar" onMouseOver="this.className='table_bar_over'" onMouseOut="this.className='table_bar'" >Parent 
                        Position</td>
                    </tr>
                    <tr onMouseOver="this.className='tablecell_over'" onMouseOut="this.className=''"> 
                      <td class="tablecell" > <input type="radio" name="radiobutton" value="radiobutton"></td>
                      <td class="tablecell">012354</td>
                      <td class="tablecell">MD &amp; Dy. CEO </td>
                      <td class="tablecell">Corporate</td>
                      <td class="tablecell">&nbsp;</td>
                    </tr>
                    <tr class="tablecell_alter"  onMouseOver="this.className='tablecell_alter'" onMouseOut="this.className='tablecell_alter'"> 
                      <td class="tablecell" > <input type="radio" name="radiobutton" value="radiobutton" checked></td>
                      <td class="tablecell">021453</td>
                      <td class="tablecell">Regional Head</td>
                      <td class="tablecell">Region</td>
                      <td class="tablecell">MD &amp; Dy. CEO </td>
                    </tr>
                  </table></td>
              </tr>
              <tr>
                <td class="button_bottom"><table cellpadding="0" cellspacing="0" border="0">
                    <tr>
                      <td> <input name="button" type="button" class="butt2" onMouseOver="this.className='buttOver2'" onMouseOut="this.className='butt2'" value="View / Modify">
                        <input name="button22" type="button" class="butt" onMouseOver="this.className='buttOver'" onMouseOut="this.className='butt'" value="Delete"> 
                      </td>
                      <td class="button_right"> <table cellpadding="0" cellspacing="2" border="0" class="table_width">
                          <tr>
                            <td> <button class="butt2" onMouseOver="this.className='buttOver2'" onMouseOut="this.className='butt2'"><img src="../../../images/btn_first.gif" width="25px" height="14px"></button></td>
                            <td> <button class="butt" onMouseOver="this.className='buttOver'" onMouseOut="this.className='butt'"><img src="../../../images/btn_pri.gif" width="12px" height="12px"></button></td>
                            <td>(2 of 2)</td>
                            <td> <button class="butt" onMouseOver="this.className='buttOver'" onMouseOut="this.className='butt'"><img src="../../../images/btn_next.gif" width="12px" height="12px"></button></td>
                            <td> <button class="butt2" onMouseOver="this.className='buttOver2'" onMouseOut="this.className='butt2'"><img src="../../../images/btn_last.gif" width="25px" height="14px"></button></td>
                          </tr>
                        </table></table></td>
              </tr>
            </table>
  			</td>
  		</tr>
  	</table>
  <tr><td class="footer">&nbsp;</td></tr>
</table>

</body>
</html>
