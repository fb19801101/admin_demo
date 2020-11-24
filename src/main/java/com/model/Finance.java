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
 * 收支信息表
 */
public class Finance implements Serializable {
    /**
     * 编号
     */
    private String pCode;

    /**
     * 日期
     */
    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    private Date pDate;

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
    private Double pQty;

    /**
     * 金额
     */
    private Double pMoney;

    /**
     * 收支
     */
    private String pType;

    /**
     * 方式
     */
    private String pMethod;

    /**
     * 备注
     */
    private String pInfo;

    private static final long serialVersionUID = 1L;

    /**
     * 默认构造方法
     */
    public Finance() {
    }

    /**
     * 部分构造方法
     */
    public Finance(String pCode, Funds funds) {
        this.pCode = pCode;
        this.funds = funds;
        this.fCode = funds.getfCode();
    }
    public Finance(String pCode, Member member) {
        this.pCode = pCode;
        this.member = member;
        this.mCode = member.getmCode();
    }
    public Finance(String pCode, Funds funds, Member member) {
        this.pCode = pCode;
        this.funds = funds;
        this.fCode = funds.getfCode();
        this.member = member;
        this.mCode = member.getmCode();
    }

    /**
     * 完整构造方法
     */
    public Finance(String pCode, Date pDate, String fCode, String mCode, Double pQty,
                   Double pMoney, String pType, String pMethod, String pInfo) {
        this.pCode = pCode;
        this.pDate = pDate;
        this.fCode = fCode;
        this.mCode = mCode;
        this.pQty = pQty;
        this.pMoney = pMoney;
        this.pType = pType;
        this.pMethod = pMethod;
        this.pInfo = pInfo;
    }
//    @JsonCreator
//    public Finance(@JsonProperty("pCode") String pCode, @JsonProperty("pDate") Date pDate,
//                   @JsonProperty("fCode") String fCode, @JsonProperty("mCode") String mCode,
//                   @JsonProperty("pQty") Double pQty, @JsonProperty("pMoney") Double pMoney,
//                   @JsonProperty("pType") String pType, @JsonProperty("pMethod") String pMethod,
//                   @JsonProperty("pInfo") String pInfo) {
//        this.pCode = pCode;
//        this.pDate = pDate;
//        this.fCode = fCode;
//        this.mCode = mCode;
//        this.pQty = pQty;
//        this.pMoney = pMoney;
//        this.pType = pType;
//        this.pMethod = pMethod;
//        this.pInfo = pInfo;
//    }

    public String getpCode() {
        return pCode;
    }

    public void setpCode(String pCode) {
        this.pCode = pCode;
    }

    public Date getpDate() {
        return pDate;
    }

