package com.mapper;

import com.model.*;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * FinanceMapper继承基类
 */
@Repository
public interface FinanceMapper extends MyBatisBaseMapper<Finance, String, FinanceExample> {
    @ResultMap("BaseResultMapExtends")
    @Select("<script>\n"+
            "select p.* from\n" +
            "(select min(p_code) p_code, min(p_date) p_date, f_code, m_code, min(p_qty) p_qty, case p_type when '支出' then -sum(p_money) else sum(p_money) end p_money,\n" +
            "p_type, min(p_method) p_method, min(p_info) p_info from tb_finance group by p_type,f_code,m_code) p\n" +
            "inner join tb_funds f on f.f_code=p.f_code\n" +
            "inner join tb_member m on m.m_code=p.m_code\n" +
            "<where>\n" +
            "  <if test=\"_parameter != null and _parameter.containsKey('funds') and funds != null\">\n" +
            "    f.f_name = #{funds}\n" +
            "  </if>\n" +
            "</where>\n" +
            "<if test=\"_parameter != null and _parameter.containsKey('limit') and limit != null\">\n" +
            "  <choose>\n" +
            "    <when test=\"_parameter.containsKey('offset') and offset != null\">\n" +
            "      order by f.f_name asc limit #{offset}, #{limit};\n" +
            "    </when>\n" +
            "    <otherwise>\n" +
            "      order by f.f_name asc limit  #{limit};\n" +
            "    </otherwise>\n" +
            "  </choose>\n" +
            "</if>" +
            "</script>")
    List<Finance> selectFinanceByFunds(@Param("funds") String funds, @Param("offset") Integer offset, @Param("limit") Integer limit);

    @Select("<script>\n"+
            "select count(*) from\n" +
            "(select min(p_code) p_code, min(p_date) p_date, f_code, m_code, min(p_qty) p_qty, case p_type when '支出' then -sum(p_money) else sum(p_money) end p_money,\n" +
            "p_type, min(p_method) p_method, min(p_info) p_info from tb_finance group by p_type,f_code,m_code) p\n" +
            "inner join tb_funds f on f.f_code=p.f_code\n" +
            "inner join tb_member m on m.m_code=p.m_code\n" +
            "<where>\n" +
            "  <if test=\"_parameter != null and _parameter.containsKey('funds') and funds != null\">\n" +
            "    f.f_name = #{funds}\n" +
            "  </if>\n" +
            "</where>\n" +
            "</script>")
    long countFinanceBySelectFunds(@Param("funds") String funds);

    @ResultMap("com.mapper.IncomeMapper.BaseResultMapExtends")
    @Select("<script>\n"+
            "select i.* from\n" +
            "(select min(i_code) i_code, min(i_date) i_date, f_code, m_code, sum(i_qty) i_qty, sum(i_money) i_money,\n" +
            "min(i_method) i_method, min(i_info) i_info from tb_income group by f_code,m_code) i\n" +
            "inner join tb_funds f on f.f_code=i.f_code\n" +
            "inner join tb_member m on m.m_code=i.m_code\n" +
            "<where>\n" +
            "  <if test=\"_parameter != null and _parameter.containsKey('funds') and funds != null\">\n" +
            "    f.f_name = #{funds}\n" +
            "  </if>\n" +
            "</where>\n" +
            "<if test=\"_parameter != null and _parameter.containsKey('limit') and limit != null\">\n" +
            "  <choose>\n" +
            "    <when test=\"_parameter.containsKey('offset') and offset != null\">\n" +
            "      order by f.f_name asc limit #{offset}, #{limit};\n" +
            "    </when>\n" +
            "    <otherwise>\n" +
            "      order by f.f_name asc limit  #{limit};\n" +
            "    </otherwise>\n" +
            "  </choose>\n" +
            "</if>" +
            "</script>")
    List<Income> selectIncomeByFunds(@Param("funds") String funds, @Param("offset") Integer offset, @Param("limit") Integer limit);

