package com.springbeandemo.entities;

public class Employee {
    private String name;
    private int id;
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public Employee() {}
    public Employee(String name, int id) {
        System.out.println("Employee(String name, int age) 函数被调用..");
        this.name = name;
        this.id = id;
    }
}
