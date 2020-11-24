package com.mapper;

import com.model.SystemLog;
import com.model.SystemLogExample;
import org.springframework.stereotype.Repository;

/**
 * SystemLogMapper继承基类
 */
@Repository
public interface SystemLogMapper extends MyBatisBaseMapper<SystemLog, Integer, SystemLogExample> {
}