package com.slokam.Aop;

import java.util.Collection;
import java.util.Map;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import com.slokam.Audit.util.AuditUtil;
import com.slokam.Audit.util.Exception.AuditException;
import com.slokam.SBIPojo.ApplicationAudittable;


@Component
@Aspect
@Scope("session")
public class AuditAspect {

	
	
	@Autowired
	private AuditUtil auditutil;
	
	
	private Object oldobj;
	
	@AfterReturning(pointcut="(execution(* com.slokam.SBIController.*.get* (..)))",returning="obj")
	public void oldvalue(JoinPoint jp,Object obj)
	{
		
		if(obj instanceof ModelAndView)
		{
			ModelAndView model=(ModelAndView)obj;
			
			Map<String, Object> model1=model.getModel();
			
			Collection<Object> values=model1.values();
			
			for (Object object : values) {
				
				if(object instanceof ApplicationAudittable)
				oldobj=object;
				break;
			}
		}
	}
	
	
	@Before("execution(* com.slokam.SBIController.*.save* (..))")
	public void doAudit(JoinPoint jp)
	{
		
	Object[] objs=	jp.getArgs();
	Object newobj=null;
	
	for (Object object : objs) {
	
		if(object instanceof ApplicationAudittable)
		{
			newobj=object;
			break;
		}
	}
	

		try {
			auditutil.audit(newobj, oldobj);
		} catch (AuditException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		


	
	}
}
