package com.service.impl;

import com.daoutil.DataSource;
import com.daoutil.DataSourceContextHolder;
import com.daoutil.SystemLogger;
import com.mapper.FundsMapper;
import com.model.Funds;
import com.service.FundsService;
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
public class FundsServiceImpl implements FundsService {
    @Autowired
    private FundsMapper fundsMapper;

    @Override
    public List<Funds> getAllFunds() {
        return fundsMapper.selectAllModel();
    }

    @Override
    public List<Funds> getAllFunds(Integer page, Integer limit) {
        return fundsMapper.selectAllModel((page-1)*limit,limit);
    }

    @Override
    public Funds getFundsByCode(String code) {
        return fundsMapper.selectByPrimaryKey(code);
    }

    @Override
    public Funds getFundsByMinCode() {
        return fundsMapper.selectByMinPrimaryKey();
    }

    @Override
    public Funds getFundsByMaxCode() {
        return fundsMapper.selectByMaxPrimaryKey();
    }

    @Override
    public List<Funds> getFundsByParam(Funds record) {
        return fundsMapper.selectByParam(record);
    }

    @Override
    public List<Funds> queryFundsByParam(Funds record) {
        return fundsMapper.queryByParam(record);
    }

    @Override
    public List<Funds> getFundsByCondition(String field, Object value) {
        return fundsMapper.selectByCondition(field,value);
    }

    @Override
    public long countFundsBySelectCondition(String field, Object value) {
        return fundsMapper.countBySelectCondition(field,value);
    }

    @Override
    public List<Funds> getFundsByCondition(String field, Object value, Integer page, Integer limit) {
        return fundsMapper.selectByCondition(field,value,(page-1)*limit,limit);
    }

    @Override
    public List<Funds> queryFundsByCondition(String field, Object value) {
        return fundsMapper.queryByCondition(field,value);
    }

    @Override
    public long countFundsByQueryCondition(String field, Object value) {
        return fundsMapper.countByQueryCondition(field,value);
    }

    @Override
    @SystemLogger(operationType = "Like 模糊查询", operationName = "根据字段与值查询List<Model>")
    public List<Funds> queryFundsByCondition(String field, Object value, Integer page, Integer limit) {
        return fundsMapper.queryByCondition(field,value,(page-1)*limit,limit);
    }

    @Override
    public List<Funds> getFundsFieldsByCondition(String fields, String field, Object value) {
        return fundsMapper.selectFieldsByCondition(fields,field,value);
    }

    @Override
    public List<Funds> getFundsFieldsByCondition(String fields, String field, Object value, Integer page, Integer limit) {
        return fundsMapper.selectFieldsByCondition(fields,field,value,(page-1)*limit,limit);
    }

    @Override
    public List<Funds> queryFundsFieldsByCondition(String fields, String field, Object value) {
        return fundsMapper.queryFieldsByCondition(fields,field,value);
    }

    @Override
    public List<Funds> queryFundsFieldsByCondition(String fields, String field, Object value, Integer page, Integer limit) {
        return fundsMapper.queryFieldsByCondition(fields,field,value,(page-1)*limit,limit);
    }

    @Override
    public List<Funds> getFundsBySql(String sql) {
        return fundsMapper.selectBySql(sql);
    }

    @Override
    public List<Funds> getFundsFieldsBySql(String field, String sql) {
        return fundsMapper.selectFieldsBySql(field,sql);
    }

    @Override
    public int insertFunds(Funds record) {
        return fundsMapper.insert(record);
    }

    @Override
    public int setFundsByCode(Funds record) {
        return fundsMapper.updateByPrimaryKey(record);
    }

    @Override
    public int delFundsByCode(String code) {
        return fundsMapper.deleteByPrimaryKey(code);
    }

    @Override
    public long countAllFunds() {
        return fundsMapper.countAllModel();
    }

    @Override
    public int delAllFunds() {
        return fundsMapper.deleteAllModel();
    }
}