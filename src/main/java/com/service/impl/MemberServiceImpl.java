package com.service.impl;

import com.daoutil.DataSource;
import com.daoutil.DataSourceContextHolder;
import com.mapper.MemberMapper;
import com.model.Member;
import com.service.MemberService;
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
public class MemberServiceImpl implements MemberService {
    @Autowired
    private MemberMapper memberMapper;

    @Override
    public List<Member> getAllMember() {
        return memberMapper.selectAllModel();
    }

    @Override
    public List<Member> getAllMember(Integer page, Integer limit) {
        return memberMapper.selectAllModel((page-1)*limit,limit);
    }

    @Override
    public Member getMemberByCode(String code) {
        return memberMapper.selectByPrimaryKey(code);
    }

    @Override
    public Member getMemberByMinCode() {
        return memberMapper.selectByMinPrimaryKey();
    }

    @Override
    public Member getMemberByMaxCode() {
        return memberMapper.selectByMaxPrimaryKey();
    }

    @Override
    public List<Member> getMemberByParam(Member record) {
        return memberMapper.selectByParam(record);
    }

    @Override
    public List<Member> queryMemberByParam(Member record) {
        return memberMapper.queryByParam(record);
    }

    @Override
    public List<Member> getMemberByCondition(String field, Object value) {
        return memberMapper.selectByCondition(field,value);
    }

    @Override
    public long countMemberBySelectCondition(String field, Object value) {
        return memberMapper.countBySelectCondition(field,value);
    }

    @Override
    public List<Member> getMemberByCondition(String field, Object value, Integer page, Integer limit) {
        return memberMapper.selectByCondition(field,value,(page-1)*limit,limit);
    }

    @Override
    public List<Member> queryMemberByCondition(String field, Object value) {
        return memberMapper.queryByCondition(field,value);
    }

    @Override
    public long countMemberByQueryCondition(String field, Object value) {
        return memberMapper.countByQueryCondition(field,value);
    }

    @Override
    public List<Member> queryMemberByCondition(String field, Object value, Integer page, Integer limit) {
        return memberMapper.queryByCondition(field,value,(page-1)*limit,limit);
    }

    @Override
    public List<Member> getMemberFieldsByCondition(String fields, String field, Object value) {
        return memberMapper.selectFieldsByCondition(fields,field,value);
    }

    @Override
    public List<Member> getMemberFieldsByCondition(String fields, String field, Object value, Integer page, Integer limit) {
        return memberMapper.selectFieldsByCondition(fields,field,value,(page-1)*limit,limit);
    }

    @Override
    public List<Member> queryMemberFieldsByCondition(String fields, String field, Object value) {
        return memberMapper.queryFieldsByCondition(fields,field,value);
    }

    @Override
    public List<Member> queryMemberFieldsByCondition(String fields, String field, Object value, Integer page, Integer limit) {
        return memberMapper.queryFieldsByCondition(fields,field,value,(page-1)*limit,limit);
    }

    @Override
    public List<Member> getMemberBySql(String sql) {
        return memberMapper.selectBySql(sql);
    }

    @Override
    public List<Member> getMemberFieldsBySql(String field, String sql) {
        return memberMapper.selectFieldsBySql(field,sql);
    }

    @Override
    public int insertMember(Member record) {
        return memberMapper.insert(record);
    }

    @Override
    public int setMemberByCode(Member record) {
        return memberMapper.updateByPrimaryKey(record);
    }

    @Override
    public int delMemberByCode(String code) {
        return memberMapper.deleteByPrimaryKey(code);
    }

    @Override
    public long countAllMember() {
        return memberMapper.countAllModel();
    }

    @Override
    public int delAllMember() {
        return memberMapper.deleteAllModel();
    }
}