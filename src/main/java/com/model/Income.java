package com.model;

import com.alibaba.fastjson.JSONObject;
import com.dateutil.DateConverter;
import com.dateutil.RegexUtil;
import com.fasterxml.jackson.annotation.JsonFormat;

import java.io.Serializable;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * @author 
 * 输入信息表
 */
public class Income implements Serializable {
    /**
     * 编号
     */
    private String iCode;

    /**
     * 日期
     */
    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    private Date iDate;

    /**
     * 款项
     */
    private String fCode;

    /**
     * 款项
     */
    private Funds funds;

    /**
     * 成员
     */
    private String mCode;

    /**
     * 成员
     */
    private Member member;

    /**
     * 数量
     */
    private Double iQty;

    /**
     * 金额
     */
    private Double iMoney;

    /**
     * 方式
     */
    private String iMethod;

    /**
     * 备注
     */
    private String iInfo;

    private static final long serialVersionUID = 1L;

    /**
     * 默认构造方法
     */
    public Income() {
    }

    /**
     * 部分构造方法
     */
    public Income(String iCode, Funds funds) {
        this.iCode = iCode;
        this.funds = funds;
        this.fCode = funds.getfCode();
    }
    public Income(String iCode, Member member) {
        this.iCode = iCode;
        this.member = member;
        this.mCode = member.getmCode();
    }
    public Income(String iCode, Funds funds, Member member) {
        this.iCode = iCode;
        this.funds = funds;
        this.fCode = funds.getfCode();
        this.member = member;
        this.mCode = member.getmCode();
    }

    /**
     * 完整构造方法
     */
    public Income(String iCode, Date iDate, String fCode, String mCode,
                   Double iQty, Double iMoney, String iMethod, String iInfo) {
        this.iCode = iCode;
        this.iDate = iDate;
        this.fCode = fCode;
        this.mCode = mCode;
        this.iQty = iQty;
        this.iMoney = iMoney;
        this.iMethod = iMethod;
        this.iInfo = iInfo;
    }
//    @JsonCreator
//    public Income(@JsonProperty("iCode") String iCode, @JsonProperty("iDate") Date iDate,
//                  @JsonProperty("fCode") String fCode, @JsonProperty("mCode") String mCode,
//                  @JsonProperty("iQty") Double iQty, @JsonProperty("iMoney") Double iMoney,
//                  @JsonProperty("iMethod") String iMethod, @JsonProperty("iInfo") String iInfo) {
//        this.iCode = iCode;
//        this.iDate = iDate;
//        this.fCode = fCode;
//        this.mCode = mCode;
//        this.iQty = iQty;
//        this.iMoney = iMoney;
//        this.iMethod = iMethod;
//        this.iInfo = iInfo;
//    }


    public String getiCode() {
        return iCode;
    }

    public void setiCode(String iCode) {
        this.iCode = iCode;
    }

    public Date getiDate() {
        return iDate;
    }

    public void setiDate(Date iDate) {
        this.iDate = iDate;
    }

    public String getfCode() {
        return fCode;
    }

    public void setfCode(String fCode) {
        this.fCode = fCode;
    }

    public Funds getFunds() {
        return funds;
    }

    public void setFunds(Funds funds) {
        this.funds = funds;
        this.fCode = funds.getfCode();
    }

    public String getmCode() {
        return mCode;
    }

    public void setmCode(String mCode) {
        this.mCode = mCode;
    }

    public Member getMember() {
        return member;
    }

    public void setMember(Member member) {
        this.member = member;
        this.mCode = member.getmCode();
    }

    public Double getiQty() {
        return iQty;
    }

    public void setiQty(Double iQty) {
        this.iQty = iQty;
    }

    public Double getiMoney() {
        return iMoney;
    }

    public void setiMoney(Double iMoney) {
        this.iMoney = iMoney;
    }

    public String getiMethod() {
        return iMethod;
    }

    public void setiMethod(String iMethod) {
        this.iMethod = iMethod;
    }

    public String getiInfo() {
        return iInfo;
    }

    public void setiInfo(String iInfo) {
        this.iInfo = iInfo;
    }

    public void setField(String field, Object value) {
        String _value = value.toString();
        if (field.equals("iCode")) {
            iCode = _value;
        }
        if (field.equals("iDate")) {
            iDate = DateConverter.strToDate(_value);
        }
        if (field.equals("fCode")) {
            fCode = _value;
        }
        if (field.equals("funds")) {
            funds = (Funds)value;
        }
        if (field.equals("mCode")) {
            mCode = _value;
        }
        if (field.equals("member")) {
            member = (Member)value;
        }
        if (field.equals("iQty")) {
            if(RegexUtil.isNumber(_value)) {
                iQty = Double.parseDouble(_value);
            }
        }
        if (field.equals("iMoney")) {
            if(RegexUtil.isNumber(_value)) {
                iMoney = Double.parseDouble(_value);
            }
        }
        if (field.equals("iMethod")) {
            iMethod = _value;
        }
        if (field.equals("iInfo")) {
            iInfo = _value;
        }
    }

