package com.springmvcdemo.advise;

import org.springframework.aop.MethodBeforeAdvice;

import java.lang.reflect.Method;

public class BeforeAuthorization implements MethodBeforeAdvice {
    @Override
    public void before(Method method, Object[] objects, Object o) {
        System.out.println(o.getClass().getName()+"的"+method.getName()+"方法被执行");
    }
}
