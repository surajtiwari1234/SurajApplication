package com.slokam.SBIController;


import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.slokam.SBIMain.Application;
import com.slokam.SBIPojo.FileUploadPojo;
import com.slokam.SBIPojo.GeoUnitDropdown;
import com.slokam.SBIPojo.ParentDrop;
import com.slokam.SBIPojo.ParentPosition;
import com.slokam.SBIPojo.PosilevelDrop;
import com.slokam.SBIPojo.PositionType;
import com.slokam.SBIServices.AuditService;
import com.slokam.SBIServices.PositionService;


@Controller
public class PositionController {

	private Logger LOGGER =Logger.getLogger(Application.class);
	
	@Autowired
	public PositionService positionser;
	
	@Autowired
	private AuditService auditService;
	
	
	@RequestMapping("geohiery")
	public ModelAndView positonhierchy()
	{
		
		LOGGER.info("info matter");
		LOGGER.trace("trace matter");
		LOGGER.debug("debug matter");
		LOGGER.error("error matter");
		LOGGER.fatal("fatal matter");
		
		ModelAndView mv=new  ModelAndView();
		 List<GeoUnitDropdown> dropsbox =  positionser.getDrop();
		 
		 List<PosilevelDrop> posidrop =  positionser.getposidrop();
		 
		 List<ParentDrop> perntdrop=	 positionser.getpardrop();
		 
		 List<ParentPosition> posiparent=	 positionser.getposition();
		 
		mv.addObject("persondetails",new PositionType() );
		
		mv.addObject("posiparent",posiparent);
		
		mv.addObject("parentdrop",perntdrop);
		
		mv.addObject("posidrop",posidrop);

		 mv.addObject("geodro",dropsbox);
		 
		 mv.setViewName("geobase");
		 return mv;
	}
	
	@RequestMapping("insertpositns")
	public ModelAndView savetdata(@ModelAttribute("persondetails") @Valid PositionType position,BindingResult result,HttpSession session)
	{
		ModelAndView mv =new ModelAndView();
		
		if(result.hasErrors())
		{
			mv.addObject("persondetails",position );
			mv.setViewName("geobase");
			return mv;
		}
	
		
		if(position==null){
		
		positionser.insertserv(position);
		}
		else{
		
			
			
			/*PositionType oldname=(PositionType)session.getAttribute("oldValue");*/
			
		
			positionser.getUpdate(position);
		}
		
		mv.addObject("persondetails",new PositionType() );
		mv.setViewName("geobase");
		
		return mv;
	}
	
	@RequestMapping("getPersonById")
	public ModelAndView getPersonByposi(Integer cid,HttpSession session){
		
		System.out.println("iddddd"+cid);
		PositionType person = positionser.findOne(cid);
		
		
		
	/*	session.setAttribute("oldValue", person);*/
		
		List<GeoUnitDropdown> dropsbox =  positionser.getDrop();
		 
		 List<PosilevelDrop> posidrop =  positionser.getposidrop();
		 
		 List<ParentDrop> perntdrop=	 positionser.getpardrop();
		 
		 List<ParentPosition> posiparent=	 positionser.getposition();
		
		  ModelAndView mv = new ModelAndView();

		  mv.addObject("persondetails",person);
		  mv.addObject("posiparent",posiparent);
			
			mv.addObject("parentdrop",perntdrop);
			
			mv.addObject("posidrop",posidrop);

			 mv.addObject("geodro",dropsbox);
		  /*mv.addObject("dropsss",person);*/
		  mv.setViewName("geobase");
		  return mv;
	}
	
	@RequestMapping("getAllPersons")
	public ModelAndView getAllPersons(HttpSession session){
		
		
		PageRequest page=new PageRequest(0, 3);
		
		 Iterable<PositionType> personList =  positionser.getAll(session,page);
		
		 Integer pagenumber=(int)page.getPageNumber();
		 
		 System.out.println("pagenumber...."+pagenumber);
		 
		 session.setAttribute("pagenumber", pagenumber);
		 
		Integer count=(Integer) session.getAttribute("pageCount");
		Integer count1=count/3;
		int exrec=count%3;
		if(exrec>0)count1++;
		session.setAttribute("pagetotal", count1);
		System.out.println("total page count"+count1);
		
		
		 
		/* System.out.println("page count=========="+page.getPageSize()); 
		 System.out.println("page number======="+page.getPageNumber());*/
		 
		 ModelAndView mv = new ModelAndView();
		
			
		 mv.addObject("persondetails",new PositionType());
		 mv.addObject("personList",personList.iterator());
	
		 mv.setViewName("geobase");
		 return mv;
		
		
	}
	@RequestMapping("getprvious")
	public ModelAndView getprevious(HttpSession session){
		Integer pageno =(Integer)session.getAttribute("pagetotal");
		pageno=0;
		
		PageRequest page=new PageRequest(pageno, 3);
		

		
		Iterable<PositionType> personList =  positionser.getAll(session,page);
		 
		
		Integer pagenumber=(int) page.getPageNumber();
		 
		 session.setAttribute("pagenumber",pagenumber);
		 System.out.println("page number==-=-=-=-="+page.getPageNumber());
		 ModelAndView mv = new ModelAndView();
		
			
		 mv.addObject("persondetails",new PositionType());
		 mv.addObject("personList",personList.iterator());
	
		 mv.setViewName("geobase");
		 return mv;
		
		
	}
	@RequestMapping("getforwrsd")
	public ModelAndView getfastword(HttpSession session){
		Integer pageno =(Integer)session.getAttribute("pagetotal");
		pageno--;
		
		PageRequest page=new PageRequest(pageno, 3);
		
		 Iterable<PositionType> personList =  positionser.getAll(session,page);
		 
		
		 
		 session.setAttribute("pagenumber", page.getPageNumber());
		 System.out.println("page number==-=-=-=-="+page.getPageNumber());
		 ModelAndView mv = new ModelAndView();
		
			
		 mv.addObject("persondetails",new PositionType());
		 mv.addObject("personList",personList.iterator());
	
		 mv.setViewName("geobase");
		 return mv;
		
		
	}
	@RequestMapping("getnextpage")
	public ModelAndView getnextpage(HttpSession session){
		Integer pageno =(Integer)session.getAttribute("pagenumber");
		pageno++;
		Integer total=(Integer)session.getAttribute("pagetotal");
		if(pageno>=total)
		{
			pageno--;
		}
		
		PageRequest page=new PageRequest(pageno, 3);
		
		
		 Iterable<PositionType> personList =  positionser.getAll(session,page);
		 
		Integer pagenumber =(int) page.getPageNumber();
		 
		 session.setAttribute("pagenumber", pagenumber);
		 System.out.println("page number==-=-=-=-="+page.getPageNumber());
		 ModelAndView mv = new ModelAndView();
		
			
		 mv.addObject("persondetails",new PositionType());
		 mv.addObject("personList",personList.iterator());
	
		 mv.setViewName("geobase");
		 return mv;
		
		
	}
	
