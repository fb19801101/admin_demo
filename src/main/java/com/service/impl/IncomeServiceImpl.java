package com.service.impl;

import com.daoutil.DataSource;
import com.daoutil.DataSourceContextHolder;
import com.mapper.IncomeMapper;
import com.model.Income;
import com.model.Outlay;
import com.service.IncomeService;
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
@DataSource(DataSourceContextHolder.DATA_SOURCE_TARGET)
public class IncomeServiceImpl implements IncomeService {
    @Autowired
    private IncomeMapper incomeMapper;

    @Override
    public List<Income> getAllIncome() {
        return incomeMapper.selectAllModel();
    }

    @Override
    public List<Income> getAllIncome(Integer page, Integer limit) {
        return incomeMapper.selectAllModel((page-1)*limit,limit);
    }

    @Override
    public Income getIncomeByCode(String code) {
        return incomeMapper.selectByPrimaryKey(code);
    }

    @Override
    public Income getIncomeByMinCode() {
        return incomeMapper.selectByMinPrimaryKey();
    }

    @Override
    public Income getIncomeByMaxCode() {
        return incomeMapper.selectByMaxPrimaryKey();
    }

    @Override
    public List<Income> getIncomeByParam(Income record) {
        return incomeMapper.selectByParam(record);
    }

    @Override
    public List<Income> queryIncomeByParam(Income record) {
        return incomeMapper.queryByParam(record);
    }

    @Override
    public List<Income> getIncomeByCondition(String field, Object value) {
        List<Income> list = incomeMapper.selectByCondition(field,value);
        for(Income x:list) {
            x.setFunds(x.getFunds());
            x.setMember(x.getMember());
        }

        return list;
    }

    @Override
    public long countIncomeBySelectCondition(String field, Object value) {
        return incomeMapper.countBySelectCondition(field,value);
    }

    @Override
    public List<Income> getIncomeByCondition(String field, Object value, Integer page, Integer limit) {
        List<Income> list = incomeMapper.selectByCondition(field,value,(page-1)*limit,limit);
        for(Income x:list) {
            x.setFunds(x.getFunds());
            x.setMember(x.getMember());
        }

        return list;
    }

    @Override
    public List<Income> queryIncomeByCondition(String field, Object value) {
        List<Income> list = incomeMapper.queryByCondition(field,value);
        for(Income x:list) {
            x.setFunds(x.getFunds());
            x.setMember(x.getMember());
        }

        return list;
    }

    @Override
    public long countIncomeByQueryCondition(String field, Object value) {
        return incomeMapper.countByQueryCondition(field,value);
    }

    @Override
    public List<Income> queryIncomeByCondition(String field, Object value, Integer page, Integer limit) {
        List<Income> list = incomeMapper.queryByCondition(field,value,(page-1)*limit,limit);
        for(Income x:list) {
            x.setFunds(x.getFunds());
            x.setMember(x.getMember());
        }

        return list;
    }

    @Override
    public List<Income> getIncomeFieldsByCondition(String fields, String field, Object value) {
        return incomeMapper.selectFieldsByCondition(fields,field,value);
    }

    @Override
    public List<Income> getIncomeFieldsByCondition(String fields, String field, Object value, Integer page, Integer limit) {
        return incomeMapper.selectFieldsByCondition(fields,field,value,(page-1)*limit,limit);
    }

    @Override
    public List<Income> queryIncomeFieldsByCondition(String fields, String field, Object value) {
        return incomeMapper.queryFieldsByCondition(fields,field,value);
    }

    @Override
    public List<Income> queryIncomeFieldsByCondition(String fields, String field, Object value, Integer page, Integer limit) {
        return incomeMapper.queryFieldsByCondition(fields,field,value,(page-1)*limit,limit);
    }

    @Override
    public List<Income> getIncomeBySql(String sql) {
        return incomeMapper.selectBySql(sql);
    }

    @Override
    public List<Income> getIncomeFieldsBySql(String field, String sql) {
        return incomeMapper.selectFieldsBySql(field,sql);
    }

    @Override
    public int insertIncome(Income record) {
        return incomeMapper.insert(record);
    }

    @Override
    public int setIncomeByCode(Income record) {
        return incomeMapper.updateByPrimaryKey(record);
    }

    @Override
    public int delIncomeByCode(String code) {
        return incomeMapper.deleteByPrimaryKey(code);
    }

    @Override
    public long countAllIncome() {
        return incomeMapper.countAllModel();
    }

    @Override
    public int delAllIncome() {
        return incomeMapper.deleteAllModel();
    }
}