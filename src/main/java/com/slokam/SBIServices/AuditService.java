package com.slokam.SBIServices;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.slokam.SBIDao.AuditDao;
import com.slokam.SBIPojo.Audit;

@Service
public class AuditService {

	@Autowired
	private AuditDao auditdao;
	
	public void doAudit(Audit audit)
	{
		auditdao.save(audit);
	}
}
