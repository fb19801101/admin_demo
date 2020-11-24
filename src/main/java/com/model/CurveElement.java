package com.model;

import com.alibaba.fastjson.JSONObject;
import com.dateutil.RegexUtil;

import com.excelkit.annotation.Excel;
import com.excelkit.annotation.ExcelField;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/**
 * @author 
 * 
 */
@Excel("曲线要素表")
public class CurveElement implements Serializable {
    /**
     * 交点ID
     */
    private Integer ceId;

    /**
     * 曲线标识
     */
    @ExcelField(value = "曲线标识", width = 120)
    private String ceQx;

    /**
     * 交点编号
     */
    @ExcelField(value = "交点编号", width = 100)
    private String ceJd;

    /**
     * 交点里程
     */
    @ExcelField(value = "交点里程", width = 120)
    private Double ceDk;

    /**
     * 交点坐标X
     */
    @ExcelField(value = "交点坐标X", width = 120)
    private Double ceEx;

    /**
     * 交点坐标Y
     */
    @ExcelField(value = "交点坐标Y", width = 120)
    private Double ceNy;

    /**
     * 前切线长
     */
    @ExcelField(value = "前切线长", width = 100)
    private Double ceT1;

    /**
     * 后切线长
     */
    @ExcelField(value = "后切线长", width = 100)
    private Double ceT2;

    /**
     * 前缓和曲线半径
     */
    @ExcelField(value = "前缓和曲线半径", width = 160)
    private Double ceR1;

    /**
     * 后缓和曲线半径
     */
    @ExcelField(value = "后缓和曲线半径", width = 160)
    private Double ceR2;

    /**
     * 圆曲线半径
     */
    @ExcelField(value = "圆曲线半径", width = 120)
    private Double ceRc;

    /**
     * 前缓和曲线参数
     */
    @ExcelField(value = "前缓和曲线参数", width = 120)
    private Double ceA1;

    /**
     * 后缓和曲线参数
     */
    @ExcelField(value = "后缓和曲线参数", width = 120)
    private Double ceA2;

    /**
     * 前缓和曲线长
     */
    @ExcelField(value = "前缓和曲线长", width = 140)
    private Double ceLs1;

    /**
     * 后缓和曲线长
     */
    @ExcelField(value = "后缓和曲线长", width = 140)
    private Double ceLs2;

    /**
     * 圆曲线长
     */
    @ExcelField(value = "圆曲线长", width = 100)
    private Double ceLc;

    /**
     * 夹直线长
     */
    @ExcelField(value = "夹直线长", width = 100)
    private Double ceLz;

    /**
     * 曲线总长
     */
    @ExcelField(value = "曲线总长", width = 100)
    private Double ceL;

    /**
     * 外失距
     */
    @ExcelField(value = "外失距", width = 100)
    private Double ceE;

    /**
     * 偏角
     */
    @ExcelField(value = "偏角", width = 100)
    private Double cePj;

    /**
     * 方位角
     */
    @ExcelField(value = "方位角", width = 100)
    private Double ceFwj;

    /**
     * 起点里程
     */
    @ExcelField(value = "起点里程", width = 120)
    private Double ceQd;

    /**
     * 直缓里程
     */
    @ExcelField(value = "直缓里程", width = 120)
    private Double ceZh;

    /**
     * 缓圆里程
     */
    @ExcelField(value = "缓圆里程", width = 120)
    private Double ceHy;

    /**
     * 曲中里程
     */
    @ExcelField(value = "曲中里程", width = 120)
    private Double ceQz;

    /**
     * 圆缓里程
     */
    @ExcelField(value = "圆缓里程", width = 120)
    private Double ceYh;

    /**
     * 缓直里程
     */
    @ExcelField(value = "缓直里程", width = 120)
    private Double ceHz;

    /**
     * 终点里程
     */
    @ExcelField(value = "终点里程", width = 120)
    private Double ceZd;

    /**
     * 起点坐标X
     */
    @ExcelField(value = "起点坐标X", width = 120)
    private Double ceQdX;

    /**
     * 起点坐标Y
     */
    @ExcelField(value = "起点坐标Y", width = 120)
    private Double ceQdY;

    /**
     * 直缓坐标X
     */
    @ExcelField(value = "直缓坐标X", width = 120)
    private Double ceZhX;

    /**
     * 直缓坐标Y
     */
    @ExcelField(value = "直缓坐标Y", width = 120)
    private Double ceZhY;

    /**
     * 缓圆坐标X
     */
    @ExcelField(value = "缓圆坐标X", width = 120)
    private Double ceHyX;

    /**
     * 缓圆坐标Y
     */
    @ExcelField(value = "缓圆坐标Y", width = 120)
    private Double ceHyY;

    /**
     * 曲中坐标X
     */
    @ExcelField(value = "曲中坐标X", width = 120)
    private Double ceQzX;

    /**
     * 曲中坐标Y
     */
    @ExcelField(value = "曲中坐标Y", width = 120)
    private Double ceQzY;

    /**
     * 圆缓坐标X
     */
    @ExcelField(value = "圆缓坐标X", width = 120)
    private Double ceYhX;

    /**
     * 圆缓坐标Y
     */
    @ExcelField(value = "圆缓坐标Y", width = 120)
    private Double ceYhY;

    /**
     * 缓直坐标X
     */
    @ExcelField(value = "缓直坐标X", width = 120)
    private Double ceHzX;

    /**
     * 缓直坐标Y
     */
    @ExcelField(value = "缓直坐标Y", width = 120)
    private Double ceHzY;

    /**
     * 终点坐标X
     */
    @ExcelField(value = "终点坐标X", width = 120)
    private Double ceZdX;

    /**
     * 终点坐标Y
     */
    @ExcelField(value = "终点坐标Y", width = 120)
    private Double ceZdY;

    private static final long serialVersionUID = 1L;

    /**
     * 默认构造方法
     */
    public CurveElement() {
    }

    /**
     * 部分构造方法
     */
    public CurveElement(Integer ceId, String ceQx, String ceJd, Double ceDk, Double ceEx, Double ceNy, Double ceT1, Double ceT2, Double ceR1, Double ceR2, Double ceRc, Double ceLs1, Double ceLs2, Double ceLc, Double ceLz, Double ceE, Double cePj) {
        this.ceId = ceId;
        this.ceQx = ceQx;
        this.ceJd = ceJd;
        this.ceDk = ceDk;
        this.ceEx = ceEx;
        this.ceNy = ceNy;
        this.ceT1 = ceT1;
        this.ceT2 = ceT2;
        this.ceR1 = ceR1;
        this.ceR2 = ceR2;
        this.ceRc = ceRc;
        this.ceLs1 = ceLs1;
        this.ceLs2 = ceLs2;
        this.ceLc = ceLc;
        this.ceLz = ceLz;
        this.ceE = ceE;
        this.cePj = cePj;
    }

