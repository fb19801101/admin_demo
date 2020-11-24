package com.model;

import com.alibaba.fastjson.JSONObject;
import com.dateutil.DateConverter;
import com.fasterxml.jackson.annotation.JsonFormat;

import java.io.Serializable;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * @author 
 * 成员信息表
 */
public class Member implements Serializable {
    /**
     * 编号
     */
    private String mCode;

    /**
     * 姓名
     */
    private String mName;

    /**
     * 性别
     */
    private String mSex;

    /**
     * 生日
     */
    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    private Date mBirth;

    /**
     * 身份
     */
    private String mIdentity;

    /**
     * 关系
     */
    private String mRelation;

    /**
     * 籍贯
     */
    private String mOrigin;

    /**
     * 学历
     */
    private String mEducation;

    /**
     * 院校
     */
    private String mCollege;

    /**
     * 电话
     */
    private String mTel;

    /**
     * 备注
     */
    private String mInfo;

    private static final long serialVersionUID = 1L;

    /**
     * 默认构造方法
     */
    public Member() {
    }

    /**
     * 完整构造方法
     */
    public Member(String mCode, String mName, String mSex, Date mBirth, String mIdentity, String mRelation,
                  String mOrigin, String mEducation, String mCollege, String mTel, String mInfo) {
        this.mCode = mCode;
        this.mName = mName;
        this.mSex = mSex;
        this.mBirth = mBirth;
        this.mIdentity = mIdentity;
        this.mRelation = mRelation;
        this.mOrigin = mOrigin;
        this.mEducation = mEducation;
        this.mCollege = mCollege;
        this.mTel = mTel;
        this.mInfo = mInfo;
    }

//    @JsonCreator
//    public Member(@JsonProperty("mCode") String mCode, @JsonProperty("mName") String mName, @JsonProperty("mSex") String mSex,
//                  @JsonProperty("mBirth") Date mBirth, @JsonProperty("mIdentity") String mIdentity, @JsonProperty("mRelation") String mRelation,
//                  @JsonProperty("mOrigin") String mOrigin, @JsonProperty("mEducation") String mEducation, @JsonProperty("mCollege") String mCollege,
//                  @JsonProperty("mTel") String mTel, @JsonProperty("mInfo") String mInfo) {
//        this.mCode = mCode;
//        this.mName = mName;
//        this.mSex = mSex;
//        this.mBirth = mBirth;
//        this.mIdentity = mIdentity;
//        this.mRelation = mRelation;
//        this.mOrigin = mOrigin;
//        this.mEducation = mEducation;
//        this.mCollege = mCollege;
//        this.mTel = mTel;
//        this.mInfo = mInfo;
//    }

    public String getmCode() {
        return mCode;
    }

    public void setmCode(String mCode) {
        this.mCode = mCode;
    }

    public String getmName() {
        return mName;
    }

    public void setmName(String mName) {
        this.mName = mName;
    }

    public String getmSex() {
        return mSex;
    }

    public void setmSex(String mSex) {
        this.mSex = mSex;
    }

    public Date getmBirth() {
        return mBirth;
    }

    public void setmBirth(Date mBirth) {
        this.mBirth = mBirth;
    }

    public String getmIdentity() {
        return mIdentity;
    }

    public void setmIdentity(String mIdentity) {
        this.mIdentity = mIdentity;
    }

    public String getmRelation() {
        return mRelation;
    }

    public void setmRelation(String mRelation) {
        this.mRelation = mRelation;
    }

    public String getmOrigin() {
        return mOrigin;
    }

    public void setmOrigin(String mOrigin) {
        this.mOrigin = mOrigin;
    }

    public String getmEducation() {
        return mEducation;
    }

    public void setmEducation(String mEducation) {
        this.mEducation = mEducation;
    }

    public String getmCollege() {
        return mCollege;
    }

    public void setmCollege(String mCollege) {
        this.mCollege = mCollege;
    }

    public String getmTel() {
        return mTel;
    }

    public void setmTel(String mTel) {
        this.mTel = mTel;
    }

    public String getmInfo() {
        return mInfo;
    }

    public void setmInfo(String mInfo) {
        this.mInfo = mInfo;
    }

    public void setField(String field, Object value) {
        String _value = value.toString();
        if (field.equals("mCode")) {
            mCode = _value;
        }
        if (field.equals("mName")) {
            mName = _value;
        }
        if (field.equals("mSex")) {
            mSex = _value;
        }
        if (field.equals("mBirth")) {
            mBirth = DateConverter.strToDate(_value);
        }
        if (field.equals("mIdentity")) {
            mIdentity = _value;
        }
        if (field.equals("mRelation")) {
            mRelation = _value;
        }
        if (field.equals("mOrigin")) {
            mOrigin = _value;
        }
        if (field.equals("mEducation")) {
            mEducation = _value;
        }
        if (field.equals("mCollege")) {
            mCollege = _value;
        }
        if (field.equals("mTel")) {
            mTel = _value;
        }
        if (field.equals("mInfo")) {
            mInfo = _value;
        }
    }

