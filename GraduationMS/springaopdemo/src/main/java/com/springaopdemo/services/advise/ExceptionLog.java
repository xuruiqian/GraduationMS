package com.springaopdemo.services.advise;

import java.lang.reflect.Method;
import org.springframework.aop.ThrowsAdvice;
public class ExceptionLog implements ThrowsAdvice {
    public void afterThrowing(Method method,Exception ex) throws Throwable {
    }
}