    /**
     * 完整构造方法
     */
    public CurveElement(Integer ceId, String ceQx, String ceJd, Double ceDk, Double ceEx, Double ceNy, Double ceT1, Double ceT2, Double ceR1, Double ceR2, Double ceRc, Double ceA1, Double ceA2, Double ceLs1, Double ceLs2, Double ceLc, Double ceLz, Double ceL, Double ceE, Double cePj, Double ceFwj, Double ceQd, Double ceZh, Double ceHy, Double ceQz, Double ceYh, Double ceHz, Double ceZd, Double ceQdX, Double ceQdY, Double ceZhX, Double ceZhY, Double ceHyX, Double ceHyY, Double ceQzX, Double ceQzY, Double ceYhX, Double ceYhY, Double ceHzX, Double ceHzY, Double ceZdX, Double ceZdY) {
        this.ceId = ceId;
        this.ceQx = ceQx;
        this.ceJd = ceJd;
        this.ceDk = ceDk;
        this.ceEx = ceEx;
        this.ceNy = ceNy;
        this.ceT1 = ceT1;
        this.ceT2 = ceT2;
        this.ceR1 = ceR1;
        this.ceR2 = ceR2;
        this.ceRc = ceRc;
        this.ceA1 = ceA1;
        this.ceA2 = ceA2;
        this.ceLs1 = ceLs1;
        this.ceLs2 = ceLs2;
        this.ceLc = ceLc;
        this.ceLz = ceLz;
        this.ceL = ceL;
        this.ceE = ceE;
        this.cePj = cePj;
        this.ceFwj = ceFwj;
        this.ceQd = ceQd;
        this.ceZh = ceZh;
        this.ceHy = ceHy;
        this.ceQz = ceQz;
        this.ceYh = ceYh;
        this.ceHz = ceHz;
        this.ceZd = ceZd;
        this.ceQdX = ceQdX;
        this.ceQdY = ceQdY;
        this.ceZhX = ceZhX;
        this.ceZhY = ceZhY;
        this.ceHyX = ceHyX;
        this.ceHyY = ceHyY;
        this.ceQzX = ceQzX;
        this.ceQzY = ceQzY;
        this.ceYhX = ceYhX;
        this.ceYhY = ceYhY;
        this.ceHzX = ceHzX;
        this.ceHzY = ceHzY;
        this.ceZdX = ceZdX;
        this.ceZdY = ceZdY;
    }

//    @JsonCreator
//    public CurveElement(@JsonProperty("ceId") Integer ceId, @JsonProperty("ceQx") String ceQx, @JsonProperty("ceJd") String ceJd, @JsonProperty("ceDk") Double ceDk, @JsonProperty("ceEx") Double ceEx, @JsonProperty("ceNy") Double ceNy, @JsonProperty("ceT1") Double ceT1, @JsonProperty("ceT2") Double ceT2,
//                        @JsonProperty("ceR1") Double ceR1, @JsonProperty("ceR2") Double ceR2, @JsonProperty("ceRc") Double ceRc, @JsonProperty("ceA1") Double ceA1, @JsonProperty("ceA2") Double ceA2, @JsonProperty("ceLs1") Double ceLs1,
//                        @JsonProperty("ceLs2") Double ceLs2, @JsonProperty("ceLc") Double ceLc, @JsonProperty("ceLz") Double ceLz, @JsonProperty("ceL") Double ceL, @JsonProperty("ceE") Double ceE, @JsonProperty("cePj") Double cePj,
//                        @JsonProperty("ceFwj") Double ceFwj, @JsonProperty("ceQd") Double ceQd, @JsonProperty("ceZh") Double ceZh, @JsonProperty("ceHy,") Double ceHy, @JsonProperty("ceQz") Double ceQz, @JsonProperty("ceYh") Double ceYh,
//                        @JsonProperty("ceHz") Double ceHz, @JsonProperty("ceZd") Double ceZd, @JsonProperty("ceQdX") Double ceQdX, @JsonProperty("ceZhX") Double ceZhX, @JsonProperty("ceHyX,") Double ceHyX, @JsonProperty("ceQzX") Double ceQzX, @JsonProperty("ceYhX") Double ceYhX,
//                        @JsonProperty("ceHzX") Double ceHzX, @JsonProperty("ceZdX") Double ceZdX,@JsonProperty("ceQdY") Double ceQdY, @JsonProperty("ceZhY") Double ceZhY, @JsonProperty("ceHyY,") Double ceHyY, @JsonProperty("ceQzY") Double ceQzY, @JsonProperty("ceYhY") Double ceYhY,
//                        @JsonProperty("ceHzY") Double ceHzY, @JsonProperty("ceZdY") Double ceZdY) {
//        this.ceId = ceId;
//        this.ceQx = ceQx;
//        this.ceJd = ceJd;
//        this.ceDk = ceDk;
//        this.ceEx = ceEx;
//        this.ceNy = ceNy;
//        this.ceT1 = ceT1;
//        this.ceT2 = ceT2;
//        this.ceR1 = ceR1;
//        this.ceR2 = ceR2;
//        this.ceRc = ceRc;
//        this.ceA1 = ceA1;
//        this.ceA2 = ceA2;
//        this.ceLs1 = ceLs1;
//        this.ceLs2 = ceLs2;
//        this.ceLc = ceLc;
//        this.ceLz = ceLz;
//        this.ceL = ceL;
//        this.ceE = ceE;
//        this.cePj = cePj;
//        this.ceFwj = ceFwj;
//        this.ceQd = ceQd;
//        this.ceZh = ceZh;
//        this.ceHy = ceHy;
//        this.ceQz = ceQz;
//        this.ceYh = ceYh;
//        this.ceHz = ceHz;
//        this.ceZd = ceZd;
//        this.ceQdX = ceQdX;
//        this.ceQdY = ceQdY;
//        this.ceZhX = ceZhX;
//        this.ceZhY = ceZhY;
//        this.ceHyX = ceHyX;
//        this.ceHyY = ceHyY;
//        this.ceQzX = ceQzX;
//        this.ceQzY = ceQzY;
//        this.ceYhX = ceYhX;
//        this.ceYhY = ceYhY;
//        this.ceHzX = ceHzX;
//        this.ceHzY = ceHzY;
//        this.ceZdX = ceZdX;
//        this.ceZdY = ceZdY;
//    }

    public Integer getCeId() {
        return ceId;
    }

    public void setCeId(Integer ceId) {
        this.ceId = ceId;
    }

    public String getCeQx() {
        return ceQx;
    }

    public void setCeQx(String ceQx) {
        this.ceQx = ceQx;
    }

    public String getCeJd() {
        return ceJd;
    }

    public void setCeJd(String ceJd) {
        this.ceJd = ceJd;
    }

    public Double getCeDk() {
        return ceDk;
    }

    public void setCeDk(Double ceDk) {
        this.ceDk = ceDk;
    }

    public Double getCeEx() {
        return ceEx;
    }

    public void setCeEx(Double ceEx) {
        this.ceEx = ceEx;
    }

    public Double getCeNy() {
        return ceNy;
    }

    public void setCeNy(Double ceNy) {
        this.ceNy = ceNy;
    }

    public Double getCeT1() {
        return ceT1;
    }

    public void setCeT1(Double ceT1) {
        this.ceT1 = ceT1;
    }

    public Double getCeT2() {
        return ceT2;
    }

    public void setCeT2(Double ceT2) {
        this.ceT2 = ceT2;
    }

    public Double getCeR1() {
        return ceR1;
    }

    public void setCeR1(Double ceR1) {
        this.ceR1 = ceR1;
    }

    public Double getCeR2() {
        return ceR2;
    }

    public void setCeR2(Double ceR2) {
        this.ceR2 = ceR2;
    }

    public Double getCeRc() {
        return ceRc;
    }

    public void setCeRc(Double ceRc) {
        this.ceRc = ceRc;
    }

    public Double getCeA1() {
        return ceA1;
    }

    public void setCeA1(Double ceA1) {
        this.ceA1 = ceA1;
    }

    public Double getCeA2() {
        return ceA2;
    }

    public void setCeA2(Double ceA2) {
        this.ceA2 = ceA2;
    }

    public Double getCeLs1() {
        return ceLs1;
    }

    public void setCeLs1(Double ceLs1) {
        this.ceLs1 = ceLs1;
    }

    public Double getCeLs2() {
        return ceLs2;
    }

    public void setCeLs2(Double ceLs2) {
        this.ceLs2 = ceLs2;
    }

    public Double getCeLc() {
        return ceLc;
    }

    public void setCeLc(Double ceLc) {
        this.ceLc = ceLc;
    }

    public Double getCeLz() {
        return ceLz;
    }

    public void setCeLz(Double ceLz) {
        this.ceLz = ceLz;
    }

    public Double getCeL() {
        return ceL;
    }