    @Select("<script>\n"+
            "select count(*) from\n" +
            "(select min(i_code) i_code, min(i_date) i_date, f_code, m_code, sum(i_qty) i_qty, sum(i_money) i_money,\n" +
            "min(i_method) i_method, min(i_info) i_info from tb_income group by f_code,m_code) i\n" +
            "inner join tb_funds f on f.f_code=i.f_code\n" +
            "inner join tb_member m on m.m_code=i.m_code\n" +
            "<where>\n" +
            "  <if test=\"_parameter != null and _parameter.containsKey('funds') and funds != null\">\n" +
            "    f.f_name = #{funds}\n" +
            "  </if>\n" +
            "</where>\n" +
            "</script>")
    long countIncomeBySelectFunds(@Param("funds") String funds);

    @ResultMap("com.mapper.OutlayMapper.BaseResultMapExtends")
    @Select("<script>\n"+
            "select o.* from\n" +
            "(select min(o_code) o_code, min(o_date) o_date, f_code, m_code, sum(o_qty) o_qty, sum(o_money) o_money,\n" +
            "min(o_method) o_method, min(o_info) o_info from tb_outlay group by f_code,m_code) o\n" +
            "inner join tb_funds f on f.f_code=o.f_code\n" +
            "inner join tb_member m on m.m_code=o.m_code\n" +
            "<where>\n" +
            "  <if test=\"_parameter != null and _parameter.containsKey('funds') and funds != null\">\n" +
            "    f.f_name = #{funds}\n" +
            "  </if>\n" +
            "</where>\n" +
            "<if test=\"_parameter != null and _parameter.containsKey('limit') and limit != null\">\n" +
            "  <choose>\n" +
            "    <when test=\"_parameter.containsKey('offset') and offset != null\">\n" +
            "      order by f.f_name asc limit #{offset}, #{limit};\n" +
            "    </when>\n" +
            "    <otherwise>\n" +
            "      order by f.f_name asc limit  #{limit};\n" +
            "    </otherwise>\n" +
            "  </choose>\n" +
            "</if>" +
            "</script>")
    List<Outlay> selectOutlayByFunds(@Param("funds") String funds, @Param("offset") Integer offset, @Param("limit") Integer limit);

    @Select("<script>\n"+
            "select count(*) from\n" +
            "(select min(o_code) o_code, min(o_date) o_date, f_code, m_code, sum(o_qty) o_qty, sum(o_money) o_money,\n" +
            "min(o_method) o_method, min(o_info) o_info from tb_outlay group by f_code,m_code) o\n" +
            "inner join tb_funds f on f.f_code=o.f_code\n" +
            "inner join tb_member m on m.m_code=o.m_code\n" +
            "<where>\n" +
            "  <if test=\"_parameter != null and _parameter.containsKey('funds') and funds != null\">\n" +
            "    f.f_name = #{funds}\n" +
            "  </if>\n" +
            "</where>\n" +
            "</script>")
    long countOutlayBySelectFunds(@Param("funds") String funds);

    @ResultMap("BaseResultMapExtends")
    @Select("<script>\n"+
            "select p.* from\n" +
            "(select min(p_code) p_code, min(p_date) p_date, f_code, m_code, min(p_qty) p_qty, case p_type when '支出' then -sum(p_money) else sum(p_money) end p_money,\n" +
            "p_type, min(p_method) p_method, min(p_info) p_info from tb_finance group by p_type,f_code,m_code) p\n" +
            "inner join tb_funds f on f.f_code=p.f_code\n" +
            "inner join tb_member m on m.m_code=p.m_code\n" +
            "<where>\n" +
            "  <if test=\"_parameter != null and _parameter.containsKey('member') and member != null\">\n" +
            "    m.m_name = #{member}\n" +
            "  </if>\n" +
            "</where>\n" +
            "<if test=\"_parameter != null and _parameter.containsKey('limit') and limit != null\">\n" +
            "  <choose>\n" +
            "    <when test=\"_parameter.containsKey('offset') and offset != null\">\n" +
            "      order by m.m_name asc limit #{offset}, #{limit};\n" +
            "    </when>\n" +
            "    <otherwise>\n" +
            "      order by m.m_name asc limit  #{limit};\n" +
            "    </otherwise>\n" +
            "  </choose>\n" +
            "</if>" +
            "</script>")
    List<Finance> selectFinanceByMember(@Param("member") String member, @Param("offset") Integer offset, @Param("limit") Integer limit);

