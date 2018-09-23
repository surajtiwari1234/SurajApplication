package com.slokam.SBITestAspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class TestAspect {
	
/*	long startTime;
	
	@Before("execution(* com.slokam.*.*.*(..))")
	public void test(JoinPoint joinPoint)
	{
		String methodName=joinPoint.getSignature().getName();
		String className=joinPoint.getTarget().getClass().toString();
		
		System.out.println("Start time::"+startTime+"method name::"+methodName+"class name::"+className);
		startTime= System.currentTimeMillis();
	}
	
	@After("execution(* com.slokam.*.*.*(..))")
	public void test1(JoinPoint joinPoint)
	{
		
		long endTime=System.currentTimeMillis();
		 
		long result=endTime-startTime;
		String methodName=joinPoint.getSignature().getName();
		String className=joinPoint.getTarget().getClass().toString();
		
		System.out.println("Start time::"+endTime+"method name::"+methodName+"class name::"+className);
		System.out.println("execution time for method=="+result);
	}*/

	@Around("execution(* com.slokam.*.*.*(..))")
	public Object test3(ProceedingJoinPoint joinPoint)
	{
		
	
		Long startTime=System.currentTimeMillis();
		String methodName=joinPoint.getSignature().getName();
		String className=joinPoint.getTarget().getClass().toString();
		
		System.out.println("Start time::"+startTime+"method name::"+methodName+"class name::"+className);
		
		
		
		Object obj=null;
		
		try {
			obj=joinPoint.proceed();
			
			
		} catch (Throwable e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		long endTime=System.currentTimeMillis();
		 
		String methodName1=joinPoint.getSignature().getName();
		String className1=joinPoint.getTarget().getClass().toString();
		long result=endTime-startTime;
		System.out.println("end time::"+endTime+"method name::"+methodName1+"class name::"+className1);
		System.out.println("execution time for method=="+result);
		return obj;
	
	}
	
	@AfterReturning(returning="obj",pointcut="execution(* com.slokam.*.*.*(..))")
	public void test4(Object obj)
	{
		
		System.out.println("AFETER RRTURNING ");
	}
	
	@Before("execution(* com.slokam.*.*.*(..))")
	public void test5()
	{
		
		System.out.println("THS IS BEFORE ");
	}
	
	@After("execution(* com.slokam.*.*.*(..))")
	public void test6()
	{
		
		System.out.println("THS IS AFTER ");
	}
}
