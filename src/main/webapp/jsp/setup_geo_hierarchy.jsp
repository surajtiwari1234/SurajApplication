<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>SBI</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="../css/sbi_css.css" rel="stylesheet" type="text/css">
<script type="text/javascript" language="JavaScript" src="../script/sbi.js"></script>
</head>

<body>
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
				<td class="top_tab" onMouseOver="this.className='top_tab_over'" onMouseOut="this.className='top_tab'" onClick="MM_openBrWindow('search_geo_hierarchy.html','_parent','status=yes,scrollbars=yes,resizable=yes')">Home</td>
				<td class="top_tab_div"></td>
				<td class="top_tab_sel"  onClick="MM_openBrWindow('setup_geo_hierarchy.html','_parent','status=yes,scrollbars=yes,resizable=yes')">Setup Geo Hierarchy</td>
				<td class="top_tab_div"></td>
				<td class="top_tab" onMouseOver="this.className='top_tab_over'" onMouseOut="this.className='top_tab'" onClick="MM_openBrWindow('setup_human_hierarchy.html','_parent','status=yes,scrollbars=yes,resizable=yes')">Setup Human Hierarchy</td>
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
                <td class="left_tab_sel"  onClick="MM_openBrWindow('setup_geo_hierarchy.html','_parent','status=yes,scrollbars=yes,resizable=yes')"> 
                  <span class="left_tab_sel_img">Select Functions </span> </td>
              </tr>
            </table>
			
			</td>
			<td class="con_right">
				<table cellpadding="0" cellspacing="0" border="0">
              <tr> 
                <td class="page_title">Select Functions</td>
              </tr>
              <tr> 
                <td class="button_top"><input name="button" type="button" class="butt" value="Cancel"> 
                  &nbsp; <input name="button" type="button" class="butt" style="width:50px"onClick="if(document.getElementById('ins').selectedIndex==1){MM_openBrWindow('primary_entity/corporate/basic_details.html','_parent','channelmode=yes,location=no,menubar=no,resizable=yes,scrollbars=yes,titlebar=no,toolbar=no,status=yes');}
																										else if(document.getElementById('ins').selectedIndex==2){MM_openBrWindow('primary_entity/channel/basic_details.html','_parent','channelmode=yes,location=no,menubar=no,resizable=yes,scrollbars=yes,titlebar=no,toolbar=no,status=yes');}
																										else if(document.getElementById('ins').selectedIndex==3){
																												MM_openBrWindow('primary_entity/channel_partner_entity/basic_details.html','_parent','channelmode=yes,location=no,menubar=no,resizable=yes,scrollbars=yes,titlebar=no,toolbar=no,status=yes')};												if(document.getElementById('geo_entity').selectedIndex==1){
																												MM_openBrWindow('geograhical_entity/corporate/region/basic_details.html','_parent','channelmode=yes,location=no,menubar=no,resizable=yes,scrollbars=yes,titlebar=no,toolbar=no,status=yes')	}else if(document.getElementById('geo_entity').selectedIndex==2){
																												MM_openBrWindow('geograhical_entity/corporate/area/basic_details.html','_parent','channelmode=yes,location=no,menubar=no,resizable=yes,scrollbars=yes,titlebar=no,toolbar=no,status=yes')		}
																											else if(document.getElementById('geo_entity').selectedIndex==3)
																											{
																												MM_openBrWindow('geograhical_entity/corporate/division/basic_details.html','_parent','channelmode=yes,location=no,menubar=no,resizable=yes,scrollbars=yes,titlebar=no,toolbar=no,status=yes')
																											}
																											else if(document.getElementById('geo_entity').selectedIndex==4)
																											{
																												MM_openBrWindow('geograhical_entity/corporate/branch/basic_details.html','_parent','channelmode=yes,location=no,menubar=no,resizable=yes,scrollbars=yes,titlebar=no,toolbar=no,status=yes')
																											};
																											if(document.getElementById('geo_entity5').selectedIndex==1)
																											{
																												MM_openBrWindow('geograhical_entity/channel_partner_entity/circle/basic_details.html','_parent','channelmode=yes,location=no,menubar=no,resizable=yes,scrollbars=yes,titlebar=no,toolbar=no,status=yes')
																											};
																											if(document.getElementById('entity').selectedIndex!=0)
																											{
																												MM_openBrWindow('geographical_entity_type/details.html','_parent','channelmode=yes,location=no,menubar=no,resizable=yes,scrollbars=yes,titlebar=no,toolbar=no,status=yes')
																											}
																											
																											" value="Ok"></td>
              </tr>
              <tr> 
                <td class="datacell"> <table border="0" cellspacing="0" cellpadding="0" class="data_table">
                    <tr> 
                      <td width="1%"><input type="radio" name="r" value="radiobutton" onClick="showme('insurance');hideme('insurance2');hideme('type');hideme('geo');hideme('geo2');hideme('geo3');;hideme('geo4');hideme('geo5');"></td>
                      <td colspan="2">Primary Entity</td>
                    </tr>
                    <tr id="insurance" class="hide"> 
                      <td>&nbsp;</td>
                      <td width="20%">Select Entity Type:</td>
                      <td> <select name="select" id="ins" onChange="if(this.selectedIndex==3){showme('insurance2');}else{hideme(insurance2);}">
                          <option></option>
                          <option>Corporate</option>
                          <option>Channel</option>
                          <option>Channel Partner Entity</option>
                        </select></td>
                    </tr>
                    <tr id="insurance2" class="hide"> 
                      <td>&nbsp;</td>
                      <td>Select Entity Type:</td>
                      <td> <select name="select" id="ins">
                          <option></option>
                          <option>Corporate Agent(Bank)</option>
                          <option>Referral(Bank)</option>
                          <option>Group Administrator(Bank)</option>
                          <option>Micro Insurance(Bank)</option>
                          <option>Corporate Agent</option>
                          <option>Referral Partner</option>
                          <option>Broker</option>
                        </select></td>
                    </tr>
                    <tr> 
                      <td><input type="radio" name="r" value="radiobutton" onClick="showme('type');hideme('insurance');hideme('insurance2');hideme('geo');hideme('geo2');hideme('geo3');hideme('geo34');hideme('geo5');"></td>
                      <td colspan="2">Geographic Entity Type</td>
                    </tr>
                    <tr class="hide" id="type"> 
                      <td>&nbsp;</td>
                      <td width="20%">Select Entity Type:</td>
                      <td> <select name="select2" id="entity">
                          <option></option>
                          <option>Corporate</option>
                          <option>Channel Partner Entity</option>
                        </select></td>
                    </tr>
                    <tr> 
                      <td><input type="radio" name="r" value="radiobutton" onClick="hideme('type');hideme('insurance');hideme('insurance2');showme('geo');hideme('geo2');hideme('geo3');hideme('geo4');hideme('geo5');"></td>
                      <td colspan="2">Geographic Entities</td>
                    </tr>
                    <tr class="hide" id="geo"> 
                      <td>&nbsp;</td>
                      <td width="20%">Select Entity Type:</td>
                      <td> <select name="select2" id="select" onChange="if(this.selectedIndex==1)
																			  {showme('geo2');hideme('geo4');}
																			  else if(this.selectedIndex==3)
																			  {showme('geo4');hideme('geo2');}
																			  else{hideme('geo2');hideme('geo4');}">
                          <option></option>
                          <option>Corporate</option>
                          <option>Channel</option>
                          <option>Channel Partner Entity</option>
                        </select></td>
                    </tr>
                    <tr class="hide" id="geo2"> 
                      <td>&nbsp;</td>
                      <td>Select Entity :</td>
                      <td> <select name="select2" id="select" onChange="if(this.selectedIndex==1){showme('geo3');}else{hideme('geo3');}">
                          <option></option>
                          <option>SBIL</option>
                        </select></td>
                    </tr>
                    <tr class="hide" id="geo4"> 
                      <td>&nbsp;</td>
                      <td>Select Entity :</td>
                      <td> <select name="select2" id="select2" onChange="if(this.selectedIndex==1){showme('geo5')}else{hideme('geo5')}">
                          <option></option>
                          <option>SBI</option>
                          <option>SBH</option>
                          <option>SBP</option>
                          <option>PNB</option>
                        </select></td>
                    </tr>
                    <tr class="hide" id="geo3"> 
                      <td>&nbsp;</td>
                      <td>Select Geo Entity Type:</td>
                      <td> <select name="select2" id="geo_entity">
                          <option></option>
                          <option>Region</option>
                          <option>Area</option>
                          <option>Division</option>
                          <option>Branch</option>
                        </select></td>
                    </tr>
                    <tr class="hide" id="geo5"> 
                      <td>&nbsp;</td>
                      <td>Select Geo Entity Type:</td>
                      <td> <select name="select2" id="geo_entity5">
                          <option></option>
                          <option>Circle</option>
                          <option>Network</option>
                          <option>Admin Unit</option>
                          <option>Region</option>
                          <option>Branch</option>
                        </select></td>
                    </tr>
                  </table></td>
              </tr>
            </table>
  			</td>
  		</tr>
  	</table>
  <tr><td class="footer">&nbsp;</td></tr>
</table>

</body>
</html>