    @Select("<script>\n"+
            "select count(*) from\n" +
            "(select min(p_code) p_code, min(p_date) p_date, f_code, m_code, min(p_qty) p_qty, case p_type when '支出' then -sum(p_money) else sum(p_money) end p_money,\n" +
            "p_type, min(p_method) p_method, min(p_info) p_info from tb_finance group by p_type,f_code,m_code) p\n" +
            "inner join tb_funds f on f.f_code=p.f_code\n" +
            "inner join tb_member m on m.m_code=p.m_code\n" +
            "<where>\n" +
            "  <if test=\"_parameter != null and _parameter.containsKey('member') and member != null\">\n" +
            "    m.m_name = #{member}\n" +
            "  </if>\n" +
            "</where>\n" +
            "</script>")
    long countFinanceBySelectMember(@Param("member") String member);

    @ResultMap("com.mapper.IncomeMapper.BaseResultMapExtends")
    @Select("<script>\n"+
            "select i.* from\n" +
            "(select min(i_code) i_code, min(i_date) i_date, f_code, m_code, sum(i_qty) i_qty, sum(i_money) i_money,\n" +
            "min(i_method) i_method, min(i_info) i_info from tb_income group by f_code,m_code) i\n" +
            "inner join tb_funds f on f.f_code=i.f_code\n" +
            "inner join tb_member m on m.m_code=i.m_code\n" +
            "<where>\n" +
            "  <if test=\"_parameter != null and _parameter.containsKey('member') and member != null\">\n" +
            "    m.m_name = #{member}\n" +
            "  </if>\n" +
            "</where>\n" +
            "<if test=\"_parameter != null and _parameter.containsKey('limit') and limit != null\">\n" +
            "  <choose>\n" +
            "    <when test=\"_parameter.containsKey('offset') and offset != null\">\n" +
            "      order by m.m_name asc limit #{offset}, #{limit};\n" +
            "    </when>\n" +
            "    <otherwise>\n" +
            "      order by m.m_name asc limit  #{limit};\n" +
            "    </otherwise>\n" +
            "  </choose>\n" +
            "</if>" +
            "</script>")
    List<Income> selectIncomeByMember(@Param("member") String member, @Param("offset") Integer offset, @Param("limit") Integer limit);

    @Select("<script>\n"+
            "select count(*) from\n" +
            "(select min(i_code) i_code, min(i_date) i_date, f_code, m_code, sum(i_qty) i_qty, sum(i_money) i_money,\n" +
            "min(i_method) i_method, min(i_info) i_info from tb_income group by f_code,m_code) i\n" +
            "inner join tb_funds f on f.f_code=i.f_code\n" +
            "inner join tb_member m on m.m_code=i.m_code\n" +
            "<where>\n" +
            "  <if test=\"_parameter != null and _parameter.containsKey('member') and member != null\">\n" +
            "    m.m_name = #{member}\n" +
            "  </if>\n" +
            "</where>\n" +
            "</script>")
    long countIncomeBySelectMember(@Param("member") String member);

