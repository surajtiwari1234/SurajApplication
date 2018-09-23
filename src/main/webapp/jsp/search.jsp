<%@taglib prefix="spring"  uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>


<script>
  
 function contestDetailsByName(){
	 
	 alert("jnakdjkj");
	 
	 document.getElementById("contestSearchFrmId").action="contestDetailsByName";
	 document.getElementById("contestSearchFrmId").submit();
 }
 
 function selectData(id){
	 window.opener.getData(id);
	 window.close(); 
 }
</script>

<form id="contestSearchFrmId" action="saveFile" method="post"  >
	
	<input type="hidden"  name="cid" id="selectedId" />
	
	<table cellspacing="0" cellpadding="0" border="0">
		<tbody>
			<tr>
				<td class="page_title">Search Contest Definition</td>
			</tr>
			<tr>
				<td class="button_top">
				    <input type="button" class="butt" value="Search"
					onmouseover="this.className='buttOver'"
					onmouseout="this.className='butt'"
					onclick="contestDetailsByName()">
			    </td>
			</tr>
			
			<tr>
				<td class="datacell">
					<table class="data_table" cellspacing="0" cellpadding="0"
						border="0">
						<tbody>
							<tr>
								<td> <spring:message code="contest.positionName"/> <span class="mandatory">*</span></td>
								 <td>
								  <input name="posiname" class="text"
									onfocus="this.className='textover'"
									onblur="this.className='text'" id="text2"  type="text"/>
								   
									</td>
							  </tr>
						</tbody>
					</table>
				</td>
			</tr>

			<tr>
				<td class="section_head">Contest Details</td>
			</tr>
			<tr>
				<td class="dashboardcell">
					<table class="dashboard" cellspacing="0" cellpadding="0">
						<tbody>
							<tr>
								<td class="table_bar" width="1%" nowrap=""></td>
								<td class="table_bar"
									onmouseover="this.className='table_bar_over'"
									onmouseout="this.className='table_bar'" width="30%" nowrap="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
								<td class="table_bar"
									onmouseover="this.className='table_bar_over'"
									onmouseout="this.className='table_bar'" nowrap="">Valid
									From</td>
								<td class="table_bar"
									onmouseover="this.className='table_bar_over'"
									onmouseout="this.className='table_bar'" nowrap="">Valid To</td>
								<td class="table_bar"
									onmouseover="this.className='table_bar_over'"
									onmouseout="this.className='table_bar'" nowrap="">Recurrence
									Type</td>
							

							</tr>
							
							<c:forEach items="${contestDetailsList}" var="contestDetails">
							<tr onmouseover="this.className='tablecell_over'"
								onmouseout="this.className=''" class="">
								<td class="tablecell">
								<input name="radiobutton"
									value="radiobutton" 
									onchange="selectData('${contestDetails.posiname}')"
									type="radio"
								
									>
									</td>
								<td class="tablecell">${contestDetails.posicode}</td>
								<td class="tablecell">${contestDetails.posiname}</td>
								<td class="tablecell">${contestDetails.geodrop.name}</td>
								<td class="tablecell">${contestDetails.parentposition.parentposition}</td>
							
							</tr>

							</c:forEach>

						</tbody>
					</table>
				</td>
			</tr>
			<tr>
				<td class="button_bottom">
					<table cellspacing="0" cellpadding="0" border="0">
						<tbody>
							<tr>
								<!-- <td><input name="button2" class="butt"
									onmouseover="this.className='buttOver'"
									onmouseout="this.className='butt'" value="SELECT"
									onclick="selectData()"
									type="button"></td> -->
								<td class="button_right">
									<table class="table_width" cellspacing="2" cellpadding="0"
										border="0">
										<tbody>
											<tr>
												<td>
													<button class="butt2"
														onmouseover="this.className='buttOver2'"
														onmouseout="this.className='butt2'">
														<img src="../images/btn_first.gif" width="25px"
															height="14px">
													</button>
												</td>
												<td>
													<button class="butt"
														onmouseover="this.className='buttOver'"
														onmouseout="this.className='butt'">
														<img src="../images/btn_pri.gif" width="12px"
															height="12px">
													</button>
												</td>
												<td>(${pageNo+1} of ${pageCount})</td>
												<td>
													<button class="butt"
														onmouseover="this.className='buttOver'"
														onclick="gotoNextPage()";
														onmouseout="this.className='butt'">
														<img src="../images/btn_next.gif" width="12px"
															height="12px">
													</button>
												</td>
												<td>
													<button 
													   onclick="lastPage()"
													   class="butt2"
														onmouseover="this.className='buttOver2'"
														onmouseout="this.className='butt2'">
														<img src="../images/btn_last.gif" width="25px"
															height="14px">
													</button>

												</td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
						</tbody>
					</table>

				</td>
			</tr>
		</tbody>
	</table>
</form>


