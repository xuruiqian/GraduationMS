package com.springbasicdemo;

public class ApiOne implements Api {
    @Override
    public String test(int num) {
        System.out.println("ApiOne test method, num = " + num);
        return num +"xixixi";
    }
}
