package com.service.impl;

import com.daoutil.SystemLogger;
import com.mapper.UserMapper;
import com.model.User;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 信息化管理部-方波
 * @site http://www.cr121.com/
 * @company 中铁十二局集团第一工程有限公司
 * @create 2020-02-13 13:11
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public List<User> getAllUser() {
        return userMapper.selectAllModel();
    }

    @Override
    public List<User> getAllUser(Integer page, Integer limit) {
        return userMapper.selectAllModel((page-1)*limit,limit);
    }

    @Override
    public User getUserById(Integer id) {
        return userMapper.selectByPrimaryKey(id);
    }

    @Override
    public User getUserByMinId() {
        return userMapper.selectByMinPrimaryKey();
    }

    @Override
    public User getUserByMaxId() {
        return userMapper.selectByMaxPrimaryKey();
    }

    @Override
    public List<User> getUserByParam(User record) {
        return userMapper.selectByParam(record);
    }

    @Override
    public List<User> queryUserByParam(User record) {
        return userMapper.queryByParam(record);
    }

    @Override
    public List<User> getUserByCondition(String field, Object value) {
        return userMapper.selectByCondition(field,value);
    }

    @Override
    public long countUserBySelectCondition(String field, Object value) {
        return userMapper.countBySelectCondition(field,value);
    }

    @Override
    public List<User> getUserByCondition(String field, Object value, Integer page, Integer limit) {
        return userMapper.selectByCondition(field,value,(page-1)*limit,limit);
    }

    @Override
    public List<User> queryUserByCondition(String field, Object value) {
        return userMapper.queryByCondition(field,value);
    }

    @Override
    public long countUserByQueryCondition(String field, Object value) {
        return userMapper.countByQueryCondition(field,value);
    }

    @Override
    @SystemLogger(operationType = "Like 模糊查询", operationName = "根据字段与值查询List<Model>")
    public List<User> queryUserByCondition(String field, Object value, Integer page, Integer limit) {
        return userMapper.queryByCondition(field,value,(page-1)*limit,limit);
    }

    @Override
    public List<User> getUserFieldsByCondition(String fields, String field, Object value) {
        return userMapper.selectFieldsByCondition(fields,field,value);
    }

    @Override
    public List<User> getUserFieldsByCondition(String fields, String field, Object value, Integer page, Integer limit) {
        return userMapper.selectFieldsByCondition(fields,field,value,(page-1)*limit,limit);
    }

    @Override
    public List<User> queryUserFieldsByCondition(String fields, String field, Object value) {
        return userMapper.queryFieldsByCondition(fields,field,value);
    }

    @Override
    public List<User> queryUserFieldsByCondition(String fields, String field, Object value, Integer page, Integer limit) {
        return userMapper.queryFieldsByCondition(fields,field,value,(page-1)*limit,limit);
    }

    @Override
    public List<User> getUserBySql(String sql) {
        return userMapper.selectBySql(sql);
    }

    @Override
    public List<User> getUserFieldsBySql(String field, String sql) {
        return userMapper.selectFieldsBySql(field,sql);
    }

    @Override
    public int insertUser(User record) {
        return userMapper.insert(record);
    }

    @Override
    public int setUserById(User record) {
        return userMapper.updateByPrimaryKey(record);
    }

    @Override
    public int delUserById(Integer id) {
        return userMapper.deleteByPrimaryKey(id);
    }

    @Override
    public long countAllUser() {
        return userMapper.countAllModel();
    }

    @Override
    public int delAllUser() {
        return userMapper.deleteAllModel();
    }
}