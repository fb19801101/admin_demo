package com.mapper;

import com.daoutil.DataSource;
import com.model.Member;
import com.model.MemberExample;
import org.springframework.stereotype.Repository;

/**
 * MemberMapper继承基类
 */
@Repository
public interface MemberMapper extends MyBatisBaseMapper<Member, String, MemberExample> {
}