package com.service;

import com.model.User;

import java.util.List;

/**
 * @author 信息化管理部-方波
 * @site http://www.cr121.com/
 * @company 中铁十二局集团第一工程有限公司
 * @create 2020-02-13 13:09
 */
public interface UserService {
    List<User> getAllUser();

    List<User> getAllUser(Integer page, Integer limit);

    User getUserById(Integer id);

    User getUserByMinId();

    User getUserByMaxId();

    List<User> getUserByParam(User record);

    List<User> queryUserByParam(User record);

    List<User> getUserByCondition(String field, Object value);

    long countUserBySelectCondition(String field, Object value);

    List<User> getUserByCondition(String field, Object value, Integer page, Integer limit);

    List<User> queryUserByCondition(String field, Object value);

    long countUserByQueryCondition(String field, Object value);

    List<User> queryUserByCondition(String field, Object value, Integer page, Integer limit);

    List<User> getUserFieldsByCondition(String fields, String field, Object value);

    List<User> getUserFieldsByCondition(String fields, String field, Object value, Integer page, Integer limit);

    List<User> queryUserFieldsByCondition(String fields, String field, Object value);

    List<User> queryUserFieldsByCondition(String fields, String field, Object value, Integer page, Integer limit);

    List<User> getUserBySql(String sql);

    List<User> getUserFieldsBySql(String fields, String sql);

    int insertUser(User record);

    int setUserById(User record);

    int delUserById(Integer id);

    long countAllUser();

    int delAllUser();
}