    public void setCeL(Double ceL) {
        this.ceL = ceL;
    }

    public Double getCeE() {
        return ceE;
    }

    public void setCeE(Double ceE) {
        this.ceE = ceE;
    }

    public Double getCePj() {
        return cePj;
    }

    public void setCePj(Double cePj) {
        this.cePj = cePj;
    }

    public Double getCeFwj() {
        return ceFwj;
    }

    public void setCeFwj(Double ceFwj) {
        this.ceFwj = ceFwj;
    }

    public Double getCeQd() {
        return ceQd;
    }

    public void setCeQd(Double ceQd) {
        this.ceQd = ceQd;
    }

    public Double getCeZh() {
        return ceZh;
    }

    public void setCeZh(Double ceZh) {
        this.ceZh = ceZh;
    }

    public Double getCeHy() {
        return ceHy;
    }

    public void setCeHy(Double ceHy) {
        this.ceHy = ceHy;
    }

    public Double getCeQz() {
        return ceQz;
    }

    public void setCeQz(Double ceQz) {
        this.ceQz = ceQz;
    }

    public Double getCeYh() {
        return ceYh;
    }

    public void setCeYh(Double ceYh) {
        this.ceYh = ceYh;
    }

    public Double getCeHz() {
        return ceHz;
    }

    public void setCeHz(Double ceHz) {
        this.ceHz = ceHz;
    }

    public Double getCeZd() {
        return ceZd;
    }

    public void setCeZd(Double ceZd) {
        this.ceZd = ceZd;
    }

    public Double getCeQdX() {
        return ceQdX;
    }

    public void setCeQdX(Double ceQdX) {
        this.ceQdX = ceQdX;
    }

    public Double getCeQdY() {
        return ceQdY;
    }

    public void setCeQdY(Double ceQdY) {
        this.ceQdY = ceQdY;
    }

    public Double getCeZhX() {
        return ceZhX;
    }

    public void setCeZhX(Double ceZhX) {
        this.ceZhX = ceZhX;
    }

    public Double getCeZhY() {
        return ceZhY;
    }

    public void setCeZhY(Double ceZhY) {
        this.ceZhY = ceZhY;
    }

    public Double getCeHyX() {
        return ceHyX;
    }

    public void setCeHyX(Double ceHyX) {
        this.ceHyX = ceHyX;
    }

    public Double getCeHyY() {
        return ceHyY;
    }

    public void setCeHyY(Double ceHyY) {
        this.ceHyY = ceHyY;
    }

    public Double getCeQzX() {
        return ceQzX;
    }

    public void setCeQzX(Double ceQzX) {
        this.ceQzX = ceQzX;
    }

    public Double getCeQzY() {
        return ceQzY;
    }

    public void setCeQzY(Double ceQzY) {
        this.ceQzY = ceQzY;
    }

    public Double getCeYhX() {
        return ceYhX;
    }

    public void setCeYhX(Double ceYhX) {
        this.ceYhX = ceYhX;
    }

    public Double getCeYhY() {
        return ceYhY;
    }

    public void setCeYhY(Double ceYhY) {
        this.ceYhY = ceYhY;
    }

    public Double getCeHzX() {
        return ceHzX;
    }

    public void setCeHzX(Double ceHzX) {
        this.ceHzX = ceHzX;
    }

    public Double getCeHzY() {
        return ceHzY;
    }

    public void setCeHzY(Double ceHzY) {
        this.ceHzY = ceHzY;
    }

    public Double getCeZdX() {
        return ceZdX;
    }

    public void setCeZdX(Double ceZdX) {
        this.ceZdX = ceZdX;
    }

    public Double getCeZdY() {
        return ceZdY;
    }

    public void setCeZdY(Double ceZdY) {
        this.ceZdY = ceZdY;
    }

    public void setField(String field, Object value) {
        String _value = value.toString();
        if (field.equals("ceId")) {
            if(RegexUtil.isNumber(_value)) {
                ceId = Integer.parseInt(_value);
            }
        }
        if (field.equals("ceQx")) {
            ceQx = _value;
        }
        if (field.equals("ceJd")) {
            ceJd = _value;
        }
        if (field.equals("ceDk")) {
            if(RegexUtil.isNumber(_value)) {
                ceDk = Double.parseDouble(_value);
            }
        }
        if (field.equals("ceEx")) {
            if(RegexUtil.isNumber(_value)) {
                ceEx = Double.parseDouble(_value);
            }
        }
        if (field.equals("ceNy")) {
            if(RegexUtil.isNumber(_value)) {
                ceNy = Double.parseDouble(_value);
            }
        }
        if (field.equals("ceT1")) {
            if(RegexUtil.isNumber(_value)) {
                ceT1 = Double.parseDouble(_value);
            }
        }
        if (field.equals("ceT2")) {
            if(RegexUtil.isNumber(_value)) {
                ceT2 = Double.parseDouble(_value);
            }
        }
        if (field.equals("ceR1")) {
            if(RegexUtil.isNumber(_value)) {
                ceR1 = Double.parseDouble(_value);
            }
        }
        if (field.equals("ceR2")) {
            if(RegexUtil.isNumber(_value)) {
                ceR2 = Double.parseDouble(_value);
            }
        }
        if (field.equals("ceRc")) {
            if(RegexUtil.isNumber(_value)) {
                ceRc = Double.parseDouble(_value);
            }
        }
        if (field.equals("ceA1")) {
            if(RegexUtil.isNumber(_value)) {
                ceA1 = Double.parseDouble(_value);
            }
        }
        if (field.equals("ceA2")) {
            if(RegexUtil.isNumber(_value)) {
                ceA2 = Double.parseDouble(_value);
            }
        }
        if (field.equals("ceLs1")) {
            if(RegexUtil.isNumber(_value)) {
                ceLs1 = Double.parseDouble(_value);
            }
        }
        if (field.equals("ceLs2")) {
            if(RegexUtil.isNumber(_value)) {
                ceLs2 = Double.parseDouble(_value);
            }
        }
        if (field.equals("ceLc")) {
            if(RegexUtil.isNumber(_value)) {
                ceLc = Double.parseDouble(_value);
            }
        }
        if (field.equals("ceLz")) {
            if(RegexUtil.isNumber(_value)) {
                ceLz = Double.parseDouble(_value);
            }
        }
        if (field.equals("ceL")) {
            if(RegexUtil.isNumber(_value)) {
                ceL = Double.parseDouble(_value);
            }
        }
        if (field.equals("ceE")) {
            if(RegexUtil.isNumber(_value)) {
                ceE = Double.parseDouble(_value);
            }
        }
        if (field.equals("cePj")) {
            if(RegexUtil.isNumber(_value)) {
                cePj = Double.parseDouble(_value);
            }
        }
        if (field.equals("ceFwj")) {
            if(RegexUtil.isNumber(_value)) {
                ceFwj = Double.parseDouble(_value);
            }
        }
        if (field.equals("ceQd")) {
            if(RegexUtil.isNumber(_value)) {
                ceQd = Double.parseDouble(_value);
            }
        }
        if (field.equals("ceZh")) {
            if(RegexUtil.isNumber(_value)) {
                ceZh = Double.parseDouble(_value);
            }
        }
        if (field.equals("ceHy")) {
            if(RegexUtil.isNumber(_value)) {
                ceHy = Double.parseDouble(_value);
            }
        }
        if (field.equals("ceQz")) {
            if(RegexUtil.isNumber(_value)) {
                ceQz = Double.parseDouble(_value);
            }
        }
        if (field.equals("ceYh")) {
            if(RegexUtil.isNumber(_value)) {
                ceYh = Double.parseDouble(_value);
            }
        }
        if (field.equals("ceHz")) {
            if(RegexUtil.isNumber(_value)) {
                ceHz = Double.parseDouble(_value);
            }
        }
        if (field.equals("ceZd")) {
            if(RegexUtil.isNumber(_value)) {
                ceZd = Double.parseDouble(_value);
            }
        }
        if (field.equals("ceQdX")) {
            if(RegexUtil.isNumber(_value)) {
                ceQdX = Double.parseDouble(_value);
            }
        }
        if (field.equals("ceQdY")) {
            if(RegexUtil.isNumber(_value)) {
                ceQdY = Double.parseDouble(_value);
            }
        }
        if (field.equals("ceZhX")) {
            if(RegexUtil.isNumber(_value)) {
                ceZhX = Double.parseDouble(_value);
            }
        }
        if (field.equals("ceZhY")) {
            if(RegexUtil.isNumber(_value)) {
                ceZhY = Double.parseDouble(_value);
            }
        }
        if (field.equals("ceHyX")) {
            if(RegexUtil.isNumber(_value)) {
                ceHyX = Double.parseDouble(_value);
            }
        }
        if (field.equals("ceHyY")) {
            if(RegexUtil.isNumber(_value)) {
                ceHyY = Double.parseDouble(_value);
            }
        }
        if (field.equals("ceQzX")) {
            if(RegexUtil.isNumber(_value)) {
                ceQzX = Double.parseDouble(_value);
            }
        }
        if (field.equals("ceQzY")) {
            if(RegexUtil.isNumber(_value)) {
                ceQzY = Double.parseDouble(_value);
            }
        }
        if (field.equals("ceYhX")) {
            if(RegexUtil.isNumber(_value)) {
                ceYhX = Double.parseDouble(_value);
            }
        }
        if (field.equals("ceYhY")) {
            if(RegexUtil.isNumber(_value)) {
                ceYhY = Double.parseDouble(_value);
            }
        }
        if (field.equals("ceHzX")) {
            if(RegexUtil.isNumber(_value)) {
                ceHzX = Double.parseDouble(_value);
            }
        }
        if (field.equals("ceHzY")) {
            if(RegexUtil.isNumber(_value)) {
                ceHzY = Double.parseDouble(_value);
            }
        }
        if (field.equals("ceZdX")) {
            if(RegexUtil.isNumber(_value)) {
                ceZdX = Double.parseDouble(_value);
            }
        }
        if (field.equals("ceZdY")) {
            if(RegexUtil.isNumber(_value)) {
                ceZdY = Double.parseDouble(_value);
            }
        }
    }