	@RequestMapping("getprevpage")
	public ModelAndView getprevpage(HttpSession session){
		Integer pageno =(Integer)session.getAttribute("pagenumber");
		
		pageno=pageno-1;
		
		
		
		
		if(pageno<1)
		{
			pageno=0;
		}
		
		PageRequest page=new PageRequest(pageno, 3);
		
	
	
		 Iterable<PositionType> personList =  positionser.getAll(session,page);

		 Integer pagenumber=(int) page.getPageNumber();
		 
		 session.setAttribute("pagenumber",pagenumber );
		
		 ModelAndView mv = new ModelAndView();
		
			
		 mv.addObject("persondetails",new PositionType());
		 mv.addObject("personList",personList.iterator());
		
		 mv.setViewName("geobase");
		 return mv;
		
		
	}

	@RequestMapping("deleletperson")
	public ModelAndView deleteById(Integer id)
	{
		positionser.deleteById(id);
		  ModelAndView mv = new ModelAndView();
		  mv.setViewName("geobase");
		  mv.addObject("persondetails", new PositionType());
		  return mv;
	}
	@RequestMapping("updatePerson")
	public ModelAndView updatePerson(PositionType person){
		positionser.getUpdate(person);
		  ModelAndView mv = new ModelAndView();
		  mv.setViewName("geobase");
		  mv.addObject("persondetails", new PositionType());
		  return mv;
	}
	


	@RequestMapping("lookupContestDetails")
	public ModelAndView getlookuppage()
	{
		
		ModelAndView mv =new ModelAndView();
		
		mv.setViewName("lookupContestDetails");
		
		return mv;
	}
	
	@RequestMapping("contestDetailsByName")
	public ModelAndView getAllByNameLoopUpDetails(String posiname)
	{
		
		ModelAndView mv=new ModelAndView();
		
		System.out.println("before===");
		List<PositionType> list =positionser.getAllLookUp(posiname);
		
		System.out.println("reocreds"+list);
		mv.addObject("contestDetailsList",list);
		mv.setViewName("lookupContestDetails");
		return mv;
		
		
	}
	
	@RequestMapping("fileuplod")
	public ModelAndView fileuplod(MultipartFile multipart)
	{
		
		
		ModelAndView mv =new ModelAndView();
		
		System.out.println(multipart.getOriginalFilename());
		
		  String destination = "D:\\"  + multipart.getOriginalFilename();
	
		    try {
		    	
		    
				multipart.transferTo(new File(destination));
				
			FileInputStream	excelfile= new FileInputStream(new File(destination));
			
			XSSFWorkbook workbook = new XSSFWorkbook(excelfile);
			Sheet datatypesheet=workbook.getSheetAt(0);
			
			Iterator<Row> rows=datatypesheet.iterator();
			rows.next();
			
			while(rows.hasNext())
			{
				Row row=rows.next();
				Double did=row.getCell(0).getNumericCellValue();
				Integer id=did.intValue();
				String name=row.getCell(1).getStringCellValue();
				
				Double dage=row.getCell(2).getNumericCellValue();
				Integer age=dage.intValue();
				
				String qual =row.getCell(3).getStringCellValue();
				
				FileUploadPojo pojo=new FileUploadPojo();
				
				pojo.setId(id);
				pojo.setName(name);
				pojo.setAge(age);
				pojo.setQual(qual);
				
				System.out.println(pojo);
				
				
				
			}
				
				
				
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 mv.addObject("persondetails",new PositionType());
		  mv.setViewName("geobase");
		return mv;
	}
	
	
	@RequestMapping("downloadfile")
	public ModelAndView downloadFile(HttpServletResponse response)
	
	{
		ModelAndView mv =new ModelAndView();
		
		try {
			
			
			response.addHeader("Content-Disposition", "attachment;filename=stateFile1500754537009.pdf");
			
			InputStream ios=new FileInputStream("E:\\stateFile1500754537009.pdf");
			
			BufferedOutputStream buffer =new BufferedOutputStream(response.getOutputStream());
			
			byte[] b =new byte[1024];
			
			int data=ios.read(b);
			while(data!=-1)
				
			{
				buffer.write(b);
				data=ios.read(b);
				
			}
			
			buffer.close();
			ios.close();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		  mv.setViewName("geobase");
		  mv.addObject("persondetails", new PositionType());
		
		
		return mv;
		
	}
	
	
}
