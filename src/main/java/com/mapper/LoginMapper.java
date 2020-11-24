package com.mapper;

import com.model.Login;
import com.model.LoginExample;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

/**
 * LoginMapper继承基类
 */
@Repository
public interface LoginMapper extends MyBatisBaseMapper<Login, Integer, LoginExample> {
    @Select("select * from tb_login where name = #{name}")
    Login selectByName(@Param("name") String name);

    @Select("select * from tb_login where username = #{username}")
    Login selectByUsername(@Param("username") String username);
}