    public void setMap(Map map) {
        if (map.containsKey("ceId")) {
            String value = map.get("ceId").toString();
            if(RegexUtil.isNumber(value)) {
                ceId = Integer.parseInt(value);
            }
        }
        if (map.containsKey("ceQx")) {
            ceJd = map.get("ceQx").toString();
        }
        if (map.containsKey("ceJd")) {
            ceJd = map.get("ceJd").toString();
        }
        if (map.containsKey("ceDk")) {
            String value = map.get("ceDk").toString();
            if(RegexUtil.isNumber(value)) {
                ceDk = Double.parseDouble(value);
            }
        }
        if (map.containsKey("ceEx")) {
            String value = map.get("ceEx").toString();
            if(RegexUtil.isNumber(value)) {
                ceEx = Double.parseDouble(value);
            }
        }
        if (map.containsKey("ceNy")) {
            String value = map.get("ceNy").toString();
            if(RegexUtil.isNumber(value)) {
                ceNy = Double.parseDouble(value);
            }
        }
        if (map.containsKey("ceT1")) {
            String value = map.get("ceT1").toString();
            if(RegexUtil.isNumber(value)) {
                ceT1 = Double.parseDouble(value);
            }
        }
        if (map.containsKey("ceT2")) {
            String value = map.get("ceT2").toString();
            if(RegexUtil.isNumber(value)) {
                ceT2 = Double.parseDouble(value);
            }
        }
        if (map.containsKey("ceR1")) {
            String value = map.get("ceR1").toString();
            if(RegexUtil.isNumber(value)) {
                ceR1 = Double.parseDouble(value);
            }
        }
        if (map.containsKey("ceR2")) {
            String value = map.get("ceR2").toString();
            if(RegexUtil.isNumber(value)) {
                ceR2 = Double.parseDouble(value);
            }
        }
        if (map.containsKey("ceRc")) {
            String value = map.get("ceRc").toString();
            if(RegexUtil.isNumber(value)) {
                ceRc = Double.parseDouble(value);
            }
        }
        if (map.containsKey("ceA1")) {
            String value = map.get("ceA1").toString();
            if(RegexUtil.isNumber(value)) {
                ceA1 = Double.parseDouble(value);
            }
        }
        if (map.containsKey("ceA2")) {
            String value = map.get("ceA2").toString();
            if(RegexUtil.isNumber(value)) {
                ceA2 = Double.parseDouble(value);
            }
        }
        if (map.containsKey("ceLs1")) {
            String value = map.get("ceLs1").toString();
            if(RegexUtil.isNumber(value)) {
                ceLs1 = Double.parseDouble(value);
            }
        }
        if (map.containsKey("ceLs2")) {
            String value = map.get("ceLs2").toString();
            if(RegexUtil.isNumber(value)) {
                ceLs2 = Double.parseDouble(value);
            }
        }
        if (map.containsKey("ceLc")) {
            String value = map.get("ceLc").toString();
            if(RegexUtil.isNumber(value)) {
                ceLc = Double.parseDouble(value);
            }
        }
        if (map.containsKey("ceLz")) {
            String value = map.get("ceLz").toString();
            if(RegexUtil.isNumber(value)) {
                ceLz = Double.parseDouble(value);
            }
        }
        if (map.containsKey("ceL")) {
            String value = map.get("ceL").toString();
            if(RegexUtil.isNumber(value)) {
                ceL = Double.parseDouble(value);
            }
        }
        if (map.containsKey("ceE")) {
            String value = map.get("ceE").toString();
            if(RegexUtil.isNumber(value)) {
                ceE = Double.parseDouble(value);
            }
        }
        if (map.containsKey("cePj")) {
            String value = map.get("cePj").toString();
            if(RegexUtil.isNumber(value)) {
                cePj = Double.parseDouble(value);
            }
        }
        if (map.containsKey("ceFwj")) {
            String value = map.get("ceFwj").toString();
            if(RegexUtil.isNumber(value)) {
                ceFwj = Double.parseDouble(value);
            }
        }
        if (map.containsKey("ceQd")) {
            String value = map.get("ceQd").toString();
            if(RegexUtil.isNumber(value)) {
                ceQd = Double.parseDouble(value);
            }
        }
        if (map.containsKey("ceZh")) {
            String value = map.get("ceZh").toString();
            if(RegexUtil.isNumber(value)) {
                ceZh = Double.parseDouble(value);
            }
        }
        if (map.containsKey("ceHy")) {
            String value = map.get("ceHy").toString();
            if(RegexUtil.isNumber(value)) {
                ceHy = Double.parseDouble(value);
            }
        }
        if (map.containsKey("ceQz")) {
            String value = map.get("ceQz").toString();
            if(RegexUtil.isNumber(value)) {
                ceQz = Double.parseDouble(value);
            }
        }
        if (map.containsKey("ceYh")) {
            String value = map.get("ceYh").toString();
            if(RegexUtil.isNumber(value)) {
                ceYh = Double.parseDouble(value);
            }
        }
        if (map.containsKey("ceHz")) {
            String value = map.get("ceHz").toString();
            if(RegexUtil.isNumber(value)) {
                ceHz = Double.parseDouble(value);
            }
        }
        if (map.containsKey("ceZd")) {
            String value = map.get("ceZd").toString();
            if(RegexUtil.isNumber(value)) {
                ceZd = Double.parseDouble(value);
            }
        }
        if (map.containsKey("ceQdX")) {
            String value = map.get("ceQdX").toString();
            if(RegexUtil.isNumber(value)) {
                ceQdX = Double.parseDouble(value);
            }
        }
        if (map.containsKey("ceQdY")) {
            String value = map.get("ceQdY").toString();
            if(RegexUtil.isNumber(value)) {
                ceQdY = Double.parseDouble(value);
            }
        }
        if (map.containsKey("ceZhX")) {
            String value = map.get("ceZhX").toString();
            if(RegexUtil.isNumber(value)) {
                ceZhX = Double.parseDouble(value);
            }
        }
        if (map.containsKey("ceZhY")) {
            String value = map.get("ceZhY").toString();
            if(RegexUtil.isNumber(value)) {
                ceZhY = Double.parseDouble(value);
            }
        }
        if (map.containsKey("ceHyX")) {
            String value = map.get("ceHyX").toString();
            if(RegexUtil.isNumber(value)) {
                ceHyX = Double.parseDouble(value);
            }
        }
        if (map.containsKey("ceHyY")) {
            String value = map.get("ceHyY").toString();
            if(RegexUtil.isNumber(value)) {
                ceHyY = Double.parseDouble(value);
            }
        }
        if (map.containsKey("ceQzX")) {
            String value = map.get("ceQzX").toString();
            if(RegexUtil.isNumber(value)) {
                ceQzX = Double.parseDouble(value);
            }
        }
        if (map.containsKey("ceQzY")) {
            String value = map.get("ceQzY").toString();
            if(RegexUtil.isNumber(value)) {
                ceQzY = Double.parseDouble(value);
            }
        }
        if (map.containsKey("ceYhX")) {
            String value = map.get("ceYhX").toString();
            if(RegexUtil.isNumber(value)) {
                ceYhX = Double.parseDouble(value);
            }
        }
        if (map.containsKey("ceYhY")) {
            String value = map.get("ceYhY").toString();
            if(RegexUtil.isNumber(value)) {
                ceYhY = Double.parseDouble(value);
            }
        }
        if (map.containsKey("ceHzX")) {
            String value = map.get("ceHzX").toString();
            if(RegexUtil.isNumber(value)) {
                ceHzX = Double.parseDouble(value);
            }
        }
        if (map.containsKey("ceHzY")) {
            String value = map.get("ceHzY").toString();
            if(RegexUtil.isNumber(value)) {
                ceHzY = Double.parseDouble(value);
            }
        }
        if (map.containsKey("ceZdX")) {
            String value = map.get("ceZdX").toString();
            if(RegexUtil.isNumber(value)) {
                ceZdX = Double.parseDouble(value);
            }
        }
        if (map.containsKey("ceZdY")) {
            String value = map.get("ceZdY").toString();
            if(RegexUtil.isNumber(value)) {
                ceZdY = Double.parseDouble(value);
            }
        }
    }

