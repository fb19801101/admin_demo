package com.mapper;

import com.daoutil.DataSource;
import com.model.Income;
import com.model.IncomeExample;
import org.springframework.stereotype.Repository;

/**
 * IncomeMapper继承基类
 */
@Repository
public interface IncomeMapper extends MyBatisBaseMapper<Income, String, IncomeExample> {
}