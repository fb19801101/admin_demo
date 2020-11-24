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
 * 支出信息表
 */
public class Outlay implements Serializable {
    /**
     * 编号
     */
    private String oCode;

    /**
     * 日期
     */
    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    private Date oDate;

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
    private Double oQty;

    /**
     * 金额
     */
    private Double oMoney;

    /**
     * 方式
     */
    private String oMethod;

    /**
     * 备注
     */
    private String oInfo;

    private static final long serialVersionUID = 1L;

    /**
     * 默认构造方法
     */
    public Outlay() {
    }

    /**
     * 部分构造方法
     */
    public Outlay(String oCode, Funds funds) {
        this.oCode = oCode;
        this.funds = funds;
        this.fCode = funds.getfCode();
    }
    public Outlay(String oCode, Member member) {
        this.oCode = oCode;
        this.member = member;
        this.mCode = member.getmCode();
    }
    public Outlay(String oCode, Funds funds, Member member) {
        this.oCode = oCode;
        this.funds = funds;
        this.fCode = funds.getfCode();
        this.member = member;
        this.mCode = member.getmCode();
    }

    /**
     * 完整构造方法
     */
    public Outlay(String oCode, Date oDate, String fCode, String mCode,
                  Double oQty, Double oMoney, String oMethod, String oInfo) {
        this.oCode = oCode;
        this.oDate = oDate;
        this.fCode = fCode;
        this.mCode = mCode;
        this.oQty = oQty;
        this.oMoney = oMoney;
        this.oMethod = oMethod;
        this.oInfo = oInfo;
    }
//    @JsonCreator
//    public Outlay(@JsonProperty("oCode") String oCode, @JsonProperty("oDate") Date oDate,
//                  @JsonProperty("fCode") String fCode, @JsonProperty("mCode") String mCode,
//                  @JsonProperty("oQty") Double oQty, @JsonProperty("oMoney") Double oMoney,
//                  @JsonProperty("oMethod") String oMethod, @JsonProperty("oInfo") String oInfo) {
//        this.oCode = oCode;
//        this.oDate = oDate;
//        this.fCode = fCode;
//        this.mCode = mCode;
//        this.oQty = oQty;
//        this.oMoney = oMoney;
//        this.oMethod = oMethod;
//        this.oInfo = oInfo;
//    }


    public String getoCode() {
        return oCode;
    }

    public void setoCode(String oCode) {
        this.oCode = oCode;
    }

    public Date getoDate() {
        return oDate;
    }