    @ResultMap("com.mapper.OutlayMapper.BaseResultMapExtends")
    @Select("<script>\n"+
            "select o.* from\n" +
            "(select min(o_code) o_code, min(o_date) o_date, f_code, m_code, sum(o_qty) o_qty, sum(o_money) o_money,\n" +
            "min(o_method) o_method, min(o_info) o_info from tb_outlay group by f_code,m_code) o\n" +
            "inner join tb_funds f on f.f_code=o.f_code\n" +
            "inner join tb_member m on m.m_code=o.m_code\n" +
            "<where>\n" +
            "  <if test=\"_parameter != null and _parameter.containsKey('member') and member != null\">\n" +
            "    m.m_name = #{member}\n" +
            "  </if>\n" +
            "</where>\n" +
            "<if test=\"_parameter != null and _parameter.containsKey('limit') and limit != null\">\n" +
            "  <choose>\n" +
            "    <when test=\"_parameter.containsKey('offset') and offset != null\">\n" +
            "      order by m.m_name asc limit #{offset}, #{limit};\n" +
            "    </when>\n" +
            "    <otherwise>\n" +
            "      order by m.m_name asc limit  #{limit};\n" +
            "    </otherwise>\n" +
            "  </choose>\n" +
            "</if>" +
            "</script>")
    List<Outlay> selectOutlayByMember(@Param("member") String member, @Param("offset") Integer offset, @Param("limit") Integer limit);

    @Select("<script>\n"+
            "select count(*) from\n" +
            "(select min(o_code) o_code, min(o_date) o_date, f_code, m_code, sum(o_qty) o_qty, sum(o_money) o_money,\n" +
            "min(o_method) o_method, min(o_info) o_info from tb_outlay group by f_code,m_code) o\n" +
            "inner join tb_funds f on f.f_code=o.f_code\n" +
            "inner join tb_member m on m.m_code=o.m_code\n" +
            "<where>\n" +
            "  <if test=\"_parameter != null and _parameter.containsKey('member') and member != null\">\n" +
            "    m.m_name = #{member}\n" +
            "  </if>\n" +
            "</where>\n" +
            "</script>")
    long countOutlayBySelectMember(@Param("member") String member);

    @ResultMap("BaseResultMapExtends")
    @Select("<script>\n"+
            "select p.* from\n" +
            "(select min(p_code) p_code, min(p_date) p_date, f_code, m_code, min(p_qty) p_qty, case p_type when '支出' then -sum(p_money) else sum(p_money) end p_money,\n" +
            "p_type, min(p_method) p_method, min(p_info) p_info from tb_finance group by p_type,f_code,m_code) p\n" +
            "inner join tb_funds f on f.f_code=p.f_code\n" +
            "inner join tb_member m on m.m_code=p.m_code\n" +
            "<where>\n" +
            "  <if test=\"_parameter != null and _parameter.containsKey('funds') and funds != null\">\n" +
            "    f.f_name like concat('%', #{funds}, '%')\n" +
            "  </if>\n" +
            "</where>\n" +
            "<if test=\"_parameter != null and _parameter.containsKey('limit') and limit != null\">\n" +
            "  <choose>\n" +
            "    <when test=\"_parameter.containsKey('offset') and offset != null\">\n" +
            "      order by f.f_name asc limit #{offset}, #{limit};\n" +
            "    </when>\n" +
            "    <otherwise>\n" +
            "      order by f.f_name asc limit  #{limit};\n" +
            "    </otherwise>\n" +
            "  </choose>\n" +
            "</if>" +
            "</script>")
    List<Finance> queryFinanceByFunds(@Param("funds") String funds, @Param("offset") Integer offset, @Param("limit") Integer limit);

    @Select("<script>\n"+
            "select count(*) from\n" +
            "(select min(p_code) p_code, min(p_date) p_date, f_code, m_code, min(p_qty) p_qty, case p_type when '支出' then -sum(p_money) else sum(p_money) end p_money,\n" +
            "p_type, min(p_method) p_method, min(p_info) p_info from tb_finance group by p_type,f_code,m_code) p\n" +
            "inner join tb_funds f on f.f_code=p.f_code\n" +
            "inner join tb_member m on m.m_code=p.m_code\n" +
            "<where>\n" +
            "  <if test=\"_parameter != null and _parameter.containsKey('funds') and funds != null\">\n" +
            "    f.f_name like concat('%', #{funds}, '%')\n" +
            "  </if>\n" +
            "</where>\n" +
            "</script>")
    long countFinanceByQueryFunds(@Param("funds") String funds);

