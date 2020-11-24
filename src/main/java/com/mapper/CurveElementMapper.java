package com.mapper;

import com.model.CurveElement;
import com.model.CurveElementExample;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * CurveElementMapper继承基类
 */
@Repository
public interface CurveElementMapper extends MyBatisBaseMapper<CurveElement, Integer, CurveElementExample> {
    @Delete("delete from tb_curveElement where ce_QX=#{ceQx} and ce_JD=#{ceJd}")
    int deleteCurveElementByQxAndJd(@Param("ceQx") String ceQx, @Param("ceJd") String ceJd);

    @ResultMap("BaseResultMap")
    @Select("select * from tb_curveElement where ce_QX=#{ceQx} and ce_JD=#{ceJd}")
    CurveElement selectCurveElementByQxAndJd(@Param("ceQx") String ceQx, @Param("ceJd") String ceJd);

    @Select("select ce_ID from tb_curveElement where ce_QX=#{ceQx} and ce_JD=#{ceJd}")
    Integer selectPrimaryKeyByQxAndJd(@Param("ceQx") String ceQx, @Param("ceJd") String ceJd);

    @Select("select ce_QX from tb_curveElement group by ce_QX")
    List<String> selectCurveLine();

    @ResultMap("BaseResultMap")
    @Select("select * from tb_curveElement where ce_Qx = #{ceQx}")
    List<CurveElement> selectCurveElementByQx(@Param("ceQx") String ceQx);
}