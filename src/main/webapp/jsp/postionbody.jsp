<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %> 
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<script type="text/javascript">

function positioninsert()
{
	document.forms[0].action="insertpositns";
	document.forms[0].submit();
}

function getAll(){
	document.forms[0].action="getAllPersons";
	document.forms[0].submit();
}

function uploadfile()
{
	document.forms[0].action="fileuplod";
	document.forms[0].submit();
	}
	
function download()
{
	document.forms[0].action="downloadfile";
	document.forms[0].submit();
	
}

function deletedta(){
	
	document.forms[0].action="deleletperson";
	document.forms[0].submit();
}

	function byid(id)
	{
		
		document.getElementById("cid").value=id;
		/* document.forms[0].action="getPersonById";
		document.forms[0].submit(); */
	}
	
	function selectBy()
	{
		var selid = document.getElementById("cid").value;
		if(selid!="")
			{
		document.forms[0].action="getPersonById";
		document.forms[0].submit();
			}
		else{
			
			alert("please select the option");
		}
	}
	
	function getpageno()
	{
		document.forms[0].action="getnextpage";
		document.forms[0].submit();
	}
	
	function getprevno(){
		
		document.forms[0].action="getprevpage";
		document.forms[0].submit();
	}

	function getforwrd()
	{
	
		document.forms[0].action="getforwrsd";
		document.forms[0].submit();
	}
	
	function getpreviou()
	{
		document.forms[0].action="getprvious";
		document.forms[0].submit();
		
	}
	
function getData(id)
{
	
	alert(id);
	document.getElementById("posinameid").value=id;
	
	}
	
</script>
<form:form commandName="persondetails" >

<form:hidden path="id"/>
	<table cellpadding="0" cellspacing="0" border="0">
              <tbody><tr> 
                <td class="page_title">Position Types</td>
              </tr>
              <tr> 
                <td class="button_top"><input type="button" class="butt" value="Clear" onmouseover="this.className='buttOver'" onmouseout="this.className='butt'"> 
                  <input type="button" class="butt" value="Save Draft" onmouseover="this.className='buttOver'" onmouseout="this.className='butt'"> 
                  <input name="button3" type="button" class="butt" onmouseover="this.className='buttOver'" onmouseout="this.className='butt'" value="Save" onclick="positioninsert()"></td>
                 
              </tr>
              <tr>
              	<td>
           <spring:message code="contest.fileUpload"/><input type="file" name="multipart">
              	</td>
              	<td> 
              	              
              	                 <input name="button4" type="button" class="butt" onmouseover="this.className='buttOver'" onmouseout="this.className='butt'" value="Fileupload" onclick="uploadfile()"></td>
              	                
              	                 <input name="button4" type="button" class="butt" onmouseover="this.className='buttOver'" onmouseout="this.className='butt'" value="downloader" onclick="download()"></td> 
              	</td>
              </tr>
              <tr> 
            <input type="hidden" name="cid" id="cid"/>
               
                <td class="datacell"> <table border="0" cellspacing="0" cellpadding="0" class="data_table">
                    <tbody><tr> 
                    
                      <td width="20%">Geographic Unit Type</td>
                      <td>
                     <form:select path="geodrop" class="sel">

                			<form:options items="${geodro}"  itemLabel="name" itemValue="id" />
        
                      </form:select> 
                       
                        </td>
                    </tr>
                    <tr> 
                      <td>Position Code</td>

                      <td>
                      
                      <form:input path="posicode" class="text" onfocus="this.className='textover'" onblur="this.className='text'" />
                      <form:errors path="posicode"/>
                      </td>
                    </tr>
                    
                    <tr> 
                      <td>Position Name</td>
                      <td>
                    <form:input id="posinameid" path="posiname" class="text" onfocus="this.className='textover'" onblur="this.className='text'" />
                    <img onclick="window.open('lookupContestDetails','contestSearch','menubar=0,width=500,height=250')" src="../images/search_icon.gif" td="" >
                    <form:errors path="posiname"/>
                      </td>
                    </tr>
                    
                    
                    
                    
                    
                    
                 <%--    
                    <tr> 
                      <td>Primary Approver<span class="mandatory">*</span></td>
                      <td>
                        <form:input id="primaryApproveId" path="primaryApprover" class="text" /> 
						<img onclick="window.open('lookupContestDetails','contestSearch','menubar=0,width=500,height=250')" src="../images/search_icon.gif" td="" >
                    
                       </td>

                    </tr> --%>
                    
                    
                    
                    
                    
                    
                    
                    
                    <tr> 
                      <td>Position Level</td>
                      <td>
                      <form:select path="positiondrop" class="sel">
                      
                      <form:options items="${posidrop}"  itemLabel="posidrop" itemValue="id" />
                      
                          
                          
        
	                    
       
                      </form:select>  
                       
                       </td>
                        
                    </tr>
                    <tr> 
                      <td>Parent Geo Unit</td>
                      <td>
                      <form:select path="parentdrop" class="sel"  onchange="if(this.selectedIndex==1){showme2('corporate');hideme2('region');hideme2('area');hideme2('division');}else if(this.selectedIndex==2){showme2('region');hideme2('corporate');hideme2('area');hideme2('division');}else if(this.selectedIndex==3){showme2('area');hideme2('corporate');hideme2('region');hideme2('division');}if(this.selectedIndex==4){showme2('division');hideme2('region');hideme2('area');hideme2('corporate');}else if(this.selectedIndex==0){hideme2('area');showme2('corporate');hideme2('region');hideme2('division');}">
                      
                      <form:options items="${parentdrop}"  itemLabel="parentname" itemValue="id" />
                      
                         
        
	                    
                     
    
                       </form:select>
                      
                        </td>
                    </tr>
                    <tr id="corporate"> 
                      <td>Parent Position</td>
                      <td>
                      <form:select path="parentposition" class="sel">
                         
                          <form:options items="${posiparent}"  itemLabel="parentposition" itemValue="id" />
                          
                            
                         
                         
                          
                       </form:select>
                        </td>
                    </tr>
