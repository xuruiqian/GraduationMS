package com.springmvcdemo.DataRepository.Domain;

public class DepartmentWithBLOBs extends Department {
    private String name;

    private String level;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level == null ? null : level.trim();
    }
}