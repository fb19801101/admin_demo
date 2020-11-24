package com.mapper;

import com.model.User;
import com.model.UserExample;
import org.springframework.stereotype.Repository;

/**
 * UserMapper继承基类
 */
@Repository
public interface UserMapper extends MyBatisBaseMapper<User, Integer, UserExample> {
}