<!--                     <tr id="region" class="hide"> 
                      <td>Parent Position</td>
                      <td><select  class="sel">
                          <option >--Select--</option>
                         
                        </select></td>
                    </tr>
                    <tr id="area" class="hide"> 
                      <td>Parent Position</td>
                      <td><select  class="sel">
                          <option selected="">--Select--</option>
                        
                        </select></td>
                    </tr>
                    <tr id="division" class="hide"> 
                      <td>Parent Position</td>
                      <td><select  class="sel">
                          <option selected="">--Select--</option>
                         
                        </select></td>
                    </tr> -->
                    <tr> 
                      <td>&nbsp;</td>
                      <td><input name="button32" type="button" class="butt" onmouseover="this.className='buttOver'" onmouseout="this.className='butt'" value="Add"></td>
                      
                    </tr>
                  </tbody></table></td>
              </tr>
			  <tr>
                <td class="section_head">Existing Position Types</td>
              </tr>

              <tr>
                <td class="dashboardcell"><table cellpadding="0" cellspacing="0" class="dashboard">
                    <tbody><tr> 
                   
                      <td class="table_bar" width="1%">&nbsp;</td>
                      <td class="table_bar" onmouseover="this.className='table_bar_over'" onmouseout="this.className='table_bar'">Position 
                        Code </td>
                      <td class="table_bar" onmouseover="this.className='table_bar_over'" onmouseout="this.className='table_bar'">Position 
                        Name</td>
                      <td class="table_bar" onmouseover="this.className='table_bar_over'" onmouseout="this.className='table_bar'">Unit 
                        Type</td>
                      <td class="table_bar" onmouseover="this.className='table_bar_over'" onmouseout="this.className='table_bar'">Parent 
                        Position</td>
                       
                    </tr>
                    <!-- ==============================================================================================-->
                    
                    
                     
                 <%--    
                    <tr onmouseover="this.className='tablecell_over'" onmouseout="this.className=''" class=""> 
                      <td class="tablecell"> <input type="radio" name="radiobutton" value="radiobutton"></a></td>
                      
                      <td class="tablecell"><form:options items="${personList}"  itemLabel="posicode" itemValue="id" />
                      </td>
                      <td class="tablecell"><form:options items="${personList}"  itemLabel="posiname" itemValue="id" /></td>
                      <td class="tablecell"><form:options items="${personList}"  itemLabel="geodrop" itemValue="id" /></td>
                      <td class="tablecell"><form:options items="${personList}"  itemLabel="parentposition" itemValue="id" /></td>
                    </tr>
                      --%>
                
                  
                     <c:forEach items="${personList}" var="person">
                    
                    <tr onmouseover="this.className='tablecell_over'" onmouseout="this.className=''" class=""> 
                      <td class="tablecell">
                      
                      <input type="radio" name="radioname" value="radioname" onchange="byid('${person.id}')"></td>
                      <td class="tablecell">${person.posicode}</td>
                      <td class="tablecell">${person.posiname}</td>
                      <td class="tablecell">${person.geodrop.name}</td>
                      <td class="tablecell">${person.parentposition.parentposition}</td>
                    </tr>
                    
                    </c:forEach>  
                    
                    
                
                  </tbody></table></td>
              </tr>
              <tr>
                <td class="button_bottom"><table cellpadding="0" cellspacing="0" border="0">
                    <tbody><tr>
                      <td> <input name="button" type="button" class="butt2" onmouseover="this.className='buttOver2'" onmouseout="this.className='butt2'" value="View / Modify" onclick="getAll()">
                        <input name="button22" type="button" class="butt" onmouseover="this.className='buttOver'" onmouseout="this.className='butt'" value="Delete" onclick="deletedta()"> 
                               <input name="button23" type="button" class="butt" onmouseover="this.className='buttOver'" onmouseout="this.className='butt'" value="select" onclick="selectBy()"> 
                        
                      </td>
                      <td class="button_right"> <table cellpadding="0" cellspacing="2" border="0" class="table_width">
                          <tbody><tr>
                            <td> <button  onclick="getpreviou()" class="butt2" onmouseover="this.className='buttOver2'" onmouseout="this.className='butt2'"><img src="../../../images/btn_first.gif" width="25px" height="14px"></button></td>
                            <td> <button onclick="getprevno()" class="butt" onmouseover="this.c0lassName='buttOver'" onmouseout="this.className='butt'"><img src="../../../images/btn_pri.gif" width="12px" height="12px"></button></td>
                            <td>(${pagenumber+1} of ${pagetotal})</td>
                            <td> <button onclick="getpageno()" class="butt" onmouseover="this.className='buttOver'" onmouseout="this.className='butt'"><img src="../../../images/btn_next.gif" width="12px" height="12px" ></button></td>
                            <td> <button onclick="getforwrd()"  class="butt2" onmouseover="this.className='buttOver2'" onmouseout="this.className='butt2'"><img src="../../../images/btn_last.gif" width="25px" height="14px"></button></td>
                          </tr>
                        </tbody></table></td></tr></tbody></table></td>
              </tr>
            </tbody></table>
       
</form:form>