package com.service;

import com.model.SystemLog;

import java.util.List;

/**
 * @author 信息化管理部-方波
 * @site http://www.cr121.com/
 * @company 中铁十二局集团第一工程有限公司
 * @create 2020-02-13 13:09
 */
public interface SystemLogService {
    List<SystemLog> getAllSystemLog();

    List<SystemLog> getAllSystemLog(Integer page, Integer limit);

    SystemLog getSystemLogById(Integer id);

    SystemLog getSystemLogByMinId();

    SystemLog getSystemLogByMaxId();

    List<SystemLog> getSystemLogByParam(SystemLog record);

    List<SystemLog> querySystemLogByParam(SystemLog record);

    List<SystemLog> getSystemLogByCondition(String field, Object value);

    long countSystemLogBySelectCondition(String field, Object value);

    List<SystemLog> getSystemLogByCondition(String field, Object value, Integer page, Integer limit);

    List<SystemLog> querySystemLogByCondition(String field, Object value);

    long countSystemLogByQueryCondition(String field, Object value);

    List<SystemLog> querySystemLogByCondition(String field, Object value, Integer page, Integer limit);

    List<SystemLog> getSystemLogFieldsByCondition(String fields, String field, Object value);

    List<SystemLog> getSystemLogFieldsByCondition(String fields, String field, Object value, Integer page, Integer limit);

    List<SystemLog> querySystemLogFieldsByCondition(String fields, String field, Object value);

    List<SystemLog> querySystemLogFieldsByCondition(String fields, String field, Object value, Integer page, Integer limit);

    List<SystemLog> getSystemLogBySql(String sql);

    List<SystemLog> getSystemLogFieldsBySql(String fields, String sql);

    int insertSystemLog(SystemLog record);

    int setSystemLogById(SystemLog record);

    int delSystemLogById(Integer id);

    long countAllSystemLog();

    int delAllSystemLog();
}