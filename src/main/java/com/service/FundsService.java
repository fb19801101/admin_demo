package com.service;

import com.daoutil.DataSource;
import com.daoutil.DataSourceContextHolder;
import com.model.Funds;

import java.util.List;

/**
 * @author 信息化管理部-方波
 * @site http://www.cr121.com/
 * @company 中铁十二局集团第一工程有限公司
 * @create 2020-02-13 13:09
 */
public interface FundsService {
    List<Funds> getAllFunds();

    List<Funds> getAllFunds(Integer page, Integer limit);

    Funds getFundsByCode(String code);

    Funds getFundsByMinCode();

    Funds getFundsByMaxCode();

    List<Funds> getFundsByParam(Funds record);

    List<Funds> queryFundsByParam(Funds record);

    List<Funds> getFundsByCondition(String field, Object value);

    long countFundsBySelectCondition(String field, Object value);

    List<Funds> getFundsByCondition(String field, Object value, Integer page, Integer limit);

    List<Funds> queryFundsByCondition(String field, Object value);

    long countFundsByQueryCondition(String field, Object value);

    List<Funds> queryFundsByCondition(String field, Object value, Integer page, Integer limit);

    List<Funds> getFundsFieldsByCondition(String fields, String field, Object value);

    List<Funds> getFundsFieldsByCondition(String fields, String field, Object value, Integer page, Integer limit);

    List<Funds> queryFundsFieldsByCondition(String fields, String field, Object value);

    List<Funds> queryFundsFieldsByCondition(String fields, String field, Object value, Integer page, Integer limit);

    List<Funds> getFundsBySql(String sql);

    List<Funds> getFundsFieldsBySql(String fields, String sql);

    int insertFunds(Funds record);

    int setFundsByCode(Funds record);

    int delFundsByCode(String code);

    long countAllFunds();

    int delAllFunds();
}