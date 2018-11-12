package com.springmvcdemo.advise;

import org.springframework.aop.ThrowsAdvice;

import java.lang.reflect.Method;

public class ExceptionLog implements ThrowsAdvice {
    public void afterThrowing(Method method,Exception ex) {
        System.out.println(method.getName()+"方法被执行"+"exception is "+ex.getStackTrace());
    }
}