    public void setpDate(Date pDate) {
        this.pDate = pDate;
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

    public Double getpQty() {
        return pQty;
    }

    public void setpQty(Double pQty) {
        this.pQty = pQty;
    }

    public Double getpMoney() {
        return pMoney;
    }

    public void setpMoney(Double pMoney) {
        this.pMoney = pMoney;
    }

    public String getpType() {
        return pType;
    }

    public void setpType(String pType) {
        this.pType = pType;
    }

    public String getpMethod() {
        return pMethod;
    }

    public void setpMethod(String pMethod) {
        this.pMethod = pMethod;
    }

    public String getpInfo() {
        return pInfo;
    }

    public void setpInfo(String pInfo) {
        this.pInfo = pInfo;
    }

    public void setField(String field, Object value) {
        String _value = value.toString();
        if (field.equals("pCode")) {
            pCode = _value;
        }
        if (field.equals("pDate")) {
            pDate = DateConverter.strToDate(_value);
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
        if (field.equals("pQty")) {
            if(RegexUtil.isNumber(_value)) {
                pQty = Double.parseDouble(_value);
            }
        }
        if (field.equals("pMoney")) {
            if(RegexUtil.isNumber(_value)) {
                pMoney = Double.parseDouble(_value);
            }
        }
        if (field.equals("pType")) {
            pType = _value;
        }
        if (field.equals("pMethod")) {
            pMethod = _value;
        }
        if (field.equals("pInfo")) {
            pInfo = _value;
        }
    }

    public void setMap(Map map) {
        if (map.containsKey("pCode")) {
            pCode = map.get("pCode").toString();
        }
        if (map.containsKey("pDate")) {
            pDate = DateConverter.strToDate(map.get("pDate").toString());
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
        if (map.containsKey("pQty")) {
            String value = map.get("pQty").toString();
            if(RegexUtil.isNumber(value)) {
                pQty = Double.parseDouble(value);
            }
        }
        if (map.containsKey("pMoney")) {
            String value = map.get("pMoney").toString();
            if(RegexUtil.isNumber(value)) {
                pMoney = Double.parseDouble(value);
            }
        }
        if (map.containsKey("pType")) {
            pType = map.get("pType").toString();
        }
        if (map.containsKey("pMethod")) {
            pMethod = map.get("pMethod").toString();
        }
        if (map.containsKey("pInfo")) {
            pInfo = map.get("pInfo").toString();
        }
    }

    public void setJson(JSONObject json) {
        if (json.containsKey("pCode")) {
            pCode = json.getString("pCode");
        }
        if (json.containsKey("pDate")) {
            pDate = DateConverter.strToDate(json.getString("pDate"));
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
        if (json.containsKey("pQty")) {
            if(RegexUtil.isNumber(json.getString("pQty"))) {
                pQty = json.getDouble("pQty");
            }
        }
        if (json.containsKey("pMoney")) {
            if(RegexUtil.isNumber(json.getString("pMoney"))) {
                pMoney = json.getDouble("pMoney");
            }
        }
        if (json.containsKey("pType")) {
            pType = json.getString("pType");
        }
        if (json.containsKey("pMethod")) {
            pMethod = json.getString("pMethod");
        }
        if (json.containsKey("pInfo")) {
            pInfo = json.getString("pInfo");
        }
    }

    public Map toMap() {
        Map map = new HashMap<>();
        map.put("pCode", pCode);
        map.put("pDate", DateConverter.dateToStr(pDate));
        map.put("fCode", fCode);
        map.put("funds", funds);
        map.put("mCode", mCode);
        map.put("member", member);
        if(pQty == null) {
            pQty = -1.0;
        }
        map.put("pQty", pQty);
        if(pMoney == null) {
            pMoney = -1.0;
        }
        map.put("pMoney", pMoney);
        map.put("pType", pType);
        map.put("pMethod", pMethod);
        map.put("pInfo", pInfo);

        return map;
    }

    public JSONObject toJson() {
        JSONObject json = new JSONObject();
        json.put("pCode", pCode);
        json.put("pDate", DateConverter.dateToStr(pDate));
        json.put("fCode", fCode);
        json.put("funds", funds);
        json.put("mCode", mCode);
        json.put("member", member);
        if(pQty == null) {
            pQty = -1.0;
        }
        json.put("pQty", pQty);
        if(pMoney == null) {
            pMoney = -1.0;
        }
        json.put("pMoney", pMoney);
        json.put("pType", pType);
        json.put("pMethod", pMethod);
        json.put("pInfo", pInfo);

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
        Finance other = (Finance) that;
        return (this.getpCode() == null ? other.getpCode() == null : this.getpCode().equals(other.getpCode()))
            && (this.getpDate() == null ? other.getpDate() == null : this.getpDate().equals(other.getpDate()))
            && (this.getfCode() == null ? other.getfCode() == null : this.getfCode().equals(other.getfCode()))
            && (this.getFunds() == null ? other.getFunds() == null : this.getFunds().equals(other.getFunds()))
            && (this.getmCode() == null ? other.getmCode() == null : this.getmCode().equals(other.getmCode()))
            && (this.getMember() == null ? other.getMember() == null : this.getMember().equals(other.getMember()))
            && (this.getpQty() == null ? other.getpQty() == null : this.getpQty().equals(other.getpQty()))
            && (this.getpMoney() == null ? other.getpMoney() == null : this.getpMoney().equals(other.getpMoney()))
            && (this.getpType() == null ? other.getpType() == null : this.getpType().equals(other.getpType()))
            && (this.getpMethod() == null ? other.getpMethod() == null : this.getpMethod().equals(other.getpMethod()))
            && (this.getpInfo() == null ? other.getpInfo() == null : this.getpInfo().equals(other.getpInfo()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getpCode() == null) ? 0 : getpCode().hashCode());
        result = prime * result + ((getpDate() == null) ? 0 : getpDate().hashCode());
        result = prime * result + ((getfCode() == null) ? 0 : getfCode().hashCode());
        result = prime * result + ((getFunds() == null) ? 0 : getFunds().hashCode());
        result = prime * result + ((getmCode() == null) ? 0 : getmCode().hashCode());
        result = prime * result + ((getMember() == null) ? 0 : getMember().hashCode());
        result = prime * result + ((getpQty() == null) ? 0 : getpQty().hashCode());
        result = prime * result + ((getpMoney() == null) ? 0 : getpMoney().hashCode());
        result = prime * result + ((getpType() == null) ? 0 : getpType().hashCode());
        result = prime * result + ((getpMethod() == null) ? 0 : getpMethod().hashCode());
        result = prime * result + ((getpInfo() == null) ? 0 : getpInfo().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", pCode=").append(pCode);
        sb.append(", pDate=").append(pDate);
        sb.append(", fCode=").append(fCode);
        sb.append(", funds=").append(funds);
        sb.append(", mCode=").append(mCode);
        sb.append(", member=").append(member);
        sb.append(", pQty=").append(pQty);
        sb.append(", pMoney=").append(pMoney);
        sb.append(", pType=").append(pType);
        sb.append(", pMethod=").append(pMethod);
        sb.append(", pInfo=").append(pInfo);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}