    @ResultMap("com.mapper.IncomeMapper.BaseResultMapExtends")
    @Select("<script>\n"+
            "select i.* from\n" +
            "(select min(i_code) i_code, min(i_date) i_date, f_code, m_code, sum(i_qty) i_qty, sum(i_money) i_money,\n" +
            "min(i_method) i_method, min(i_info) i_info from tb_income group by f_code,m_code) i\n" +
            "inner join tb_funds f on f.f_code=i.f_code\n" +
            "inner join tb_member m on m.m_code=i.m_code\n" +
            "<where>\n" +
            "  <if test=\"_parameter != null and _parameter.containsKey('funds') and funds != null\">\n" +
            "    f.f_name like concat('%', #{funds}, '%')\n" +
            "  </if>\n" +
            "</where>\n" +
            "<if test=\"_parameter != null and _parameter.containsKey('limit') and limit != null\">\n" +
            "  <choose>\n" +
            "    <when test=\"_parameter.containsKey('offset') and offset != null\">\n" +
            "      order by f.f_name asc limit #{offset}, #{limit};\n" +
            "    </when>\n" +
            "    <otherwise>\n" +
            "      order by f.f_name asc limit  #{limit};\n" +
            "    </otherwise>\n" +
            "  </choose>\n" +
            "</if>" +
            "</script>")
    List<Income> queryIncomeByFunds(@Param("funds") String funds, @Param("offset") Integer offset, @Param("limit") Integer limit);

    @Select("<script>\n"+
            "select count(*) from\n" +
            "(select min(i_code) i_code, min(i_date) i_date, f_code, m_code, sum(i_qty) i_qty, sum(i_money) i_money,\n" +
            "min(i_method) i_method, min(i_info) i_info from tb_income group by f_code,m_code) i\n" +
            "inner join tb_funds f on f.f_code=i.f_code\n" +
            "inner join tb_member m on m.m_code=i.m_code\n" +
            "<where>\n" +
            "  <if test=\"_parameter != null and _parameter.containsKey('funds') and funds != null\">\n" +
            "    f.f_name like concat('%', #{funds}, '%')\n" +
            "  </if>\n" +
            "</where>\n" +
            "</script>")
    long countIncomeByQueryFunds(@Param("funds") String funds);

    @ResultMap("com.mapper.OutlayMapper.BaseResultMapExtends")
    @Select("<script>\n"+
            "select o.* from\n" +
            "(select min(o_code) o_code, min(o_date) o_date, f_code, m_code, sum(o_qty) o_qty, sum(o_money) o_money,\n" +
            "min(o_method) o_method, min(o_info) o_info from tb_outlay group by f_code,m_code) o\n" +
            "inner join tb_funds f on f.f_code=o.f_code\n" +
            "inner join tb_member m on m.m_code=o.m_code\n" +
            "<where>\n" +
            "  <if test=\"_parameter != null and _parameter.containsKey('funds') and funds != null\">\n" +
            "    f.f_name like concat('%', #{funds}, '%')\n" +
            "  </if>\n" +
            "</where>\n" +
            "<if test=\"_parameter != null and _parameter.containsKey('limit') and limit != null\">\n" +
            "  <choose>\n" +
            "    <when test=\"_parameter.containsKey('offset') and offset != null\">\n" +
            "      order by f.f_name asc limit #{offset}, #{limit};\n" +
            "    </when>\n" +
            "    <otherwise>\n" +
            "      order by f.f_name asc limit  #{limit};\n" +
            "    </otherwise>\n" +
            "  </choose>\n" +
            "</if>" +
            "</script>")
    List<Outlay> queryOutlayByFunds(@Param("funds") String funds, @Param("offset") Integer offset, @Param("limit") Integer limit);

