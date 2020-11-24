package com.mapper;

import com.model.Funds;
import com.model.FundsExample;
import org.springframework.stereotype.Repository;

/**
 * FundsMapper继承基类
 */
@Repository
public interface FundsMapper extends MyBatisBaseMapper<Funds, String, FundsExample> {
}