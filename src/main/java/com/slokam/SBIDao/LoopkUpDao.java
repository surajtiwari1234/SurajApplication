package com.slokam.SBIDao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.slokam.SBIPojo.PositionType;

public interface LoopkUpDao extends JpaRepository<PositionType, Integer>{
	
	
	public List<PositionType> getByPosiname(String posiname);

}
