package com.service.impl;

import com.daoutil.DataSource;
import com.daoutil.DataSourceContextHolder;
import com.mapper.OutlayMapper;
import com.model.Outlay;
import com.service.OutlayService;
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
public class OutlayServiceImpl implements OutlayService {
    @Autowired
    private OutlayMapper outlayMapper;

    @Override
    public List<Outlay> getAllOutlay() {
        return outlayMapper.selectAllModel();
    }

    @Override
    public List<Outlay> getAllOutlay(Integer page, Integer limit) {
        return outlayMapper.selectAllModel((page-1)*limit,limit);
    }

    @Override
    public Outlay getOutlayByCode(String code) {
        return outlayMapper.selectByPrimaryKey(code);
    }

    @Override
    public Outlay getOutlayByMinCode() {
        return outlayMapper.selectByMinPrimaryKey();
    }

    @Override
    public Outlay getOutlayByMaxCode() {
        return outlayMapper.selectByMaxPrimaryKey();
    }

    @Override
    public List<Outlay> getOutlayByParam(Outlay record) {
        return outlayMapper.selectByParam(record);
    }

    @Override
    public List<Outlay> queryOutlayByParam(Outlay record) {
        return outlayMapper.queryByParam(record);
    }

    @Override
    public List<Outlay> getOutlayByCondition(String field, Object value) {
        List<Outlay> list = outlayMapper.selectByCondition(field,value);
        for(Outlay x:list) {
            x.setFunds(x.getFunds());
            x.setMember(x.getMember());
        }

        return list;
    }

    @Override
    public long countOutlayBySelectCondition(String field, Object value) {
        return outlayMapper.countBySelectCondition(field,value);
    }

    @Override
    public List<Outlay> getOutlayByCondition(String field, Object value, Integer page, Integer limit) {
        List<Outlay> list = outlayMapper.selectByCondition(field,value,(page-1)*limit,limit);
        for(Outlay x:list) {
            x.setFunds(x.getFunds());
            x.setMember(x.getMember());
        }

        return list;
    }

    @Override
    public List<Outlay> queryOutlayByCondition(String field, Object value) {
        List<Outlay> list = outlayMapper.queryByCondition(field,value);
        for(Outlay x:list) {
            x.setFunds(x.getFunds());
            x.setMember(x.getMember());
        }

        return list;
    }

    @Override
    public long countOutlayByQueryCondition(String field, Object value) {
        return outlayMapper.countByQueryCondition(field,value);
    }

    @Override
    public List<Outlay> queryOutlayByCondition(String field, Object value, Integer page, Integer limit) {
        List<Outlay> list = outlayMapper.queryByCondition(field,value,(page-1)*limit,limit);
        for(Outlay x:list) {
            x.setFunds(x.getFunds());
            x.setMember(x.getMember());
        }

        return list;
    }

    @Override
    public List<Outlay> getOutlayFieldsByCondition(String fields, String field, Object value) {
        return outlayMapper.selectFieldsByCondition(fields,field,value);
    }

    @Override
    public List<Outlay> getOutlayFieldsByCondition(String fields, String field, Object value, Integer page, Integer limit) {
        return outlayMapper.selectFieldsByCondition(fields,field,value,(page-1)*limit,limit);
    }

    @Override
    public List<Outlay> queryOutlayFieldsByCondition(String fields, String field, Object value) {
        return outlayMapper.queryFieldsByCondition(fields,field,value);
    }

    @Override
    public List<Outlay> queryOutlayFieldsByCondition(String fields, String field, Object value, Integer page, Integer limit) {
        return outlayMapper.queryFieldsByCondition(fields,field,value,(page-1)*limit,limit);
    }

    @Override
    public List<Outlay> getOutlayBySql(String sql) {
        return outlayMapper.selectBySql(sql);
    }

    @Override
    public List<Outlay> getOutlayFieldsBySql(String field, String sql) {
        return outlayMapper.selectFieldsBySql(field,sql);
    }

    @Override
    public int insertOutlay(Outlay record) {
        return outlayMapper.insert(record);
    }

    @Override
    public int setOutlayByCode(Outlay record) {
        return outlayMapper.updateByPrimaryKey(record);
    }

    @Override
    public int delOutlayByCode(String code) {
        return outlayMapper.deleteByPrimaryKey(code);
    }

    @Override
    public long countAllOutlay() {
        return outlayMapper.countAllModel();
    }

    @Override
    public int delAllOutlay() {
        return outlayMapper.deleteAllModel();
    }
}