package com.service;

import com.model.Outlay;

import java.util.List;

/**
 * @author 信息化管理部-方波
 * @site http://www.cr121.com/
 * @company 中铁十二局集团第一工程有限公司
 * @create 2020-02-13 13:09
 */
public interface OutlayService {
    List<Outlay> getAllOutlay();

    List<Outlay> getAllOutlay(Integer page, Integer limit);

    Outlay getOutlayByCode(String code);

    Outlay getOutlayByMinCode();

    Outlay getOutlayByMaxCode();

    List<Outlay> getOutlayByParam(Outlay record);

    List<Outlay> queryOutlayByParam(Outlay record);

    List<Outlay> getOutlayByCondition(String field, Object value);

    long countOutlayBySelectCondition(String field, Object value);

    List<Outlay> getOutlayByCondition(String field, Object value, Integer page, Integer limit);

    List<Outlay> queryOutlayByCondition(String field, Object value);

    long countOutlayByQueryCondition(String field, Object value);

    List<Outlay> queryOutlayByCondition(String field, Object value, Integer page, Integer limit);

    List<Outlay> getOutlayFieldsByCondition(String fields, String field, Object value);

    List<Outlay> getOutlayFieldsByCondition(String fields, String field, Object value, Integer page, Integer limit);

    List<Outlay> queryOutlayFieldsByCondition(String fields, String field, Object value);

    List<Outlay> queryOutlayFieldsByCondition(String fields, String field, Object value, Integer page, Integer limit);

    List<Outlay> getOutlayBySql(String sql);

    List<Outlay> getOutlayFieldsBySql(String fields, String sql);

    int insertOutlay(Outlay record);

    int setOutlayByCode(Outlay record);

    int delOutlayByCode(String code);

    long countAllOutlay();

    int delAllOutlay();
}