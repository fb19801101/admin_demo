package com.service;

import com.model.Finance;
import com.model.Income;
import com.model.Outlay;

import java.util.List;

/**
 * @author 信息化管理部-方波
 * @site http://www.cr121.com/
 * @company 中铁十二局集团第一工程有限公司
 * @create 2020-02-13 13:09
 */
public interface FinanceService {
    List<Finance> getAllFinance();

    List<Finance> getAllFinance(Integer page, Integer limit);

    Finance getFinanceByCode(String code);

    List<Finance> selectFinanceByFunds(String funds, Integer page, Integer limit);

    long countFinanceBySelectFunds(String funds);

    List<Income> selectIncomeByFunds(String funds, Integer page, Integer limit);

    long countIncomeBySelectFunds(String funds);

    List<Outlay> selectOutlayByFunds(String funds, Integer page, Integer limit);

    long countOutlayBySelectFunds(String funds);

    List<Finance> selectFinanceByMember(String funds, Integer page, Integer limit);

    long countFinanceBySelectMember(String funds);

    List<Income> selectIncomeByMember(String funds, Integer page, Integer limit);

    long countIncomeBySelectMember(String funds);

    List<Outlay> selectOutlayByMember(String funds, Integer page, Integer limit);

    long countOutlayBySelectMember(String funds);

    List<Finance> queryFinanceByFunds(String funds, Integer page, Integer limit);

    long countFinanceByQueryFunds(String funds);

    List<Income> queryIncomeByFunds(String funds, Integer page, Integer limit);

    long countIncomeByQueryFunds(String funds);

    List<Outlay> queryOutlayByFunds(String funds, Integer page, Integer limit);

    long countOutlayByQueryFunds(String funds);

    List<Finance> queryFinanceByMember(String funds, Integer page, Integer limit);

    long countFinanceByQueryMember(String funds);

    List<Income> queryIncomeByMember(String funds, Integer page, Integer limit);

    long countIncomeByQueryMember(String funds);

    List<Outlay> queryOutlayByMember(String funds, Integer page, Integer limit);

    long countOutlayByQueryMember(String funds);

    Finance getFinanceByMinCode();

    Finance getFinanceByMaxCode();

    List<Finance> getFinanceByParam(Finance record);

    List<Finance> queryFinanceByParam(Finance record);

    List<Finance> getFinanceByCondition(String field, Object value);

    long countFinanceBySelectCondition(String field, Object value);

    List<Finance> getFinanceByCondition(String field, Object value, Integer page, Integer limit);

    List<Finance> queryFinanceByCondition(String field, Object value);

    long countFinanceByQueryCondition(String field, Object value);

    List<Finance> queryFinanceByCondition(String field, Object value, Integer page, Integer limit);

    List<Finance> getFinanceFieldsByCondition(String fields, String field, Object value);

    List<Finance> getFinanceFieldsByCondition(String fields, String field, Object value, Integer page, Integer limit);

    List<Finance> queryFinanceFieldsByCondition(String fields, String field, Object value);

    List<Finance> queryFinanceFieldsByCondition(String fields, String field, Object value, Integer page, Integer limit);

    List<Finance> getFinanceBySql(String sql);

    List<Finance> getFinanceFieldsBySql(String fields, String sql);

    int insertFinance(Finance record);

    int setFinanceByCode(Finance record);

    int delFinanceByCode(String code);

    long countAllFinance();

    int delAllFinance();
}