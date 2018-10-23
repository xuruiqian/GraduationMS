package com.springmvcdemo.web.authority;

import com.springmvcdemo.domain.option.AuthorityType;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.METHOD)
@Documented
public @interface Authority {
    AuthorityType value() default AuthorityType.Validate;
}