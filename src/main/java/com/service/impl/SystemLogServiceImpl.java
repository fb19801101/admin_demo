package com.service.impl;

import com.mapper.SystemLogMapper;
import com.mapper.SystemLogMapper;
import com.model.SystemLog;
import com.service.SystemLogService;
import com.service.SystemLogService;
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
public class SystemLogServiceImpl implements SystemLogService {
    @Autowired
    private SystemLogMapper systemLogMapper;

    @Override
    public List<SystemLog> getAllSystemLog() {
        return systemLogMapper.selectAllModel();
    }

    @Override
    public List<SystemLog> getAllSystemLog(Integer page, Integer limit) {
        return systemLogMapper.selectAllModel((page-1)*limit,limit);
    }

    @Override
    public SystemLog getSystemLogById(Integer id) {
        return systemLogMapper.selectByPrimaryKey(id);
    }

    @Override
    public SystemLog getSystemLogByMinId() {
        return systemLogMapper.selectByMinPrimaryKey();
    }

    @Override
    public SystemLog getSystemLogByMaxId() {
        return systemLogMapper.selectByMaxPrimaryKey();
    }

    @Override
    public List<SystemLog> getSystemLogByParam(SystemLog record) {
        return systemLogMapper.selectByParam(record);
    }

    @Override
    public List<SystemLog> querySystemLogByParam(SystemLog record) {
        return systemLogMapper.queryByParam(record);
    }

    @Override
    public List<SystemLog> getSystemLogByCondition(String field, Object value) {
        return systemLogMapper.selectByCondition(field,value);
    }

    @Override
    public long countSystemLogBySelectCondition(String field, Object value) {
        return systemLogMapper.countBySelectCondition(field,value);
    }

    @Override
    public List<SystemLog> getSystemLogByCondition(String field, Object value, Integer page, Integer limit) {
        return systemLogMapper.selectByCondition(field,value,(page-1)*limit,limit);
    }

    @Override
    public List<SystemLog> querySystemLogByCondition(String field, Object value) {
        return systemLogMapper.queryByCondition(field,value);
    }

    @Override
    public long countSystemLogByQueryCondition(String field, Object value) {
        return systemLogMapper.countByQueryCondition(field,value);
    }

    @Override
    public List<SystemLog> querySystemLogByCondition(String field, Object value, Integer page, Integer limit) {
        return systemLogMapper.queryByCondition(field,value,(page-1)*limit,limit);
    }

    @Override
    public List<SystemLog> getSystemLogFieldsByCondition(String fields, String field, Object value) {
        return systemLogMapper.selectFieldsByCondition(fields,field,value);
    }

    @Override
    public List<SystemLog> getSystemLogFieldsByCondition(String fields, String field, Object value, Integer page, Integer limit) {
        return systemLogMapper.selectFieldsByCondition(fields,field,value,(page-1)*limit,limit);
    }

    @Override
    public List<SystemLog> querySystemLogFieldsByCondition(String fields, String field, Object value) {
        return systemLogMapper.queryFieldsByCondition(fields,field,value);
    }

    @Override
    public List<SystemLog> querySystemLogFieldsByCondition(String fields, String field, Object value, Integer page, Integer limit) {
        return systemLogMapper.queryFieldsByCondition(fields,field,value,(page-1)*limit,limit);
    }

    @Override
    public List<SystemLog> getSystemLogBySql(String sql) {
        return systemLogMapper.selectBySql(sql);
    }

    @Override
    public List<SystemLog> getSystemLogFieldsBySql(String field, String sql) {
        return systemLogMapper.selectFieldsBySql(field,sql);
    }

    @Override
    public int insertSystemLog(SystemLog record) {
        return systemLogMapper.insert(record);
    }

    @Override
    public int setSystemLogById(SystemLog record) {
        return systemLogMapper.updateByPrimaryKey(record);
    }

    @Override
    public int delSystemLogById(Integer id) {
        return systemLogMapper.deleteByPrimaryKey(id);
    }

    @Override
    public long countAllSystemLog() {
        return systemLogMapper.countAllModel();
    }

    @Override
    public int delAllSystemLog() {
        return systemLogMapper.deleteAllModel();
    }
}