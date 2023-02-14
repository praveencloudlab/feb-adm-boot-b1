package com.cts.ecart.aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class MyAspect {

	@Before(value = "execution(* com.cts.ecart.model.*.*(*))")
	public void f1(JoinPoint jp) {
		System.out.println("property about to change.. " + jp.getSignature());
	}

	@Around(value = "execution(* com.cts.ecart.service.*ServiceImpl.buy*(*,*))")
	public void f2(ProceedingJoinPoint pjp) throws Throwable {
		System.out.println(">>> Before Buy");

		Object status = pjp.proceed();

		System.out.println(">>> After buy");
		if (status.equals(true)) {
			System.out.println(status);
			System.out.println("product purchased success");
		} else {
			// rolling back data
			System.out.println("There is some issue while buying. please try again..");
		}

	}

}