    public void setMap(Map map) {
        if (map.containsKey("mCode")) {
            mCode = map.get("mCode").toString();
        }
        if (map.containsKey("mName")) {
            mName = map.get("mName").toString();
        }
        if (map.containsKey("mSex")) {
            mSex = map.get("mSex").toString();
        }
        if (map.containsKey("mBirth")) {
            mBirth = DateConverter.strToDate(map.get("mBirth").toString());
        }
        if (map.containsKey("mIdentity")) {
            mIdentity = map.get("mIdentity").toString();
        }
        if (map.containsKey("mRelation")) {
            mRelation = map.get("mRelation").toString();
        }
        if (map.containsKey("mOrigin")) {
            mOrigin = map.get("mOrigin").toString();
        }
        if (map.containsKey("mEducation")) {
            mEducation = map.get("mEducation").toString();
        }
        if (map.containsKey("mCollege")) {
            mCollege = map.get("mCollege").toString();
        }
        if (map.containsKey("mTel")) {
            mTel = map.get("mTel").toString();
        }
        if (map.containsKey("mInfo")) {
            mInfo = map.get("mInfo").toString();
        }
    }

    public void setJson(JSONObject json) {
        if (json.containsKey("mCode")) {
            mCode = json.getString("mCode");
        }
        if (json.containsKey("mName")) {
            mName = json.getString("mName");
        }
        if (json.containsKey("mSex")) {
            mSex = json.getString("mSex");
        }
        if (json.containsKey("mBirth")) {
            mBirth = DateConverter.strToDate(json.getString("mBirth"));
        }
        if (json.containsKey("mIdentity")) {
            mIdentity = json.getString("mIdentity");
        }
        if (json.containsKey("mRelation")) {
            mRelation = json.getString("mRelation");
        }
        if (json.containsKey("mOrigin")) {
            mOrigin = json.getString("mOrigin");
        }
        if (json.containsKey("mEducation")) {
            mEducation = json.getString("mEducation");
        }
        if (json.containsKey("mCollege")) {
            mCollege = json.getString("mCollege");
        }
        if (json.containsKey("mTel")) {
            mTel = json.getString("mTel");
        }
        if (json.containsKey("mInfo")) {
            mInfo = json.getString("mInfo");
        }
    }

    public Map toMap() {
        Map map = new HashMap<>();
        map.put("mCode", mCode);
        map.put("mName", mName);
        map.put("mSex", mSex);
        map.put("mBirth", DateConverter.dateToStr(mBirth));
        map.put("mIdentity", mIdentity);
        map.put("mRelation", mRelation);
        map.put("mOrigin", mOrigin);
        map.put("mEducation", mEducation);
        map.put("mCollege", mCollege);
        map.put("mTel", mTel);
        map.put("mInfo", mInfo);

        return map;
    }

    public JSONObject toJson() {
        JSONObject json = new JSONObject();
        json.put("mCode", mCode);
        json.put("mName", mName);
        json.put("mSex", mSex);
        json.put("mBirth", DateConverter.dateToStr(mBirth));
        json.put("mIdentity", mIdentity);
        json.put("mRelation", mRelation);
        json.put("mOrigin", mOrigin);
        json.put("mEducation", mEducation);
        json.put("mCollege", mCollege);
        json.put("mTel", mTel);
        json.put("mInfo", mInfo);

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
        Member other = (Member) that;
        return (this.getmCode() == null ? other.getmCode() == null : this.getmCode().equals(other.getmCode()))
            && (this.getmName() == null ? other.getmName() == null : this.getmName().equals(other.getmName()))
            && (this.getmSex() == null ? other.getmSex() == null : this.getmSex().equals(other.getmSex()))
            && (this.getmBirth() == null ? other.getmBirth() == null : this.getmBirth().equals(other.getmBirth()))
            && (this.getmIdentity() == null ? other.getmIdentity() == null : this.getmIdentity().equals(other.getmIdentity()))
            && (this.getmRelation() == null ? other.getmRelation() == null : this.getmRelation().equals(other.getmRelation()))
            && (this.getmOrigin() == null ? other.getmOrigin() == null : this.getmOrigin().equals(other.getmOrigin()))
            && (this.getmEducation() == null ? other.getmEducation() == null : this.getmEducation().equals(other.getmEducation()))
            && (this.getmCollege() == null ? other.getmCollege() == null : this.getmCollege().equals(other.getmCollege()))
            && (this.getmTel() == null ? other.getmTel() == null : this.getmTel().equals(other.getmTel()))
            && (this.getmInfo() == null ? other.getmInfo() == null : this.getmInfo().equals(other.getmInfo()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getmCode() == null) ? 0 : getmCode().hashCode());
        result = prime * result + ((getmName() == null) ? 0 : getmName().hashCode());
        result = prime * result + ((getmSex() == null) ? 0 : getmSex().hashCode());
        result = prime * result + ((getmBirth() == null) ? 0 : getmBirth().hashCode());
        result = prime * result + ((getmIdentity() == null) ? 0 : getmIdentity().hashCode());
        result = prime * result + ((getmRelation() == null) ? 0 : getmRelation().hashCode());
        result = prime * result + ((getmOrigin() == null) ? 0 : getmOrigin().hashCode());
        result = prime * result + ((getmEducation() == null) ? 0 : getmEducation().hashCode());
        result = prime * result + ((getmCollege() == null) ? 0 : getmCollege().hashCode());
        result = prime * result + ((getmTel() == null) ? 0 : getmTel().hashCode());
        result = prime * result + ((getmInfo() == null) ? 0 : getmInfo().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", mCode=").append(mCode);
        sb.append(", mName=").append(mName);
        sb.append(", mSex=").append(mSex);
        sb.append(", mBirth=").append(mBirth);
        sb.append(", mIdentity=").append(mIdentity);
        sb.append(", mRelation=").append(mRelation);
        sb.append(", mOrigin=").append(mOrigin);
        sb.append(", mEducation=").append(mEducation);
        sb.append(", mCollege=").append(mCollege);
        sb.append(", mTel=").append(mTel);
        sb.append(", mInfo=").append(mInfo);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}