    public void setJson(JSONObject json) {
        if (json.containsKey("ceId")) {
            if(RegexUtil.isNumber(json.getString("ceId"))) {
                ceId = json.getInteger("ceId");
            }
        }
        if (json.containsKey("ceQx")) {
            ceQx = json.getString("ceQx");
        }
        if (json.containsKey("ceJd")) {
            ceJd = json.getString("ceJd");
        }
        if (json.containsKey("ceDk")) {
            if(RegexUtil.isNumber(json.getString("ceDk"))) {
                ceDk = json.getDouble("ceDk");
            }
        }
        if (json.containsKey("ceEx")) {
            if(RegexUtil.isNumber(json.getString("ceEx"))) {
                ceEx = json.getDouble("ceEx");
            }
        }
        if (json.containsKey("ceNy")) {
            if(RegexUtil.isNumber(json.getString("ceNy"))) {
                ceNy = json.getDouble("ceNy");
            }
        }
        if (json.containsKey("ceT1")) {
            if(RegexUtil.isNumber(json.getString("ceT1"))) {
                ceT1 = json.getDouble("ceT1");
            }
        }
        if (json.containsKey("ceT2")) {
            if(RegexUtil.isNumber(json.getString("ceT2"))) {
                ceT2 = json.getDouble("ceT2");
            }
        }
        if (json.containsKey("ceR1")) {
            if(RegexUtil.isNumber(json.getString("ceR1"))) {
                ceR1 = json.getDouble("ceR1");
            }
        }
        if (json.containsKey("ceR2")) {
            if(RegexUtil.isNumber(json.getString("ceR2"))) {
                ceR2 = json.getDouble("ceR2");
            }
        }
        if (json.containsKey("ceRc")) {
            if(RegexUtil.isNumber(json.getString("ceRc"))) {
                ceRc = json.getDouble("ceRc");
            }
        }
        if (json.containsKey("ceA1")) {
            if(RegexUtil.isNumber(json.getString("ceA1"))) {
                ceA1 = json.getDouble("ceA1");
            }
        }
        if (json.containsKey("ceA2")) {
            if(RegexUtil.isNumber(json.getString("ceA2"))) {
                ceA2 = json.getDouble("ceA2");
            }
        }
        if (json.containsKey("ceLs1")) {
            if(RegexUtil.isNumber(json.getString("ceLs1"))) {
                ceLs1 = json.getDouble("ceLs1");
            }
        }
        if (json.containsKey("ceLs2")) {
            if(RegexUtil.isNumber(json.getString("ceLs2"))) {
                ceLs2 = json.getDouble("ceLs2");
            }
        }
        if (json.containsKey("ceLc")) {
            if(RegexUtil.isNumber(json.getString("ceLc"))) {
                ceLc = json.getDouble("ceLc");
            }
        }
        if (json.containsKey("ceLz")) {
            if(RegexUtil.isNumber(json.getString("ceLz"))) {
                ceLz = json.getDouble("ceLz");
            }
        }
        if (json.containsKey("ceL")) {
            if(RegexUtil.isNumber(json.getString("ceL"))) {
                ceL = json.getDouble("ceL");
            }
        }
        if (json.containsKey("ceE")) {
            if(RegexUtil.isNumber(json.getString("ceE"))) {
                ceE = json.getDouble("ceE");
            }
        }
        if (json.containsKey("cePj")) {
            if(RegexUtil.isNumber(json.getString("cePj"))) {
                cePj = json.getDouble("cePj");
            }
        }
        if (json.containsKey("ceFwj")) {
            if(RegexUtil.isNumber(json.getString("ceFwj"))) {
                ceFwj = json.getDouble("ceFwj");
            }
        }
        if (json.containsKey("ceQd")) {
            if(RegexUtil.isNumber(json.getString("ceQd"))) {
                ceQd = json.getDouble("ceQd");
            }
        }
        if (json.containsKey("ceZh")) {
            if(RegexUtil.isNumber(json.getString("ceZh"))) {
                ceZh = json.getDouble("ceZh");
            }
        }
        if (json.containsKey("ceHy")) {
            if(RegexUtil.isNumber(json.getString("ceHy"))) {
                ceHy = json.getDouble("ceHy");
            }
        }
        if (json.containsKey("ceQz")) {
            if(RegexUtil.isNumber(json.getString("ceQz"))) {
                ceQz = json.getDouble("ceQz");
            }
        }
        if (json.containsKey("ceYh")) {
            if(RegexUtil.isNumber(json.getString("ceYh"))) {
                ceYh = json.getDouble("ceYh");
            }
        }
        if (json.containsKey("ceHz")) {
            if(RegexUtil.isNumber(json.getString("ceHz"))) {
                ceHz = json.getDouble("ceHz");
            }
        }
        if (json.containsKey("ceZd")) {
            if(RegexUtil.isNumber(json.getString("ceZd"))) {
                ceZd = json.getDouble("ceZd");
            }
        }
        if (json.containsKey("ceQdX")) {
            if(RegexUtil.isNumber(json.getString("ceQdX"))) {
                ceQdX = json.getDouble("ceQdX");
            }
        }
        if (json.containsKey("ceQdY")) {
            if(RegexUtil.isNumber(json.getString("ceQdY"))) {
                ceQdY = json.getDouble("ceQdY");
            }
        }
        if (json.containsKey("ceZhX")) {
            if(RegexUtil.isNumber(json.getString("ceZhX"))) {
                ceZhX = json.getDouble("ceZhX");
            }
        }
        if (json.containsKey("ceZhY")) {
            if(RegexUtil.isNumber(json.getString("ceZhY"))) {
                ceZhY = json.getDouble("ceZhY");
            }
        }
        if (json.containsKey("ceHyX")) {
            if(RegexUtil.isNumber(json.getString("ceHyX"))) {
                ceHyX = json.getDouble("ceHyX");
            }
        }
        if (json.containsKey("ceHyY")) {
            if(RegexUtil.isNumber(json.getString("ceHyY"))) {
                ceHyY = json.getDouble("ceHyY");
            }
        }
        if (json.containsKey("ceQzX")) {
            if(RegexUtil.isNumber(json.getString("ceQzX"))) {
                ceQzX = json.getDouble("ceQzX");
            }
        }
        if (json.containsKey("ceQzY")) {
            if(RegexUtil.isNumber(json.getString("ceQzY"))) {
                ceQzY = json.getDouble("ceQzY");
            }
        }
        if (json.containsKey("ceYhX")) {
            if(RegexUtil.isNumber(json.getString("ceYhX"))) {
                ceYhX = json.getDouble("ceYhX");
            }
        }
        if (json.containsKey("ceYhY")) {
            if(RegexUtil.isNumber(json.getString("ceYhY"))) {
                ceYhY = json.getDouble("ceYhY");
            }
        }
        if (json.containsKey("ceHzX")) {
            if(RegexUtil.isNumber(json.getString("ceHzX"))) {
                ceHzX = json.getDouble("ceHzX");
            }
        }
        if (json.containsKey("ceHzY")) {
            if(RegexUtil.isNumber(json.getString("ceHzY"))) {
                ceHzY = json.getDouble("ceHzY");
            }
        }
        if (json.containsKey("ceZdX")) {
            if(RegexUtil.isNumber(json.getString("ceZdX"))) {
                ceZdX = json.getDouble("ceZdX");
            }
        }
        if (json.containsKey("ceZdY")) {
            if(RegexUtil.isNumber(json.getString("ceZdY"))) {
                ceZdY = json.getDouble("ceZdY");
            }
        }
    }

