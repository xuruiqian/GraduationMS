package com.springmvcdemo.Authority;

import com.springmvcdemo.option.AuthorityType;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.METHOD)
@Documented
public @interface Authority {
    // 默认验证
    AuthorityType value() default AuthorityType.Validate;
}