    @Select("<script>\n"+
            "select count(*) from\n" +
            "(select min(o_code) o_code, min(o_date) o_date, f_code, m_code, sum(o_qty) o_qty, sum(o_money) o_money,\n" +
            "min(o_method) o_method, min(o_info) o_info from tb_outlay group by f_code,m_code) o\n" +
            "inner join tb_funds f on f.f_code=o.f_code\n" +
            "inner join tb_member m on m.m_code=o.m_code\n" +
            "<where>\n" +
            "  <if test=\"_parameter != null and _parameter.containsKey('funds') and funds != null\">\n" +
            "    f.f_name like concat('%', #{funds}, '%')\n" +
            "  </if>\n" +
            "</where>\n" +
            "</script>")
    long countOutlayByQueryFunds(@Param("funds") String funds);

    @ResultMap("BaseResultMapExtends")
    @Select("<script>\n"+
            "select p.* from\n" +
            "(select min(p_code) p_code, min(p_date) p_date, f_code, m_code, min(p_qty) p_qty, case p_type when '支出' then -sum(p_money) else sum(p_money) end p_money,\n" +
            "p_type, min(p_method) p_method, min(p_info) p_info from tb_finance group by p_type,f_code,m_code) p\n" +
            "inner join tb_funds f on f.f_code=p.f_code\n" +
            "inner join tb_member m on m.m_code=p.m_code\n" +
            "<where>\n" +
            "  <if test=\"_parameter != null and _parameter.containsKey('member') and member != null\">\n" +
            "    m.m_name like concat('%', #{member}, '%')\n" +
            "  </if>\n" +
            "</where>\n" +
            "<if test=\"_parameter != null and _parameter.containsKey('limit') and limit != null\">\n" +
            "  <choose>\n" +
            "    <when test=\"_parameter.containsKey('offset') and offset != null\">\n" +
            "      order by m.m_name asc limit #{offset}, #{limit};\n" +
            "    </when>\n" +
            "    <otherwise>\n" +
            "      order by m.m_name asc limit  #{limit};\n" +
            "    </otherwise>\n" +
            "  </choose>\n" +
            "</if>" +
            "</script>")
    List<Finance> queryFinanceByMember(@Param("member") String member, @Param("offset") Integer offset, @Param("limit") Integer limit);

    @Select("<script>\n"+
            "select count(*) from\n" +
            "(select min(p_code) p_code, min(p_date) p_date, f_code, m_code, min(p_qty) p_qty, case p_type when '支出' then -sum(p_money) else sum(p_money) end p_money,\n" +
            "p_type, min(p_method) p_method, min(p_info) p_info from tb_finance group by p_type,f_code,m_code) p\n" +
            "inner join tb_funds f on f.f_code=p.f_code\n" +
            "inner join tb_member m on m.m_code=p.m_code\n" +
            "<where>\n" +
            "  <if test=\"_parameter != null and _parameter.containsKey('member') and member != null\">\n" +
            "    m.m_name like concat('%', #{member}, '%')\n" +
            "  </if>\n" +
            "</where>\n" +
            "</script>")
    long countFinanceByQueryMember(@Param("member") String member);

