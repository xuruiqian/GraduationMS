package com.springbeandemo.services;

import com.springbeandemo.entities.Department;
import com.springbeandemo.entities.Employee;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.Enumeration;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

public class SpringTest {
    private ApplicationContext applicationContext;

    //在setUp这个方法得到spring容器
    @Before
    public void setUp() {
        applicationContext = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
    }

    @Test
    public void test() {
        UserService us = (UserService) applicationContext.getBean("userService");
        System.out.println(us.getName());
        System.out.println(us.getHelloService().getName());
        us.sayHello();
    }

    @Test
    public void test2() {
        //1. Setter Inject
        System.out.println("\n\t***** 1. Setter Inject  *****");
        //1.1 Inject List
        System.out.println("\n\t***** 1. Inject List *****");
        Department department1 = (Department) applicationContext.getBean("department1");
        for (Employee e : department1.getEmpList()) {
            System.out.println("name=" + e.getName() + " " + e.getId());
        }

        //1.2 Inject Set
        System.out.println("\n\t***** 2. Inject Set *****");
        Department department2 = (Department) applicationContext.getBean("department2");
        for (Employee e : department2.getEmpsets()) {
            System.out.println("name=" + e.getName() + " " + e.getId());
        }

        //1.3 Inject Map
        System.out.println("\n\t***** 3. Inject Map *****");
        Department department3 = (Department) applicationContext.getBean("department3");

        //iterator
        Map<String, Employee> empmaps = department3.getEmpMaps();
        Iterator it = empmaps.keySet().iterator();
        while (it.hasNext()) {
            String key = (String) it.next();
            Employee emp = empmaps.get(key);

            System.out.println("name=" + emp.getName() + " " + emp.getId());
        }
        //Or foreach
        for (Map.Entry<String, Employee> entry1 : department3.getEmpMaps().entrySet()) {
            System.out.println(entry1.getKey() + " " + entry1.getValue().getName());
        }

        //1.4 Inject Property
        System.out.println("\n\t***** 4. Inject Property *****");
        Department department4 = (Department) applicationContext.getBean("department4");
        System.out.println("***** Get data via properties *****");
        Properties pp = department4.getPp();

        for (Map.Entry<Object, Object> entry : pp.entrySet()) {
            System.out.println(entry.getKey().toString() + " " + entry.getValue().toString());
        }

        System.out.println("\n\t***** Get data via Enumeration *****");
        Enumeration en = pp.keys();
        while (en.hasMoreElements()) {
            String key = (String) en.nextElement();
            System.out.println(key + " " + pp.getProperty(key));
        }

        //2. Constructor Inject
        System.out.println("\n\t***** 2. Constructor Inject  *****");
        Employee employee3=(Employee) applicationContext.getBean("employee3");
        System.out.println(employee3.getName());

    }
}