    public void setoDate(Date oDate) {
        this.oDate = oDate;
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

    public Double getoQty() {
        return oQty;
    }

    public void setoQty(Double oQty) {
        this.oQty = oQty;
    }

    public Double getoMoney() {
        return oMoney;
    }

    public void setoMoney(Double oMoney) {
        this.oMoney = oMoney;
    }

    public String getoMethod() {
        return oMethod;
    }

    public void setoMethod(String oMethod) {
        this.oMethod = oMethod;
    }

    public String getoInfo() {
        return oInfo;
    }

    public void setoInfo(String oInfo) {
        this.oInfo = oInfo;
    }

    public void setField(String field, Object value) {
        String _value = value.toString();
        if (field.equals("oCode")) {
            oCode = _value;
        }
        if (field.equals("oDate")) {
            oDate = DateConverter.strToDate(_value);
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
        if (field.equals("oQty")) {
            if(RegexUtil.isNumber(_value)) {
                oQty = Double.parseDouble(_value);
            }
        }
        if (field.equals("oMoney")) {
            if(RegexUtil.isNumber(_value)) {
                oMoney = Double.parseDouble(_value);
            }
        }
        if (field.equals("oMethod")) {
            oMethod = _value;
        }
        if (field.equals("oInfo")) {
            oInfo = _value;
        }
    }

    public void setMap(Map map) {
        if (map.containsKey("oCode")) {
            oCode = map.get("oCode").toString();
        }
        if (map.containsKey("oDate")) {
            oDate = DateConverter.strToDate(map.get("oDate").toString());
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
        if (map.containsKey("oQty")) {
            String value = map.get("oQty").toString();
            if(RegexUtil.isNumber(value)) {
                oQty = Double.parseDouble(value);
            }
        }
        if (map.containsKey("oMoney")) {
            String value = map.get("oMoney").toString();
            if(RegexUtil.isNumber(value)) {
                oMoney = Double.parseDouble(value);
            }
        }
        if (map.containsKey("oMethod")) {
            oMethod = map.get("oMethod").toString();
        }
        if (map.containsKey("oInfo")) {
            oInfo = map.get("oInfo").toString();
        }
    }

    public void setJson(JSONObject json) {
        if (json.containsKey("oCode")) {
            oCode = json.getString("oCode");
        }
        if (json.containsKey("oDate")) {
            oDate = DateConverter.strToDate(json.getString("oDate"));
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
        if (json.containsKey("oQty")) {
            if(RegexUtil.isNumber(json.getString("oQty"))) {
                oQty = json.getDouble("oQty");
            }
        }
        if (json.containsKey("oMoney")) {
            if(RegexUtil.isNumber(json.getString("oMoney"))) {
                oMoney = json.getDouble("oMoney");
            }
        }
        if (json.containsKey("oMethod")) {
            oMethod = json.getString("oMethod");
        }
        if (json.containsKey("oInfo")) {
            oInfo = json.getString("oInfo");
        }
    }

    public Map toMap() {
        Map map = new HashMap<>();
        map.put("oCode", oCode);
        map.put("oDate", DateConverter.dateToStr(oDate));
        map.put("fCode", fCode);
        map.put("funds", funds);
        map.put("mCode", mCode);
        map.put("member", member);
        if(oQty == null) {
            oQty = -1.0;
        }
        map.put("oQty", oQty);
        if(oMoney == null) {
            oMoney = -1.0;
        }
        map.put("oMoney", oMoney);
        map.put("oMethod", oMethod);
        map.put("oInfo", oInfo);

        return map;
    }

    public JSONObject toJson() {
        JSONObject json = new JSONObject();
        json.put("oCode", oCode);
        json.put("oDate", DateConverter.dateToStr(oDate));
        json.put("fCode", fCode);
        json.put("funds", funds);
        json.put("mCode", mCode);
        json.put("member", member);
        if(oQty == null) {
            oQty = -1.0;
        }
        json.put("oQty", oQty);
        if(oMoney == null) {
            oMoney = -1.0;
        }
        json.put("oMoney", oMoney);
        json.put("oMethod", oMethod);
        json.put("oInfo", oInfo);

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
        Outlay other = (Outlay) that;
        return (this.getoCode() == null ? other.getoCode() == null : this.getoCode().equals(other.getoCode()))
            && (this.getoDate() == null ? other.getoDate() == null : this.getoDate().equals(other.getoDate()))
            && (this.getfCode() == null ? other.getfCode() == null : this.getfCode().equals(other.getfCode()))
            && (this.getFunds() == null ? other.getFunds() == null : this.getFunds().equals(other.getFunds()))
            && (this.getmCode() == null ? other.getmCode() == null : this.getmCode().equals(other.getmCode()))
            && (this.getMember() == null ? other.getMember() == null : this.getMember().equals(other.getMember()))
            && (this.getoQty() == null ? other.getoQty() == null : this.getoQty().equals(other.getoQty()))
            && (this.getoMoney() == null ? other.getoMoney() == null : this.getoMoney().equals(other.getoMoney()))
            && (this.getoMethod() == null ? other.getoMethod() == null : this.getoMethod().equals(other.getoMethod()))
            && (this.getoInfo() == null ? other.getoInfo() == null : this.getoInfo().equals(other.getoInfo()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getoCode() == null) ? 0 : getoCode().hashCode());
        result = prime * result + ((getoDate() == null) ? 0 : getoDate().hashCode());
        result = prime * result + ((getfCode() == null) ? 0 : getfCode().hashCode());
        result = prime * result + ((getFunds() == null) ? 0 : getFunds().hashCode());
        result = prime * result + ((getmCode() == null) ? 0 : getmCode().hashCode());
        result = prime * result + ((getMember() == null) ? 0 : getMember().hashCode());
        result = prime * result + ((getoQty() == null) ? 0 : getoQty().hashCode());
        result = prime * result + ((getoMoney() == null) ? 0 : getoMoney().hashCode());
        result = prime * result + ((getoMethod() == null) ? 0 : getoMethod().hashCode());
        result = prime * result + ((getoInfo() == null) ? 0 : getoInfo().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", oCode=").append(oCode);
        sb.append(", oDate=").append(oDate);
        sb.append(", fCode=").append(fCode);
        sb.append(", funds=").append(funds);
        sb.append(", mCode=").append(mCode);
        sb.append(", member=").append(member);
        sb.append(", oQty=").append(oQty);
        sb.append(", oMoney=").append(oMoney);
        sb.append(", oMethod=").append(oMethod);
        sb.append(", oInfo=").append(oInfo);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}