    @ResultMap("com.mapper.IncomeMapper.BaseResultMapExtends")
    @Select("<script>\n"+
            "select i.* from\n" +
            "(select min(i_code) i_code, min(i_date) i_date, f_code, m_code, sum(i_qty) i_qty, sum(i_money) i_money,\n" +
            "min(i_method) i_method, min(i_info) i_info from tb_income group by f_code,m_code) i\n" +
            "inner join tb_funds f on f.f_code=i.f_code\n" +
            "inner join tb_member m on m.m_code=i.m_code\n" +
            "<where>\n" +
            "  <if test=\"_parameter != null and _parameter.containsKey('member') and member != null\">\n" +
            "    m.m_name like concat('%', #{member}, '%')\n" +
            "  </if>\n" +
            "</where>\n" +
            "<if test=\"_parameter != null and _parameter.containsKey('limit') and limit != null\">\n" +
            "  <choose>\n" +
            "    <when test=\"_parameter.containsKey('offset') and offset != null\">\n" +
            "      order by m.m_name asc limit #{offset}, #{limit};\n" +
            "    </when>\n" +
            "    <otherwise>\n" +
            "      order by m.m_name asc limit  #{limit};\n" +
            "    </otherwise>\n" +
            "  </choose>\n" +
            "</if>" +
            "</script>")
    List<Income> queryIncomeByMember(@Param("member") String member, @Param("offset") Integer offset, @Param("limit") Integer limit);

    @Select("<script>\n"+
            "select count(*) from\n" +
            "(select min(i_code) i_code, min(i_date) i_date, f_code, m_code, sum(i_qty) i_qty, sum(i_money) i_money,\n" +
            "min(i_method) i_method, min(i_info) i_info from tb_income group by f_code,m_code) i\n" +
            "inner join tb_funds f on f.f_code=i.f_code\n" +
            "inner join tb_member m on m.m_code=i.m_code\n" +
            "<where>\n" +
            "  <if test=\"_parameter != null and _parameter.containsKey('member') and member != null\">\n" +
            "    m.m_name like concat('%', #{member}, '%')\n" +
            "  </if>\n" +
            "</where>\n" +
            "</script>")
    long countIncomeByQueryMember(@Param("member") String member);

    @ResultMap("com.mapper.OutlayMapper.BaseResultMapExtends")
    @Select("<script>\n"+
            "select o.* from\n" +
            "(select min(o_code) o_code, min(o_date) o_date, f_code, m_code, sum(o_qty) o_qty, sum(o_money) o_money,\n" +
            "min(o_method) o_method, min(o_info) o_info from tb_outlay group by f_code,m_code) o\n" +
            "inner join tb_funds f on f.f_code=o.f_code\n" +
            "inner join tb_member m on m.m_code=o.m_code\n" +
            "<where>\n" +
            "  <if test=\"_parameter.containsKey('member') and member != null\">\n" +
            "    m.m_name like concat('%', #{member}, '%')\n" +
            "  </if>\n" +
            "</where>\n" +
            "<if test=\"_parameter != null and _parameter.containsKey('limit') and limit != null\">\n" +
            "  <choose>\n" +
            "    <when test=\"_parameter != null and _parameter.containsKey('offset') and offset != null\">\n" +
            "      order by m.m_name asc limit #{offset}, #{limit};\n" +
            "    </when>\n" +
            "    <otherwise>\n" +
            "      order by m.m_name asc limit  #{limit};\n" +
            "    </otherwise>\n" +
            "  </choose>\n" +
            "</if>" +
            "</script>")
    List<Outlay> queryOutlayByMember(@Param("member") String member, @Param("offset") Integer offset, @Param("limit") Integer limit);

    @Select("<script>\n"+
            "select count(*) from\n" +
            "(select min(o_code) o_code, min(o_date) o_date, f_code, m_code, sum(o_qty) o_qty, sum(o_money) o_money,\n" +
            "min(o_method) o_method, min(o_info) o_info from tb_outlay group by f_code,m_code) o\n" +
            "inner join tb_funds f on f.f_code=o.f_code\n" +
            "inner join tb_member m on m.m_code=o.m_code\n" +
            "<where>\n" +
            "  <if test=\"_parameter != null and _parameter.containsKey('member') and member != null\">\n" +
            "    m.m_name like concat('%', #{member}, '%')\n" +
            "  </if>\n" +
            "</where>\n" +
            "</script>")
    long countOutlayByQueryMember(@Param("member") String member);
}