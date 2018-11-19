package com.springmvcdemo.Data.Domain;

import com.springmvcdemo.Utilities.DateUtil;

public class UserWithBLOBs extends User {
    private String email;

    private String phonenum;

    private String password;

    private String name;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getPhonenum() {
        return phonenum;
    }

    public void setPhonenum(String phonenum) {
        this.phonenum = phonenum == null ? null : phonenum.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    @Override
    public String toString() {
        String result = ("ID: " + this.getId().toString()
                + "\t Name: " + this.getName().toString()
                + "\t Password: " + this.getPassword().toString()
                + "\t Email: " + this.getEmail().toString()
                + "\t Gender: " + this.getGender().toString()
                + "\t Level: " + this.getLevel().toString()
                + "\t CreateTime: " + DateUtil.FormatDate(this.getCreatetime())
                + "\t UpdateTime: " + DateUtil.FormatDate(this.getUpdatetime())
                + "\t Remark: " + this.getRemark().toString());

        return result;
    }
}