    public Map toMap() {
        Map map = new HashMap<>();
        if(ceId == null) {
            ceId = 0;
        }
        map.put("ceId", ceId);
        map.put("ceQx", ceQx);
        map.put("ceJd", ceJd);
        if(ceDk == null) {
            ceDk = -1.0;
        }
        map.put("ceDk", ceDk);
        if(ceEx == null) {
            ceEx = -1.0;
        }
        map.put("ceEx", ceEx);
        if(ceNy == null) {
            ceNy = -1.0;
        }
        map.put("ceNy", ceNy);
        if(ceT1 == null) {
            ceT1 = -1.0;
        }
        map.put("ceT1", ceT1);
        if(ceT2 == null) {
            ceT2 = -1.0;
        }
        map.put("ceT2", ceT2);
        if(ceR1 == null) {
            ceR1 = -1.0;
        }
        map.put("ceR1", ceR1);
        if(ceR2 == null) {
            ceR2 = -1.0;
        }
        map.put("ceR2", ceR2);
        if(ceRc == null) {
            ceRc = -1.0;
        }
        map.put("ceRc", ceRc);
        if(ceA1 == null) {
            ceA1 = -1.0;
        }
        map.put("ceA1", ceA1);
        if(ceA2 == null) {
            ceA2 = -1.0;
        }
        map.put("ceA2", ceA2);
        if(ceLs1 == null) {
            ceLs1 = -1.0;
        }
        map.put("ceLs1", ceLs1);
        if(ceLs2 == null) {
            ceLs2 = -1.0;
        }
        map.put("ceLs2", ceLs2);
        if(ceLc == null) {
            ceLc = -1.0;
        }
        map.put("ceLc", ceLc);
        if(ceLz == null) {
            ceLz = -1.0;
        }
        map.put("ceLz", ceLz);
        if(ceL == null) {
            ceL = -1.0;
        }
        map.put("ceL", ceL);
        if(ceE == null) {
            ceE = -1.0;
        }
        map.put("ceE", ceE);
        if(cePj == null) {
            cePj = -1.0;
        }
        map.put("cePj", cePj);
        if(ceFwj == null) {
            ceFwj = -1.0;
        }
        map.put("ceFwj", ceFwj);
        if(ceQd == null) {
            ceQd = -1.0;
        }
        map.put("ceQd", ceQd);
        if(ceZh == null) {
            ceZh = -1.0;
        }
        map.put("ceZh", ceZh);
        if(ceHy == null) {
            ceHy = -1.0;
        }
        map.put("ceHy", ceHy);
        if(ceQz == null) {
            ceQz = -1.0;
        }
        map.put("ceQz", ceQz);
        if(ceYh == null) {
            ceYh = -1.0;
        }
        map.put("ceYh", ceYh);
        if(ceHz == null) {
            ceHz = -1.0;
        }
        map.put("ceHz", ceHz);
        if(ceZd == null) {
            ceZd = -1.0;
        }
        map.put("ceZd", ceZd);
        if(ceQdX == null) {
            ceQdX = -1.0;
        }
        map.put("ceQdX", ceQdX);
        if(ceQdY == null) {
            ceQdY = -1.0;
        }
        map.put("ceQdY", ceQdY);
        if(ceZhX == null) {
            ceZhX = -1.0;
        }
        map.put("ceZhX", ceZhX);
        if(ceZhY == null) {
            ceZhY = -1.0;
        }
        map.put("ceZhY", ceZhY);
        if(ceHyX == null) {
            ceHyX = -1.0;
        }
        map.put("ceHyX", ceHyX);
        if(ceHyY == null) {
            ceHyY = -1.0;
        }
        map.put("ceHyY", ceHyY);
        if(ceQzX == null) {
            ceQzX = -1.0;
        }
        map.put("ceQzX", ceQzX);
        if(ceQzY == null) {
            ceQzY = -1.0;
        }
        map.put("ceQzY", ceQzY);
        if(ceYhX == null) {
            ceYhX = -1.0;
        }
        map.put("ceYhX", ceYhX);
        if(ceYhY == null) {
            ceYhY = -1.0;
        }
        map.put("ceYhY", ceYhY);
        if(ceHzX == null) {
            ceHzX = -1.0;
        }
        map.put("ceHzX", ceHzX);
        if(ceHzY == null) {
            ceHzY = -1.0;
        }
        map.put("ceHzY", ceHzY);
        if(ceZdX == null) {
            ceZdX = -1.0;
        }
        map.put("ceZdX", ceZdX);
        if(ceZdY == null) {
            ceZdY = -1.0;
        }
        map.put("ceZdY", ceZdY);

        return map;
    }

