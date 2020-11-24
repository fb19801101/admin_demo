package com.service.impl;

import com.mapper.CurveElementMapper;
import com.model.CurveElement;
import com.service.CurveElementService;
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
public class CurveElementServiceImpl implements CurveElementService {
    @Autowired
    private CurveElementMapper curveElementMapper;

    @Override
    public List<CurveElement> getAllCurveElement() {
        return curveElementMapper.selectAllModel();
    }

    @Override
    public List<CurveElement> getAllCurveElement(Integer page, Integer limit) {
        return curveElementMapper.selectAllModel((page-1)*limit,limit);
    }

    @Override
    public CurveElement getCurveElementById(Integer id) {
        return curveElementMapper.selectByPrimaryKey(id);
    }

    @Override
    public CurveElement getCurveElementByMinId() {
        return curveElementMapper.selectByMinPrimaryKey();
    }

    @Override
    public CurveElement getCurveElementByMaxId() {
        return curveElementMapper.selectByMaxPrimaryKey();
    }

    @Override
    public List<CurveElement> getCurveElementByParam(CurveElement record) {
        return curveElementMapper.selectByParam(record);
    }

    @Override
    public List<CurveElement> queryCurveElementByParam(CurveElement record) {
        return curveElementMapper.queryByParam(record);
    }

    @Override
    public List<CurveElement> getCurveElementByCondition(String field, Object value) {
        return curveElementMapper.selectByCondition(field,value);
    }

    @Override
    public long countCurveElementBySelectCondition(String field, Object value) {
        return curveElementMapper.countBySelectCondition(field,value);
    }

    @Override
    public List<CurveElement> getCurveElementByCondition(String field, Object value, Integer page, Integer limit) {
        return curveElementMapper.selectByCondition(field,value,(page-1)*limit,limit);
    }

    @Override
    public List<CurveElement> queryCurveElementByCondition(String field, Object value) {
        return curveElementMapper.queryByCondition(field,value);
    }

    @Override
    public long countCurveElementByQueryCondition(String field, Object value) {
        return curveElementMapper.countByQueryCondition(field,value);
    }

    @Override
    public List<CurveElement> queryCurveElementByCondition(String field, Object value, Integer page, Integer limit) {
        return curveElementMapper.queryByCondition(field,value,(page-1)*limit,limit);
    }

    @Override
    public List<CurveElement> getCurveElementFieldsByCondition(String fields, String field, Object value) {
        return curveElementMapper.selectFieldsByCondition(fields,field,value);
    }

    @Override
    public List<CurveElement> getCurveElementFieldsByCondition(String fields, String field, Object value, Integer page, Integer limit) {
        return curveElementMapper.selectFieldsByCondition(fields,field,value,(page-1)*limit,limit);
    }

    @Override
    public List<CurveElement> queryCurveElementFieldsByCondition(String fields, String field, Object value) {
        return curveElementMapper.queryFieldsByCondition(fields,field,value);
    }

    @Override
    public List<CurveElement> queryCurveElementFieldsByCondition(String fields, String field, Object value, Integer page, Integer limit) {
        return curveElementMapper.queryFieldsByCondition(fields,field,value,(page-1)*limit,limit);
    }

    @Override
    public List<CurveElement> getCurveElementBySql(String sql) {
        return curveElementMapper.selectBySql(sql);
    }

    @Override
    public List<CurveElement> getCurveElementFieldsBySql(String field, String sql) {
        return curveElementMapper.selectFieldsBySql(field,sql);
    }

    @Override
    public int insertCurveElement(CurveElement record) {
        return curveElementMapper.insert(record);
    }

    @Override
    public int setCurveElementById(CurveElement record) {
        return curveElementMapper.updateByPrimaryKey(record);
    }

    @Override
    public int delCurveElementById(Integer id) {
        return curveElementMapper.deleteByPrimaryKey(id);
    }

    @Override
    public long countAllCurveElement() {
        return curveElementMapper.countAllModel();
    }

    @Override
    public int delAllCurveElement() {
        return curveElementMapper.deleteAllModel();
    }

    @Override
    public Integer getPrimaryKeyByQxAndJd(String ceQx, String ceJd) {
        return curveElementMapper.selectPrimaryKeyByQxAndJd(ceQx,ceJd);
    }

    @Override
    public List<String> getCurveLine() {
        return curveElementMapper.selectCurveLine();
    }

    @Override
    public List<CurveElement> getCurveElementByQx(String ceQx) {
        return curveElementMapper.selectCurveElementByQx(ceQx);
    }
}