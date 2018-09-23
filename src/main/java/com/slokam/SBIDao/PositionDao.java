package com.slokam.SBIDao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.slokam.SBIPojo.PositionType;

public interface PositionDao  extends JpaRepository<PositionType, Integer>{

	/*@Query("select  pt.posicode,pt.posiname,g.name,pd.posidrop,pad.parentname,pp.parentposition from PositionType pt join pt.geodrop g join pt.positiondrop pd join pt.parentdrop pad join pt.parentposition pp where pt.id=?1 ")
	public PositionType findOneByid(Integer id);*/

	
}