    public JSONObject toJson() {
        JSONObject json = new JSONObject();
        if(ceId == null) {
            ceId = 0;
        }
        json.put("ceId", ceId);
        json.put("ceQx", ceQx);
        json.put("ceJd", ceJd);
        if(ceDk == null) {
            ceDk = -1.0;
        }
        json.put("ceDk", ceDk);
        if(ceEx == null) {
            ceEx = -1.0;
        }
        json.put("ceEx", ceEx);
        if(ceNy == null) {
            ceNy = -1.0;
        }
        json.put("ceNy", ceNy);
        if(ceT1 == null) {
            ceT1 = -1.0;
        }
        json.put("ceT1", ceT1);
        if(ceT2 == null) {
            ceT2 = -1.0;
        }
        json.put("ceT2", ceT2);
        if(ceR1 == null) {
            ceR1 = -1.0;
        }
        json.put("ceR1", ceR1);
        if(ceR2 == null) {
            ceR2 = -1.0;
        }
        json.put("ceR2", ceR2);
        if(ceRc == null) {
            ceRc = -1.0;
        }
        json.put("ceRc", ceRc);
        if(ceA1 == null) {
            ceA1 = -1.0;
        }
        json.put("ceA1", ceA1);
        if(ceA2 == null) {
            ceA2 = -1.0;
        }
        json.put("ceA2", ceA2);
        if(ceLs1 == null) {
            ceLs1 = -1.0;
        }
        json.put("ceLs1", ceLs1);
        if(ceLs2 == null) {
            ceLs2 = -1.0;
        }
        json.put("ceLs2", ceLs2);
        if(ceLc == null) {
            ceLc = -1.0;
        }
        json.put("ceLc", ceLc);
        if(ceLz == null) {
            ceLz = -1.0;
        }
        json.put("ceLz", ceLz);
        if(ceL == null) {
            ceL = -1.0;
        }
        json.put("ceL", ceL);
        if(ceE == null) {
            ceE = -1.0;
        }
        json.put("ceE", ceE);
        if(cePj == null) {
            cePj = -1.0;
        }
        json.put("cePj", cePj);
        if(ceFwj == null) {
            ceFwj = -1.0;
        }
        json.put("ceFwj", ceFwj);
        if(ceQd == null) {
            ceQd = -1.0;
        }
        json.put("ceQd", ceQd);
        if(ceZh == null) {
            ceZh = -1.0;
        }
        json.put("ceZh", ceZh);
        if(ceHy == null) {
            ceHy = -1.0;
        }
        json.put("ceHy", ceHy);
        if(ceQz == null) {
            ceQz = -1.0;
        }
        json.put("ceQz", ceQz);
        if(ceYh == null) {
            ceYh = -1.0;
        }
        json.put("ceYh", ceYh);
        if(ceHz == null) {
            ceHz = -1.0;
        }
        json.put("ceHz", ceHz);
        if(ceZd == null) {
            ceZd = -1.0;
        }
        json.put("ceZd", ceZd);
        if(ceQdX == null) {
            ceQdX = -1.0;
        }
        json.put("ceQdX", ceQdX);
        if(ceQdY == null) {
            ceQdY = -1.0;
        }
        json.put("ceQdY", ceQdY);
        if(ceZhX == null) {
            ceZhX = -1.0;
        }
        json.put("ceZhX", ceZhX);
        if(ceZhY == null) {
            ceZhY = -1.0;
        }
        json.put("ceZhY", ceZhY);
        if(ceHyX == null) {
            ceHyX = -1.0;
        }
        json.put("ceHyX", ceHyX);
        if(ceHyY == null) {
            ceHyY = -1.0;
        }
        json.put("ceHyY", ceHyY);
        if(ceQzX == null) {
            ceQzX = -1.0;
        }
        json.put("ceQzX", ceQzX);
        if(ceQzY == null) {
            ceQzY = -1.0;
        }
        json.put("ceQzY", ceQzY);
        if(ceYhX == null) {
            ceYhX = -1.0;
        }
        json.put("ceYhX", ceYhX);
        if(ceYhY == null) {
            ceYhY = -1.0;
        }
        json.put("ceYhY", ceYhY);
        if(ceHzX == null) {
            ceHzX = -1.0;
        }
        json.put("ceHzX", ceHzX);
        if(ceHzY == null) {
            ceHzY = -1.0;
        }
        json.put("ceHzY", ceHzY);
        if(ceZdX == null) {
            ceZdX = -1.0;
        }
        json.put("ceZdX", ceZdX);
        if(ceZdY == null) {
            ceZdY = -1.0;
        }
        json.put("ceZdY", ceZdY);

        return json;
    }

