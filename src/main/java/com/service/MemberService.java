package com.service;

import com.model.Member;

import java.util.List;

/**
 * @author 信息化管理部-方波
 * @site http://www.cr121.com/
 * @company 中铁十二局集团第一工程有限公司
 * @create 2020-02-13 13:09
 */
public interface MemberService {
    List<Member> getAllMember();

    List<Member> getAllMember(Integer page, Integer limit);

    Member getMemberByCode(String code);

    Member getMemberByMinCode();

    Member getMemberByMaxCode();

    List<Member> getMemberByParam(Member record);

    List<Member> queryMemberByParam(Member record);

    List<Member> getMemberByCondition(String field, Object value);

    long countMemberBySelectCondition(String field, Object value);

    List<Member> getMemberByCondition(String field, Object value, Integer page, Integer limit);

    List<Member> queryMemberByCondition(String field, Object value);

    long countMemberByQueryCondition(String field, Object value);

    List<Member> queryMemberByCondition(String field, Object value, Integer page, Integer limit);

    List<Member> getMemberFieldsByCondition(String fields, String field, Object value);

    List<Member> getMemberFieldsByCondition(String fields, String field, Object value, Integer page, Integer limit);

    List<Member> queryMemberFieldsByCondition(String fields, String field, Object value);

    List<Member> queryMemberFieldsByCondition(String fields, String field, Object value, Integer page, Integer limit);

    List<Member> getMemberBySql(String sql);

    List<Member> getMemberFieldsBySql(String fields, String sql);

    int insertMember(Member record);

    int setMemberByCode(Member record);

    int delMemberByCode(String code);

    long countAllMember();

    int delAllMember();
}