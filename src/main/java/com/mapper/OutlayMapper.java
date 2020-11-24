package com.mapper;

import com.daoutil.DataSource;
import com.model.Outlay;
import com.model.OutlayExample;
import org.springframework.stereotype.Repository;

/**
 * OutlayMapper继承基类
 */
@Repository
public interface OutlayMapper extends MyBatisBaseMapper<Outlay, String, OutlayExample> {
}