    /**
     * 功能：获取待算里程位于交点那一部分
     *
     * @param dk
     * @return 1 前直线  2 前缓和曲线  3 圆曲线  4 后缓和曲线  5 后直线
     */
    public Integer inDkPart(Double dk) {
        if(dk.compareTo(ceQd)>=0 && dk.compareTo(ceZh)<=0) {
            return 1;
        }
        if(dk > ceZh && dk < ceHy) {
            return 2;
        }
        if(dk.compareTo(ceHy)>=0 && dk.compareTo(ceYh)<=0) {
            return 3;
        }
        if(dk > ceYh && dk < ceHz) {
            return 4;
        }
        if(dk.compareTo(ceHz)>=0 && dk.compareTo(ceZd)<=0) {
            return 5;
        }

        return -1;
    }

    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        CurveElement other = (CurveElement) that;
        return (this.getCeId() == null ? other.getCeId() == null : this.getCeId().equals(other.getCeId()))
            && (this.getCeJd() == null ? other.getCeJd() == null : this.getCeJd().equals(other.getCeJd()))
            && (this.getCeDk() == null ? other.getCeDk() == null : this.getCeDk().equals(other.getCeDk()))
            && (this.getCeEx() == null ? other.getCeEx() == null : this.getCeEx().equals(other.getCeEx()))
            && (this.getCeNy() == null ? other.getCeNy() == null : this.getCeNy().equals(other.getCeNy()))
            && (this.getCeT1() == null ? other.getCeT1() == null : this.getCeT1().equals(other.getCeT1()))
            && (this.getCeT2() == null ? other.getCeT2() == null : this.getCeT2().equals(other.getCeT2()))
            && (this.getCeR1() == null ? other.getCeR1() == null : this.getCeR1().equals(other.getCeR1()))
            && (this.getCeR2() == null ? other.getCeR2() == null : this.getCeR2().equals(other.getCeR2()))
            && (this.getCeRc() == null ? other.getCeRc() == null : this.getCeRc().equals(other.getCeRc()))
            && (this.getCeA1() == null ? other.getCeA1() == null : this.getCeA1().equals(other.getCeA1()))
            && (this.getCeA2() == null ? other.getCeA2() == null : this.getCeA2().equals(other.getCeA2()))
            && (this.getCeLs1() == null ? other.getCeLs1() == null : this.getCeLs1().equals(other.getCeLs1()))
            && (this.getCeLs2() == null ? other.getCeLs2() == null : this.getCeLs2().equals(other.getCeLs2()))
            && (this.getCeLc() == null ? other.getCeLc() == null : this.getCeLc().equals(other.getCeLc()))
            && (this.getCeLz() == null ? other.getCeLz() == null : this.getCeLz().equals(other.getCeLz()))
            && (this.getCeL() == null ? other.getCeL() == null : this.getCeL().equals(other.getCeL()))
            && (this.getCeE() == null ? other.getCeE() == null : this.getCeE().equals(other.getCeE()))
            && (this.getCePj() == null ? other.getCePj() == null : this.getCePj().equals(other.getCePj()))
            && (this.getCeFwj() == null ? other.getCeFwj() == null : this.getCeFwj().equals(other.getCeFwj()))
            && (this.getCeQd() == null ? other.getCeQd() == null : this.getCeQd().equals(other.getCeQd()))
            && (this.getCeZh() == null ? other.getCeZh() == null : this.getCeZh().equals(other.getCeZh()))
            && (this.getCeHy() == null ? other.getCeHy() == null : this.getCeHy().equals(other.getCeHy()))
            && (this.getCeQz() == null ? other.getCeQz() == null : this.getCeQz().equals(other.getCeQz()))
            && (this.getCeYh() == null ? other.getCeYh() == null : this.getCeYh().equals(other.getCeYh()))
            && (this.getCeHz() == null ? other.getCeHz() == null : this.getCeHz().equals(other.getCeHz()))
            && (this.getCeZd() == null ? other.getCeZd() == null : this.getCeZd().equals(other.getCeZd()))
            && (this.getCeQdX() == null ? other.getCeQdX() == null : this.getCeQdX().equals(other.getCeQdX()))
            && (this.getCeQdY() == null ? other.getCeQdY() == null : this.getCeQdY().equals(other.getCeQdY()))
            && (this.getCeZhX() == null ? other.getCeZhX() == null : this.getCeZhX().equals(other.getCeZhX()))
            && (this.getCeZhY() == null ? other.getCeZhY() == null : this.getCeZhY().equals(other.getCeZhY()))
            && (this.getCeHyX() == null ? other.getCeHyX() == null : this.getCeHyX().equals(other.getCeHyX()))
            && (this.getCeHyY() == null ? other.getCeHyY() == null : this.getCeHyY().equals(other.getCeHyY()))
            && (this.getCeQzX() == null ? other.getCeQzX() == null : this.getCeQzX().equals(other.getCeQzX()))
            && (this.getCeQzY() == null ? other.getCeQzY() == null : this.getCeQzY().equals(other.getCeQzY()))
            && (this.getCeYhX() == null ? other.getCeYhX() == null : this.getCeYhX().equals(other.getCeYhX()))
            && (this.getCeYhY() == null ? other.getCeYhY() == null : this.getCeYhY().equals(other.getCeYhY()))
            && (this.getCeHzX() == null ? other.getCeHzX() == null : this.getCeHzX().equals(other.getCeHzX()))
            && (this.getCeHzY() == null ? other.getCeHzY() == null : this.getCeHzY().equals(other.getCeHzY()))
            && (this.getCeZdX() == null ? other.getCeZdX() == null : this.getCeZdX().equals(other.getCeZdX()))
            && (this.getCeZdY() == null ? other.getCeZdY() == null : this.getCeZdY().equals(other.getCeZdY()))
            && (this.getCeQx() == null ? other.getCeQx() == null : this.getCeQx().equals(other.getCeQx()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getCeId() == null) ? 0 : getCeId().hashCode());
        result = prime * result + ((getCeJd() == null) ? 0 : getCeJd().hashCode());
        result = prime * result + ((getCeDk() == null) ? 0 : getCeDk().hashCode());
        result = prime * result + ((getCeEx() == null) ? 0 : getCeEx().hashCode());
        result = prime * result + ((getCeNy() == null) ? 0 : getCeNy().hashCode());
        result = prime * result + ((getCeT1() == null) ? 0 : getCeT1().hashCode());
        result = prime * result + ((getCeT2() == null) ? 0 : getCeT2().hashCode());
        result = prime * result + ((getCeR1() == null) ? 0 : getCeR1().hashCode());
        result = prime * result + ((getCeR2() == null) ? 0 : getCeR2().hashCode());
        result = prime * result + ((getCeRc() == null) ? 0 : getCeRc().hashCode());
        result = prime * result + ((getCeA1() == null) ? 0 : getCeA1().hashCode());
        result = prime * result + ((getCeA2() == null) ? 0 : getCeA2().hashCode());
        result = prime * result + ((getCeLs1() == null) ? 0 : getCeLs1().hashCode());
        result = prime * result + ((getCeLs2() == null) ? 0 : getCeLs2().hashCode());
        result = prime * result + ((getCeLc() == null) ? 0 : getCeLc().hashCode());
        result = prime * result + ((getCeLz() == null) ? 0 : getCeLz().hashCode());
        result = prime * result + ((getCeL() == null) ? 0 : getCeL().hashCode());
        result = prime * result + ((getCeE() == null) ? 0 : getCeE().hashCode());
        result = prime * result + ((getCePj() == null) ? 0 : getCePj().hashCode());
        result = prime * result + ((getCeFwj() == null) ? 0 : getCeFwj().hashCode());
        result = prime * result + ((getCeQd() == null) ? 0 : getCeQd().hashCode());
        result = prime * result + ((getCeZh() == null) ? 0 : getCeZh().hashCode());
        result = prime * result + ((getCeHy() == null) ? 0 : getCeHy().hashCode());
        result = prime * result + ((getCeQz() == null) ? 0 : getCeQz().hashCode());
        result = prime * result + ((getCeYh() == null) ? 0 : getCeYh().hashCode());
        result = prime * result + ((getCeHz() == null) ? 0 : getCeHz().hashCode());
        result = prime * result + ((getCeZd() == null) ? 0 : getCeZd().hashCode());
        result = prime * result + ((getCeQdX() == null) ? 0 : getCeQdX().hashCode());
        result = prime * result + ((getCeQdY() == null) ? 0 : getCeQdY().hashCode());
        result = prime * result + ((getCeZhX() == null) ? 0 : getCeZhX().hashCode());
        result = prime * result + ((getCeZhY() == null) ? 0 : getCeZhY().hashCode());
        result = prime * result + ((getCeHyX() == null) ? 0 : getCeHyX().hashCode());
        result = prime * result + ((getCeHyY() == null) ? 0 : getCeHyY().hashCode());
        result = prime * result + ((getCeQzX() == null) ? 0 : getCeQzX().hashCode());
        result = prime * result + ((getCeQzY() == null) ? 0 : getCeQzY().hashCode());
        result = prime * result + ((getCeYhX() == null) ? 0 : getCeYhX().hashCode());
        result = prime * result + ((getCeYhY() == null) ? 0 : getCeYhY().hashCode());
        result = prime * result + ((getCeHzX() == null) ? 0 : getCeHzX().hashCode());
        result = prime * result + ((getCeHzY() == null) ? 0 : getCeHzY().hashCode());
        result = prime * result + ((getCeZdX() == null) ? 0 : getCeZdX().hashCode());
        result = prime * result + ((getCeZdY() == null) ? 0 : getCeZdY().hashCode());
        result = prime * result + ((getCeQx() == null) ? 0 : getCeQx().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", ceId=").append(ceId);
        sb.append(", ceJd=").append(ceJd);
        sb.append(", ceDk=").append(ceDk);
        sb.append(", ceEx=").append(ceEx);
        sb.append(", ceNy=").append(ceNy);
        sb.append(", ceT1=").append(ceT1);
        sb.append(", ceT2=").append(ceT2);
        sb.append(", ceR1=").append(ceR1);
        sb.append(", ceR2=").append(ceR2);
        sb.append(", ceRc=").append(ceRc);
        sb.append(", ceA1=").append(ceA1);
        sb.append(", ceA2=").append(ceA2);
        sb.append(", ceLs1=").append(ceLs1);
        sb.append(", ceLs2=").append(ceLs2);
        sb.append(", ceLc=").append(ceLc);
        sb.append(", ceLz=").append(ceLz);
        sb.append(", ceL=").append(ceL);
        sb.append(", ceE=").append(ceE);
        sb.append(", cePj=").append(cePj);
        sb.append(", ceFwj=").append(ceFwj);
        sb.append(", ceQd=").append(ceQd);
        sb.append(", ceZh=").append(ceZh);
        sb.append(", ceHy=").append(ceHy);
        sb.append(", ceQz=").append(ceQz);
        sb.append(", ceYh=").append(ceYh);
        sb.append(", ceHz=").append(ceHz);
        sb.append(", ceZd=").append(ceZd);
        sb.append(", ceQdX=").append(ceQdX);
        sb.append(", ceQdY=").append(ceQdY);
        sb.append(", ceZhX=").append(ceZhX);
        sb.append(", ceZhY=").append(ceZhY);
        sb.append(", ceHyX=").append(ceHyX);
        sb.append(", ceHyY=").append(ceHyY);
        sb.append(", ceQzX=").append(ceQzX);
        sb.append(", ceQzY=").append(ceQzY);
        sb.append(", ceYhX=").append(ceYhX);
        sb.append(", ceYhY=").append(ceYhY);
        sb.append(", ceHzX=").append(ceHzX);
        sb.append(", ceHzY=").append(ceHzY);
        sb.append(", ceZdX=").append(ceZdX);
        sb.append(", ceZdY=").append(ceZdY);
        sb.append(", ceQx=").append(ceQx);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}