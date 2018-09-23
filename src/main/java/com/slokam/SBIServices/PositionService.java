package com.slokam.SBIServices;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import com.slokam.SBIDao.FileUpload;
import com.slokam.SBIDao.GeauniDrop;
import com.slokam.SBIDao.LoopkUpDao;
import com.slokam.SBIDao.ParentDropInterface;
import com.slokam.SBIDao.Parntposiinter;
import com.slokam.SBIDao.PositionDao;
import com.slokam.SBIDao.posiLevlDrop;
import com.slokam.SBIPojo.FileUploadPojo;
import com.slokam.SBIPojo.GeoUnitDropdown;
import com.slokam.SBIPojo.ParentDrop;
import com.slokam.SBIPojo.ParentPosition;
import com.slokam.SBIPojo.PosilevelDrop;
import com.slokam.SBIPojo.PositionType;

@Service
public class PositionService {

	@Autowired
	public PositionDao positiondao;
	
	@Autowired
	public GeauniDrop geodrop;
	
	@Autowired
	public posiLevlDrop posidrop;
	
	@Autowired
	public ParentDropInterface parentdrop;
	
	@Autowired
	public Parntposiinter parentposidrp; 
	
	@Autowired
	public FileUpload fileupload;
	
	@Autowired
	public LoopkUpDao lookupDao;
	
	public void insertserv(PositionType position)
	{
		positiondao.save(position);
		
	}
	
	

	public Iterable<PositionType> getAll(HttpSession session,PageRequest page) {
		
		Integer count=(int) positiondao.count();
		session.setAttribute("pageCount", count);
		
		return positiondao.findAll(page);
		
	}

	public void getUpdate(PositionType person) {
	
		
		positiondao.save(person);
		
	}

	public PositionType findOne(Integer id) {

		

		return positiondao.findOne(id);
	}

	public List<GeoUnitDropdown> getDrop() {
		
		return geodrop.findAll();
	}

	public List<PosilevelDrop> getposidrop() {
		// TODO Auto-generated method stub
		
		return posidrop.findAll();
	}

	public void fileuplser(FileUploadPojo pojo) {
		// TODO Auto-generated method stub
		fileupload.save(pojo);
	}



	public List<ParentDrop> getpardrop() {
		// TODO Auto-generated method stub
		return parentdrop.findAll();
	}



	public List<ParentPosition> getposition() {
		// TODO Auto-generated method stub
		return parentposidrp.findAll();
	}



	public void deleteById(Integer id) {
		// TODO Auto-generated method stub
		
		positiondao.delete(id);
		
	}



	public List<PositionType> getAllLookUp(String posiname) {


		return lookupDao.getByPosiname(posiname);
	}

	
	
	

}

