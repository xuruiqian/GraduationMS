package com.springmvcdemo.DataRepository.Option;

public enum AuthorityType {
    /**
     * 验证是否登录
     */
    Pass,
    /**
     * 验证是否登录
     */
    HasSession,
    /**
     * 验证是否登录以及是否有权限
     */
    HasSessionAndPermission
}
