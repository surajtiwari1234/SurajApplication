package com.slokam.Audit.util;

import java.beans.PropertyDescriptor;

import org.springframework.beans.BeanWrapper;
import org.springframework.beans.PropertyAccessorFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.slokam.Audit.util.Exception.AuditException;
import com.slokam.SBIPojo.Audit;
import com.slokam.SBIServices.AuditService;

@Component
public class AuditUtil {
	
	@Autowired
	private AuditService auditService;

	public void audit(Object newvalue,Object oldvalue) throws AuditException
	{
		
		if(newvalue==null || oldvalue==null)
		{
		
			return;
		}
		
		if(newvalue.getClass()!=oldvalue.getClass()) 
		{
			throw new AuditException("cant provied diffrent class");
		}
		
		BeanWrapper old=PropertyAccessorFactory.forBeanPropertyAccess(oldvalue);
		BeanWrapper newname =PropertyAccessorFactory.forBeanPropertyAccess(newvalue);
		
	PropertyDescriptor[] pf =	old.getPropertyDescriptors();
	
	for (PropertyDescriptor propertyDescriptor : pf) {
		
		String name1=propertyDescriptor.getName();
		
		
		String oldname1 =old.getPropertyValue(name1).toString();
		
		String newname1=newname.getPropertyValue(name1).toString();
		
		
	
		if(!oldname1.equals(newname1))
		{
			Audit audit=new Audit();
			audit.setNewName(newname1);
			audit.setOldName(oldname1);
			audit.setPropertyName("posiname");
			audit.setClassName("com.slokam.ContestPojo");
			audit.setUserName("userName");
			
			auditService.doAudit(audit);
			
		}
		
	}
	}
	
	
	
	
	
}
