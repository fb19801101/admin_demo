package com.service.impl;

import com.daoutil.DataSource;
import com.daoutil.DataSourceContextHolder;
import com.mapper.FinanceMapper;
import com.model.Finance;
import com.model.Income;
import com.model.Outlay;
import com.service.FinanceService;
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
public class FinanceServiceImpl implements FinanceService {
    @Autowired
    private FinanceMapper financeMapper;

    @Override
    public List<Finance> getAllFinance() {
        return financeMapper.selectAllModel();
    }

    @Override
    public List<Finance> getAllFinance(Integer page, Integer limit) {
        return financeMapper.selectAllModel((page-1)*limit,limit);
    }

    @Override
    public Finance getFinanceByCode(String code) {
        return financeMapper.selectByPrimaryKey(code);
    }

    @Override
    public List<Finance> selectFinanceByFunds(String funds, Integer page, Integer limit) {
        List<Finance> list = financeMapper.selectFinanceByFunds(funds,(page-1)*limit,limit);
        for(Finance x:list) {
            x.setFunds(x.getFunds());
            x.setMember(x.getMember());
        }

        return list;
    }

    @Override
    public long countFinanceBySelectFunds(String funds) {
        return financeMapper.countFinanceBySelectFunds(funds);
    }

    @Override
    public List<Income> selectIncomeByFunds(String funds, Integer page, Integer limit) {
        List<Income> list = financeMapper.selectIncomeByFunds(funds,(page-1)*limit,limit);
        for(Income x:list) {
            x.setFunds(x.getFunds());
            x.setMember(x.getMember());
        }

        return list;
    }

    @Override
    public long countIncomeBySelectFunds(String funds) {
        return financeMapper.countIncomeBySelectFunds(funds);
    }

    @Override
    public List<Outlay> selectOutlayByFunds(String funds, Integer page, Integer limit) {
        List<Outlay> list = financeMapper.selectOutlayByFunds(funds,(page-1)*limit,limit);
        for(Outlay x:list) {
            x.setFunds(x.getFunds());
            x.setMember(x.getMember());
        }

        return list;
    }

    @Override
    public long countOutlayBySelectFunds(String funds) {
        return financeMapper.countOutlayBySelectFunds(funds);
    }

    @Override
    public List<Finance> selectFinanceByMember(String member, Integer page, Integer limit) {
        List<Finance> list = financeMapper.selectFinanceByMember(member,(page-1)*limit,limit);
        for(Finance x:list) {
            x.setFunds(x.getFunds());
            x.setMember(x.getMember());
        }

        return list;
    }

    @Override
    public long countFinanceBySelectMember(String member) {
        return financeMapper.countFinanceBySelectMember(member);
    }

    @Override
    public List<Income> selectIncomeByMember(String member, Integer page, Integer limit) {
        List<Income> list = financeMapper.selectIncomeByMember(member,(page-1)*limit,limit);
        for(Income x:list) {
            x.setFunds(x.getFunds());
            x.setMember(x.getMember());
        }

        return list;
    }

    @Override
    public long countIncomeBySelectMember(String member) {
        return financeMapper.countIncomeBySelectMember(member);
    }

    @Override
    public List<Outlay> selectOutlayByMember(String member, Integer page, Integer limit) {
        List<Outlay> list = financeMapper.selectOutlayByMember(member,(page-1)*limit,limit);
        for(Outlay x:list) {
            x.setFunds(x.getFunds());
            x.setMember(x.getMember());
        }

        return list;
    }

    @Override
    public long countOutlayBySelectMember(String member) {
        return financeMapper.countOutlayBySelectMember(member);
    }

    @Override
    public List<Finance> queryFinanceByFunds(String funds, Integer page, Integer limit) {
        List<Finance> list = financeMapper.queryFinanceByFunds(funds,(page-1)*limit,limit);
        for(Finance x:list) {
            x.setFunds(x.getFunds());
            x.setMember(x.getMember());
        }

        return list;
    }

    @Override
    public long countFinanceByQueryFunds(String funds) {
        return financeMapper.countFinanceByQueryFunds(funds);
    }

    @Override
    public List<Income> queryIncomeByFunds(String funds, Integer page, Integer limit) {
        List<Income> list = financeMapper.queryIncomeByFunds(funds,(page-1)*limit,limit);
        for(Income x:list) {
            x.setFunds(x.getFunds());
            x.setMember(x.getMember());
        }

        return list;
    }

    @Override
    public long countIncomeByQueryFunds(String funds) {
        return financeMapper.countIncomeByQueryFunds(funds);
    }

    @Override
    public List<Outlay> queryOutlayByFunds(String funds, Integer page, Integer limit) {
        List<Outlay> list = financeMapper.queryOutlayByFunds(funds,(page-1)*limit,limit);
        for(Outlay x:list) {
            x.setFunds(x.getFunds());
            x.setMember(x.getMember());
        }

        return list;
    }

    @Override
    public long countOutlayByQueryFunds(String funds) {
        return financeMapper.countOutlayByQueryFunds(funds);
    }

