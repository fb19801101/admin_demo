package com.model;

import com.alibaba.fastjson.JSONObject;
import com.dateutil.RegexUtil;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/**
 * @author 
 * 款项信息表
 */
public class Funds implements Serializable {
    /**
     * 编号
     */
    private String fCode;

    /**
     * 名称
     */
    private String fName;

    /**
     * 类别
     */
    private String fCategory;

    /**
     * 商家
     */
    private String fBusiness;

    /**
     * 单位
     */
    private String fUnit;

    /**
     * 单价
     */
    private Double fPrice;

    /**
     * 备注
     */
    private String fInfo;

    private static final long serialVersionUID = 1L;

    /**
     * 默认构造方法
     */
    public Funds() {
    }

    /**
     * 部分构造方法
     */
    public Funds(String fCode, String fName, String fCategory, String fBusiness,
                 String fUnit, Double fPrice, String fInfo) {
        this.fCode = fCode;
        this.fName = fName;
        this.fCategory = fCategory;
        this.fBusiness = fBusiness;
        this.fUnit = fUnit;
        this.fPrice = fPrice;
        this.fInfo = fInfo;
    }
//    @JsonCreator
//    public Funds(@JsonProperty("fCode") String fCode, @JsonProperty("fName") String fName,
//                 @JsonProperty("fCategory") String fCategory, @JsonProperty("fBusiness") String fBusiness,
//                 @JsonProperty("fUnit") String fUnit, @JsonProperty("fPrice") Double fPrice,
//                 @JsonProperty("fInfo") String fInfo) {
//        this.fCode = fCode;
//        this.fName = fName;
//        this.fCategory = fCategory;
//        this.fBusiness = fBusiness;
//        this.fUnit = fUnit;
//        this.fPrice = fPrice;
//        this.fInfo = fInfo;
//    }
    
    public String getfCode() {
        return fCode;
    }

    public void setfCode(String fCode) {
        this.fCode = fCode;
    }

    public String getfName() {
        return fName;
    }

    public void setfName(String fName) {
        this.fName = fName;
    }

    public String getfCategory() {
        return fCategory;
    }

    public void setfCategory(String fCategory) {
        this.fCategory = fCategory;
    }

    public String getfBusiness() {
        return fBusiness;
    }

    public void setfBusiness(String fBusiness) {
        this.fBusiness = fBusiness;
    }

    public String getfUnit() {
        return fUnit;
    }

    public void setfUnit(String fUnit) {
        this.fUnit = fUnit;
    }

    public Double getfPrice() {
        return fPrice;
    }

    public void setfPrice(Double fPrice) {
        this.fPrice = fPrice;
    }

    public String getfInfo() {
        return fInfo;
    }

    public void setfInfo(String fInfo) {
        this.fInfo = fInfo;
    }

    public void setField(String field, Object value) {
        String _value = value.toString();
        if (field.equals("fCode")) {
            fCode = _value;
        }
        if (field.equals("fName")) {
            fName = _value;
        }
        if (field.equals("fCategory")) {
            fCategory = _value;
        }
        if (field.equals("fBusiness")) {
            fBusiness = _value;
        }
        if (field.equals("fUnit")) {
            fUnit = _value;
        }
        if (field.equals("fPrice")) {
            if(RegexUtil.isNumber(_value)) {
                fPrice = Double.parseDouble(_value);
            }
        }
        if (field.equals("fInfo")) {
            fInfo = _value;
        }
    }

    public void setMap(Map map) {
        if (map.containsKey("fCode")) {
            fCode = map.get("fCode").toString();
        }
        if (map.containsKey("fName")) {
            fName = map.get("fName").toString();
        }
        if (map.containsKey("fCategory")) {
            fCategory = map.get("fCategory").toString();
        }
        if (map.containsKey("fBusiness")) {
            fBusiness = map.get("fBusiness").toString();
        }
        if (map.containsKey("fUnit")) {
            fUnit = map.get("fUnit").toString();
        }
        if (map.containsKey("fPrice")) {
            String value = map.get("fPrice").toString();
            if(RegexUtil.isNumber(value)) {
                fPrice = Double.parseDouble(value);
            }
        }
        if (map.containsKey("fInfo")) {
            fInfo = map.get("fInfo").toString();
        }
    }

    public void setJson(JSONObject json) {
        if (json.containsKey("fCode")) {
            fCode = json.getString("fCode");
        }
        if (json.containsKey("fName")) {
            fName = json.getString("fName");
        }
        if (json.containsKey("fCategory")) {
            fCategory = json.getString("fCategory");
        }
        if (json.containsKey("fBusiness")) {
            fBusiness = json.getString("fBusiness");
        }
        if (json.containsKey("fUnit")) {
            fUnit = json.getString("fUnit");
        }
        if (json.containsKey("fPrice")) {
            if(RegexUtil.isNumber(json.getString("fPrice"))) {
                fPrice = json.getDouble("fPrice");
            }
        }
        if (json.containsKey("fInfo")) {
            fInfo = json.getString("fInfo");
        }
    }

    public Map toMap() {
        Map map = new HashMap<>();
        map.put("fCode", fCode);
        map.put("fName", fName);
        map.put("fCategory", fCategory);
        map.put("fBusiness", fBusiness);
        map.put("fUnit", fUnit);
        if(fPrice == null) {
            fPrice = -1.0;
        }
        map.put("fPrice", fPrice);
        map.put("fInfo", fInfo);

        return map;
    }

    public JSONObject toJson() {
        JSONObject json = new JSONObject();
        json.put("fCode", fCode);
        json.put("fName", fName);
        json.put("fCategory", fCategory);
        json.put("fBusiness", fBusiness);
        json.put("fUnit", fUnit);
        if(fPrice == null) {
            fPrice = -1.0;
        }
        json.put("fPrice", fPrice);
        json.put("fInfo", fInfo);

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
        Funds other = (Funds) that;
        return (this.getfCode() == null ? other.getfCode() == null : this.getfCode().equals(other.getfCode()))
            && (this.getfName() == null ? other.getfName() == null : this.getfName().equals(other.getfName()))
            && (this.getfCategory() == null ? other.getfCategory() == null : this.getfCategory().equals(other.getfCategory()))
            && (this.getfBusiness() == null ? other.getfBusiness() == null : this.getfBusiness().equals(other.getfBusiness()))
            && (this.getfUnit() == null ? other.getfUnit() == null : this.getfUnit().equals(other.getfUnit()))
            && (this.getfPrice() == null ? other.getfPrice() == null : this.getfPrice().equals(other.getfPrice()))
            && (this.getfInfo() == null ? other.getfInfo() == null : this.getfInfo().equals(other.getfInfo()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getfCode() == null) ? 0 : getfCode().hashCode());
        result = prime * result + ((getfName() == null) ? 0 : getfName().hashCode());
        result = prime * result + ((getfCategory() == null) ? 0 : getfCategory().hashCode());
        result = prime * result + ((getfBusiness() == null) ? 0 : getfBusiness().hashCode());
        result = prime * result + ((getfUnit() == null) ? 0 : getfUnit().hashCode());
        result = prime * result + ((getfPrice() == null) ? 0 : getfPrice().hashCode());
        result = prime * result + ((getfInfo() == null) ? 0 : getfInfo().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", fCode=").append(fCode);
        sb.append(", fName=").append(fName);
        sb.append(", fCategory=").append(fCategory);
        sb.append(", fBusiness=").append(fBusiness);
        sb.append(", fUnit=").append(fUnit);
        sb.append(", fPrice=").append(fPrice);
        sb.append(", fInfo=").append(fInfo);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}