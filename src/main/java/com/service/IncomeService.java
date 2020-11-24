package com.service;

import com.model.Income;

import java.util.List;

/**
 * @author 信息化管理部-方波
 * @site http://www.cr121.com/
 * @company 中铁十二局集团第一工程有限公司
 * @create 2020-02-13 13:09
 */
public interface IncomeService {
    List<Income> getAllIncome();

    List<Income> getAllIncome(Integer page, Integer limit);

    Income getIncomeByCode(String code);

    Income getIncomeByMinCode();

    Income getIncomeByMaxCode();

    List<Income> getIncomeByParam(Income record);

    List<Income> queryIncomeByParam(Income record);

    List<Income> getIncomeByCondition(String field, Object value);

    long countIncomeBySelectCondition(String field, Object value);

    List<Income> getIncomeByCondition(String field, Object value, Integer page, Integer limit);

    List<Income> queryIncomeByCondition(String field, Object value);

    long countIncomeByQueryCondition(String field, Object value);

    List<Income> queryIncomeByCondition(String field, Object value, Integer page, Integer limit);

    List<Income> getIncomeFieldsByCondition(String fields, String field, Object value);

    List<Income> getIncomeFieldsByCondition(String fields, String field, Object value, Integer page, Integer limit);

    List<Income> queryIncomeFieldsByCondition(String fields, String field, Object value);

    List<Income> queryIncomeFieldsByCondition(String fields, String field, Object value, Integer page, Integer limit);

    List<Income> getIncomeBySql(String sql);

    List<Income> getIncomeFieldsBySql(String fields, String sql);

    int insertIncome(Income record);

    int setIncomeByCode(Income record);

    int delIncomeByCode(String code);

    long countAllIncome();

    int delAllIncome();
}