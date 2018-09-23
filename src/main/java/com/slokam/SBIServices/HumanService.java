package com.slokam.SBIServices;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.slokam.SBIDao.SbiDao;
import com.slokam.SBIPojo.HumanPojo;

@Service
public class HumanService {

	@Autowired
	public SbiDao sbidao;
	public void saveserv(HumanPojo human)
	{
		sbidao.save(human);
		
	}
}