    @Override
    public List<Finance> queryFinanceByMember(String member, Integer page, Integer limit) {
        List<Finance> list = financeMapper.queryFinanceByMember(member,(page-1)*limit,limit);
        for(Finance x:list) {
            x.setFunds(x.getFunds());
            x.setMember(x.getMember());
        }

        return list;
    }

    @Override
    public long countFinanceByQueryMember(String member) {
        return financeMapper.countFinanceByQueryMember(member);
    }

    @Override
    public List<Income> queryIncomeByMember(String member, Integer page, Integer limit) {
        List<Income> list = financeMapper.queryIncomeByMember(member,(page-1)*limit,limit);
        for(Income x:list) {
            x.setFunds(x.getFunds());
            x.setMember(x.getMember());
        }

        return list;
    }

    @Override
    public long countIncomeByQueryMember(String member) {
        return financeMapper.countIncomeByQueryMember(member);
    }

    @Override
    public List<Outlay> queryOutlayByMember(String member, Integer page, Integer limit) {
        List<Outlay> list = financeMapper.queryOutlayByMember(member,(page-1)*limit,limit);
        for(Outlay x:list) {
            x.setFunds(x.getFunds());
            x.setMember(x.getMember());
        }

        return list;
    }

    @Override
    public long countOutlayByQueryMember(String member) {
        return financeMapper.countOutlayByQueryMember(member);
    }

    @Override
    public Finance getFinanceByMinCode() {
        return financeMapper.selectByMinPrimaryKey();
    }

    @Override
    public Finance getFinanceByMaxCode() {
        return financeMapper.selectByMaxPrimaryKey();
    }

    @Override
    public List<Finance> getFinanceByParam(Finance record) {
        return financeMapper.selectByParam(record);
    }

    @Override
    public List<Finance> queryFinanceByParam(Finance record) {
        return financeMapper.queryByParam(record);
    }

    @Override
    public List<Finance> getFinanceByCondition(String field, Object value) {
        List<Finance> list = financeMapper.selectByCondition(field,value);
        for(Finance x:list) {
            x.setFunds(x.getFunds());
            x.setMember(x.getMember());
        }

        return list;
    }

    @Override
    public long countFinanceBySelectCondition(String field, Object value) {
        return financeMapper.countBySelectCondition(field,value);
    }

    @Override
    public List<Finance> getFinanceByCondition(String field, Object value, Integer page, Integer limit) {
        List<Finance> list = financeMapper.selectByCondition(field,value,(page-1)*limit,limit);
        for(Finance x:list) {
            x.setFunds(x.getFunds());
            x.setMember(x.getMember());
        }

        return list;
    }

    @Override
    public List<Finance> queryFinanceByCondition(String field, Object value) {
        List<Finance> list = financeMapper.queryByCondition(field,value);
        for(Finance x:list) {
            x.setFunds(x.getFunds());
            x.setMember(x.getMember());
        }

        return list;
    }

    @Override
    public long countFinanceByQueryCondition(String field, Object value) {
        return financeMapper.countByQueryCondition(field,value);
    }

    @Override
    public List<Finance> queryFinanceByCondition(String field, Object value, Integer page, Integer limit) {
        List<Finance> list = financeMapper.queryByCondition(field,value,(page-1)*limit,limit);
        for(Finance x:list) {
            x.setFunds(x.getFunds());
            x.setMember(x.getMember());
        }

        return list;
    }

    @Override
    public List<Finance> getFinanceFieldsByCondition(String fields, String field, Object value) {
        return financeMapper.selectFieldsByCondition(fields,field,value);
    }

    @Override
    public List<Finance> getFinanceFieldsByCondition(String fields, String field, Object value, Integer page, Integer limit) {
        return financeMapper.selectFieldsByCondition(fields,field,value,(page-1)*limit,limit);
    }

    @Override
    public List<Finance> queryFinanceFieldsByCondition(String fields, String field, Object value) {
        return financeMapper.queryFieldsByCondition(fields,field,value);
    }

    @Override
    public List<Finance> queryFinanceFieldsByCondition(String fields, String field, Object value, Integer page, Integer limit) {
        return financeMapper.queryFieldsByCondition(fields,field,value,(page-1)*limit,limit);
    }

    @Override
    public List<Finance> getFinanceBySql(String sql) {
        return financeMapper.selectBySql(sql);
    }

    @Override
    public List<Finance> getFinanceFieldsBySql(String field, String sql) {
        return financeMapper.selectFieldsBySql(field,sql);
    }

    @Override
    public int insertFinance(Finance record) {
        return financeMapper.insert(record);
    }

    @Override
    public int setFinanceByCode(Finance record) {
        return financeMapper.updateByPrimaryKey(record);
    }

    @Override
    public int delFinanceByCode(String code) {
        return financeMapper.deleteByPrimaryKey(code);
    }

    @Override
    public long countAllFinance() {
        return financeMapper.countAllModel();
    }

    @Override
    public int delAllFinance() {
        return financeMapper.deleteAllModel();
    }
}