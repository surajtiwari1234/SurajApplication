
				<table cellpadding="0" cellspacing="0" border="0">
              <tbody><tr> 
                <td class="page_title">Personal Details</td>
              </tr>
              <tr> 
                <td class="button_top"><input type="button" class="butt" value="Clear" onmouseover="this.className='buttOver'" onmouseout="this.className='butt'"> 
                  <input type="button" class="butt" value="Save Draft" onmouseover="this.className='buttOver'" onmouseout="this.className='butt'"> 
                  <input name="button3" type="button" class="butt" onmouseover="this.className='buttOver'" onmouseout="this.className='butt'" onclick="save1()" value="Save"></td>
              </tr>
              <tr> 
                <td class="datacell"> <table border="0" cellspacing="0" cellpadding="0" class="data_table">
                    <tbody><tr> 
                      <td width="15%">Title<span class="mandatory">*</span></td>
                      <td><select name="select" class="sel">
                          <option> </option>
                          <option selected="">Mr</option>
                          <option>Ms</option>
                        </select></td>
                    </tr>
                    <tr> 
                      <td>First Name<span class="mandatory">*</span></td>
                      <td><input name="text" type="text" class="text" onfocus="this.className='textover'" onblur="this.className='text'" id="text2" value="Sanjay"></td>
                    </tr>
                    <tr> 
                      <td>Middle Name</td>
                      <td><input name="text2" type="text" class="text" onfocus="this.className='textover'" onblur="this.className='text'" id="text3"></td>
                    </tr>
                    <tr> 
                      <td>Last Name<span class="mandatory">*</span></td>
                      <td><input name="text3" type="text" class="text" onfocus="this.className='textover'" onblur="this.className='text'" id="text4" value="majrekar"></td>
                    </tr>
                    <tr> 
                      <td>Date of Birth<span class="mandatory">*</span></td>
                      <td><input name="text4" type="text" class="text" onfocus="this.className='textover'" onblur="this.className='text'" id="text5" value="05/03/1968"> 
                        <img onclick="displayCalendar(document.getElementById('text5'),'mm/dd/yyyy',this)" src="../images/cal.gif" name="imgCalendar" width="20px" height="15px" border="0" alt="" align="middle" class="img_link"></td>
                    </tr>
                    <tr> 
                      <td>Date of Joining<span class="mandatory">*</span></td>
                      <td><input name="text5" type="text" class="text" onfocus="this.className='textover'" onblur="this.className='text'" id="text6" value="05/03/2000"> 
                        <img onclick="displayCalendar(document.getElementById('text6'),'mm/dd/yyyy',this)" src="../images/cal.gif" name="imgCalendar" width="20px" height="15px" border="0" alt="" align="middle" class="img_link"></td>
                    </tr>
                    <tr> 
                      <td>Gender<span class="mandatory">*</span></td>
                      <td><select name="select" class="sel">
                          <option selected="">Male</option>
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
                      <td><input name="text8" type="text" class="text" onfocus="this.className='textover'" onblur="this.className='text'" id="text9" value="Indian"></td>
                    </tr>
                    <tr> 
                      <td>Spouse Name<span class="mandatory">*</span></td>
                      <td><input name="text9" type="text" class="text" onfocus="this.className='textover'" onblur="this.className='text'" id="text10" value="Rani Devi"></td>
                    </tr>
                  </tbody></table></td>
              </tr>
              <tr> 
                <td class="section_head">Passport Details</td>
              </tr>
              <tr> 
                <td class="datacell"><table border="0" cellspacing="0" cellpadding="0" class="data_table">
                    <tbody><tr> 
                      <td width="15%">Password No</td>
                      <td><input name="text102" type="text" class="text" onfocus="this.className='textover'" onblur="this.className='text'" id="text102" value="181515151"></td>
                    </tr>
                    <tr> 
                      <td>Date of Issue</td>
                      <td><input name="text112" type="text" class="text" onfocus="this.className='textover'" onblur="this.className='text'" id="text7"> 
                        <img onclick="displayCalendar(document.getElementById('text7'),'mm/dd/yyyy',this)" src="../images/cal.gif" name="imgCalendar" width="20px" height="15px" border="0" alt="" align="middle" class="img_link"></td>
                    </tr>
                    <tr> 
                      <td>Date of Expiry</td>
                      <td><input name="text122" type="text" class="text" onfocus="this.className='textover'" onblur="this.className='text'" id="text8"> 
                        <img onclick="displayCalendar(document.getElementById('text8'),'mm/dd/yyyy',this)" src="../images/cal.gif" name="imgCalendar" width="20px" height="15px" border="0" alt="" align="middle" class="img_link"></td>
                    </tr>
                    <tr> 
                      <td>Issued At</td>
                      <td><input name="text132" type="text" class="text" onfocus="this.className='textover'" onblur="this.className='text'" id="text132"></td>
                    </tr>
                  </tbody></table></td>
              </tr>
            </tbody></table>
  		