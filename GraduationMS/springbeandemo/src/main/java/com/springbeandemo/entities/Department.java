package com.springbeandemo.entities;

import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
public class Department {
    private String name;
    private String [] empName;//数组
    private List<Employee> empList;//list集合
    private Set<Employee> empsets;//set集合
    private Map<String,Employee> empMaps;//map集合
    private Properties pp;//Properties的使用
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String[] getEmpName() {
        return empName;
    }
    public void setEmpName(String[] empName) {
        this.empName = empName;
    }
    public List<Employee> getEmpList() {
        return empList;
    }
    public void setEmpList(List<Employee> empList) {
        this.empList = empList;
    }
    public Set<Employee> getEmpsets() {
        return empsets;
    }
    public void setEmpsets(Set<Employee> empsets) {
        this.empsets = empsets;
    }
    public Map<String, Employee> getEmpMaps() {
        return empMaps;
    }
    public void setEmpMaps(Map<String, Employee> empMaps) {
        this.empMaps = empMaps;
    }
    public Properties getPp() {
        return pp;
    }
    public void setPp(Properties pp) {
        this.pp = pp;
    }
}