    public void setMap(Map map) {
        if (map.containsKey("iCode")) {
            iCode = map.get("iCode").toString();
        }
        if (map.containsKey("iDate")) {
            iDate = DateConverter.strToDate(map.get("iDate").toString());
        }
        if (map.containsKey("fCode")) {
            fCode = map.get("fCode").toString();
        }
        if (map.containsKey("funds")) {
            funds = (Funds)map.get("funds");
        }
        if (map.containsKey("mCode")) {
            mCode = map.get("mCode").toString();
        }
        if (map.containsKey("member")) {
            member = (Member)map.get("member");
        }
        if (map.containsKey("iQty")) {
            String value = map.get("iQty").toString();
            if(RegexUtil.isNumber(value)) {
                iQty = Double.parseDouble(value);
            }
        }
        if (map.containsKey("iMoney")) {
            String value = map.get("iMoney").toString();
            if (RegexUtil.isNumber(value)) {
                iMoney = Double.parseDouble(value);
            }
        }
        if (map.containsKey("iMethod")) {
            iMethod = map.get("iMethod").toString();
        }
        if (map.containsKey("iInfo")) {
            iInfo = map.get("iInfo").toString();
        }
    }

    public void setJson(JSONObject json) {
        if (json.containsKey("iCode")) {
            iCode = json.getString("iCode");
        }
        if (json.containsKey("iDate")) {
            iDate = DateConverter.strToDate(json.getString("iDate"));
        }
        if (json.containsKey("fCode")) {
            fCode = json.getString("fCode");
        }
        if (json.containsKey("funds")) {
            funds = json.getObject("funds", Funds.class);
        }
        if (json.containsKey("mCode")) {
            mCode = json.getString("mCode");
        }
        if (json.containsKey("member")) {
            member = json.getObject("member", Member.class);
        }
        if (json.containsKey("iQty")) {
            if(RegexUtil.isNumber(json.getString("iQty"))) {
                iQty = json.getDouble("iQty");
            }
        }
        if (json.containsKey("iMoney")) {
            if(RegexUtil.isNumber(json.getString("iMoney"))) {
                iMoney = json.getDouble("iMoney");
            }
        }
        if (json.containsKey("iMethod")) {
            iMethod = json.getString("iMethod");
        }
        if (json.containsKey("iInfo")) {
            iInfo = json.getString("iInfo");
        }
    }

    public Map toMap() {
        Map map = new HashMap<>();
        map.put("iCode", iCode);
        map.put("iDate", DateConverter.dateToStr(iDate));
        map.put("fCode", fCode);
        map.put("funds", funds);
        map.put("mCode", mCode);
        map.put("member", member);
        if(iQty == null) {
            iQty = -1.0;
        }
        map.put("iQty", iQty);
        if(iMoney == null) {
            iMoney = -1.0;
        }
        map.put("iMoney", iMoney);
        map.put("iMethod", iMethod);
        map.put("iInfo", iInfo);

        return map;
    }

    public JSONObject toJson() {
        JSONObject json = new JSONObject();
        json.put("iCode", iCode);
        json.put("iDate", DateConverter.dateToStr(iDate));
        json.put("fCode", fCode);
        json.put("funds", funds);
        json.put("mCode", mCode);
        json.put("member", member);
        if(iQty == null) {
            iQty = -1.0;
        }
        json.put("iQty", iQty);
        if(iMoney == null) {
            iMoney = -1.0;
        }
        json.put("iMoney", iMoney);
        json.put("iMethod", iMethod);
        json.put("iInfo", iInfo);

        return json;
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
        Income other = (Income) that;
        return (this.getiCode() == null ? other.getiCode() == null : this.getiCode().equals(other.getiCode()))
            && (this.getiDate() == null ? other.getiDate() == null : this.getiDate().equals(other.getiDate()))
            && (this.getfCode() == null ? other.getfCode() == null : this.getfCode().equals(other.getfCode()))
            && (this.getFunds() == null ? other.getFunds() == null : this.getFunds().equals(other.getFunds()))
            && (this.getmCode() == null ? other.getmCode() == null : this.getmCode().equals(other.getmCode()))
            && (this.getMember() == null ? other.getMember() == null : this.getMember().equals(other.getMember()))
            && (this.getiQty() == null ? other.getiQty() == null : this.getiQty().equals(other.getiQty()))
            && (this.getiMoney() == null ? other.getiMoney() == null : this.getiMoney().equals(other.getiMoney()))
            && (this.getiMethod() == null ? other.getiMethod() == null : this.getiMethod().equals(other.getiMethod()))
            && (this.getiInfo() == null ? other.getiInfo() == null : this.getiInfo().equals(other.getiInfo()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getiCode() == null) ? 0 : getiCode().hashCode());
        result = prime * result + ((getiDate() == null) ? 0 : getiDate().hashCode());
        result = prime * result + ((getfCode() == null) ? 0 : getfCode().hashCode());
        result = prime * result + ((getFunds() == null) ? 0 : getFunds().hashCode());
        result = prime * result + ((getmCode() == null) ? 0 : getmCode().hashCode());
        result = prime * result + ((getMember() == null) ? 0 : getMember().hashCode());
        result = prime * result + ((getiQty() == null) ? 0 : getiQty().hashCode());
        result = prime * result + ((getiMoney() == null) ? 0 : getiMoney().hashCode());
        result = prime * result + ((getiMethod() == null) ? 0 : getiMethod().hashCode());
        result = prime * result + ((getiInfo() == null) ? 0 : getiInfo().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", iCode=").append(iCode);
        sb.append(", iDate=").append(iDate);
        sb.append(", fCode=").append(fCode);
        sb.append(", funds=").append(funds);
        sb.append(", mCode=").append(mCode);
        sb.append(", member=").append(member);
        sb.append(", iQty=").append(iQty);
        sb.append(", iMoney=").append(iMoney);
        sb.append(", iMethod=").append(iMethod);
        sb.append(", iInfo=").append(iInfo);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}