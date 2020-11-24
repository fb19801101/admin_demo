package com.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class MemberExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    private Integer limit;

    private Long offset;

    public MemberExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    public void setLimit(Integer limit) {
        this.limit = limit;
    }

    public Integer getLimit() {
        return limit;
    }

    public void setOffset(Long offset) {
        this.offset = offset;
    }

    public Long getOffset() {
        return offset;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andMCodeIsNull() {
            addCriterion("m_code is null");
            return (Criteria) this;
        }

        public Criteria andMCodeIsNotNull() {
            addCriterion("m_code is not null");
            return (Criteria) this;
        }

        public Criteria andMCodeEqualTo(String value) {
            addCriterion("m_code =", value, "mCode");
            return (Criteria) this;
        }

        public Criteria andMCodeNotEqualTo(String value) {
            addCriterion("m_code <>", value, "mCode");
            return (Criteria) this;
        }

        public Criteria andMCodeGreaterThan(String value) {
            addCriterion("m_code >", value, "mCode");
            return (Criteria) this;
        }

        public Criteria andMCodeGreaterThanOrEqualTo(String value) {
            addCriterion("m_code >=", value, "mCode");
            return (Criteria) this;
        }

        public Criteria andMCodeLessThan(String value) {
            addCriterion("m_code <", value, "mCode");
            return (Criteria) this;
        }

        public Criteria andMCodeLessThanOrEqualTo(String value) {
            addCriterion("m_code <=", value, "mCode");
            return (Criteria) this;
        }

        public Criteria andMCodeLike(String value) {
            addCriterion("m_code like", value, "mCode");
            return (Criteria) this;
        }

        public Criteria andMCodeNotLike(String value) {
            addCriterion("m_code not like", value, "mCode");
            return (Criteria) this;
        }

        public Criteria andMCodeIn(List<String> values) {
            addCriterion("m_code in", values, "mCode");
            return (Criteria) this;
        }

        public Criteria andMCodeNotIn(List<String> values) {
            addCriterion("m_code not in", values, "mCode");
            return (Criteria) this;
        }

        public Criteria andMCodeBetween(String value1, String value2) {
            addCriterion("m_code between", value1, value2, "mCode");
            return (Criteria) this;
        }

        public Criteria andMCodeNotBetween(String value1, String value2) {
            addCriterion("m_code not between", value1, value2, "mCode");
            return (Criteria) this;
        }

        public Criteria andMNameIsNull() {
            addCriterion("m_name is null");
            return (Criteria) this;
        }

        public Criteria andMNameIsNotNull() {
            addCriterion("m_name is not null");
            return (Criteria) this;
        }

        public Criteria andMNameEqualTo(String value) {
            addCriterion("m_name =", value, "mName");
            return (Criteria) this;
        }

        public Criteria andMNameNotEqualTo(String value) {
            addCriterion("m_name <>", value, "mName");
            return (Criteria) this;
        }

        public Criteria andMNameGreaterThan(String value) {
            addCriterion("m_name >", value, "mName");
            return (Criteria) this;
        }

        public Criteria andMNameGreaterThanOrEqualTo(String value) {
            addCriterion("m_name >=", value, "mName");
            return (Criteria) this;
        }

        public Criteria andMNameLessThan(String value) {
            addCriterion("m_name <", value, "mName");
            return (Criteria) this;
        }

        public Criteria andMNameLessThanOrEqualTo(String value) {
            addCriterion("m_name <=", value, "mName");
            return (Criteria) this;
        }

        public Criteria andMNameLike(String value) {
            addCriterion("m_name like", value, "mName");
            return (Criteria) this;
        }

        public Criteria andMNameNotLike(String value) {
            addCriterion("m_name not like", value, "mName");
            return (Criteria) this;
        }

        public Criteria andMNameIn(List<String> values) {
            addCriterion("m_name in", values, "mName");
            return (Criteria) this;
        }

        public Criteria andMNameNotIn(List<String> values) {
            addCriterion("m_name not in", values, "mName");
            return (Criteria) this;
        }

        public Criteria andMNameBetween(String value1, String value2) {
            addCriterion("m_name between", value1, value2, "mName");
            return (Criteria) this;
        }

        public Criteria andMNameNotBetween(String value1, String value2) {
            addCriterion("m_name not between", value1, value2, "mName");
            return (Criteria) this;
        }

        public Criteria andMSexIsNull() {
            addCriterion("m_sex is null");
            return (Criteria) this;
        }

        public Criteria andMSexIsNotNull() {
            addCriterion("m_sex is not null");
            return (Criteria) this;
        }

        public Criteria andMSexEqualTo(String value) {
            addCriterion("m_sex =", value, "mSex");
            return (Criteria) this;
        }

        public Criteria andMSexNotEqualTo(String value) {
            addCriterion("m_sex <>", value, "mSex");
            return (Criteria) this;
        }

        public Criteria andMSexGreaterThan(String value) {
            addCriterion("m_sex >", value, "mSex");
            return (Criteria) this;
        }

        public Criteria andMSexGreaterThanOrEqualTo(String value) {
            addCriterion("m_sex >=", value, "mSex");
            return (Criteria) this;
        }

        public Criteria andMSexLessThan(String value) {
            addCriterion("m_sex <", value, "mSex");
            return (Criteria) this;
        }

        public Criteria andMSexLessThanOrEqualTo(String value) {
            addCriterion("m_sex <=", value, "mSex");
            return (Criteria) this;
        }

        public Criteria andMSexLike(String value) {
            addCriterion("m_sex like", value, "mSex");
            return (Criteria) this;
        }

        public Criteria andMSexNotLike(String value) {
            addCriterion("m_sex not like", value, "mSex");
            return (Criteria) this;
        }

        public Criteria andMSexIn(List<String> values) {
            addCriterion("m_sex in", values, "mSex");
            return (Criteria) this;
        }

        public Criteria andMSexNotIn(List<String> values) {
            addCriterion("m_sex not in", values, "mSex");
            return (Criteria) this;
        }

        public Criteria andMSexBetween(String value1, String value2) {
            addCriterion("m_sex between", value1, value2, "mSex");
            return (Criteria) this;
        }

        public Criteria andMSexNotBetween(String value1, String value2) {
            addCriterion("m_sex not between", value1, value2, "mSex");
            return (Criteria) this;
        }

        public Criteria andMBirthIsNull() {
            addCriterion("m_birth is null");
            return (Criteria) this;
        }

        public Criteria andMBirthIsNotNull() {
            addCriterion("m_birth is not null");
            return (Criteria) this;
        }

        public Criteria andMBirthEqualTo(Date value) {
            addCriterion("m_birth =", value, "mBirth");
            return (Criteria) this;
        }

        public Criteria andMBirthNotEqualTo(Date value) {
            addCriterion("m_birth <>", value, "mBirth");
            return (Criteria) this;
        }

        public Criteria andMBirthGreaterThan(Date value) {
            addCriterion("m_birth >", value, "mBirth");
            return (Criteria) this;
        }

        public Criteria andMBirthGreaterThanOrEqualTo(Date value) {
            addCriterion("m_birth >=", value, "mBirth");
            return (Criteria) this;
        }

        public Criteria andMBirthLessThan(Date value) {
            addCriterion("m_birth <", value, "mBirth");
            return (Criteria) this;
        }

        public Criteria andMBirthLessThanOrEqualTo(Date value) {
            addCriterion("m_birth <=", value, "mBirth");
            return (Criteria) this;
        }

        public Criteria andMBirthIn(List<Date> values) {
            addCriterion("m_birth in", values, "mBirth");
            return (Criteria) this;
        }

        public Criteria andMBirthNotIn(List<Date> values) {
            addCriterion("m_birth not in", values, "mBirth");
            return (Criteria) this;
        }

        public Criteria andMBirthBetween(Date value1, Date value2) {
            addCriterion("m_birth between", value1, value2, "mBirth");
            return (Criteria) this;
        }

        public Criteria andMBirthNotBetween(Date value1, Date value2) {
            addCriterion("m_birth not between", value1, value2, "mBirth");
            return (Criteria) this;
        }

        public Criteria andMIdentityIsNull() {
            addCriterion("m_identity is null");
            return (Criteria) this;
        }

        public Criteria andMIdentityIsNotNull() {
            addCriterion("m_identity is not null");
            return (Criteria) this;
        }

        public Criteria andMIdentityEqualTo(String value) {
            addCriterion("m_identity =", value, "mIdentity");
            return (Criteria) this;
        }

        public Criteria andMIdentityNotEqualTo(String value) {
            addCriterion("m_identity <>", value, "mIdentity");
            return (Criteria) this;
        }

        public Criteria andMIdentityGreaterThan(String value) {
            addCriterion("m_identity >", value, "mIdentity");
            return (Criteria) this;
        }

        public Criteria andMIdentityGreaterThanOrEqualTo(String value) {
            addCriterion("m_identity >=", value, "mIdentity");
            return (Criteria) this;
        }

        public Criteria andMIdentityLessThan(String value) {
            addCriterion("m_identity <", value, "mIdentity");
            return (Criteria) this;
        }

        public Criteria andMIdentityLessThanOrEqualTo(String value) {
            addCriterion("m_identity <=", value, "mIdentity");
            return (Criteria) this;
        }

        public Criteria andMIdentityLike(String value) {
            addCriterion("m_identity like", value, "mIdentity");
            return (Criteria) this;
        }

        public Criteria andMIdentityNotLike(String value) {
            addCriterion("m_identity not like", value, "mIdentity");
            return (Criteria) this;
        }

        public Criteria andMIdentityIn(List<String> values) {
            addCriterion("m_identity in", values, "mIdentity");
            return (Criteria) this;
        }

        public Criteria andMIdentityNotIn(List<String> values) {
            addCriterion("m_identity not in", values, "mIdentity");
            return (Criteria) this;
        }

        public Criteria andMIdentityBetween(String value1, String value2) {
            addCriterion("m_identity between", value1, value2, "mIdentity");
            return (Criteria) this;
        }

        public Criteria andMIdentityNotBetween(String value1, String value2) {
            addCriterion("m_identity not between", value1, value2, "mIdentity");
            return (Criteria) this;
        }

        public Criteria andMRelationIsNull() {
            addCriterion("m_relation is null");
            return (Criteria) this;
        }

        public Criteria andMRelationIsNotNull() {
            addCriterion("m_relation is not null");
            return (Criteria) this;
        }

        public Criteria andMRelationEqualTo(String value) {
            addCriterion("m_relation =", value, "mRelation");
            return (Criteria) this;
        }

        public Criteria andMRelationNotEqualTo(String value) {
            addCriterion("m_relation <>", value, "mRelation");
            return (Criteria) this;
        }

        public Criteria andMRelationGreaterThan(String value) {
            addCriterion("m_relation >", value, "mRelation");
            return (Criteria) this;
        }

        public Criteria andMRelationGreaterThanOrEqualTo(String value) {
            addCriterion("m_relation >=", value, "mRelation");
            return (Criteria) this;
        }

        public Criteria andMRelationLessThan(String value) {
            addCriterion("m_relation <", value, "mRelation");
            return (Criteria) this;
        }

        public Criteria andMRelationLessThanOrEqualTo(String value) {
            addCriterion("m_relation <=", value, "mRelation");
            return (Criteria) this;
        }

        public Criteria andMRelationLike(String value) {
            addCriterion("m_relation like", value, "mRelation");
            return (Criteria) this;
        }

        public Criteria andMRelationNotLike(String value) {
            addCriterion("m_relation not like", value, "mRelation");
            return (Criteria) this;
        }

        public Criteria andMRelationIn(List<String> values) {
            addCriterion("m_relation in", values, "mRelation");
            return (Criteria) this;
        }

        public Criteria andMRelationNotIn(List<String> values) {
            addCriterion("m_relation not in", values, "mRelation");
            return (Criteria) this;
        }

        public Criteria andMRelationBetween(String value1, String value2) {
            addCriterion("m_relation between", value1, value2, "mRelation");
            return (Criteria) this;
        }

        public Criteria andMRelationNotBetween(String value1, String value2) {
            addCriterion("m_relation not between", value1, value2, "mRelation");
            return (Criteria) this;
        }

        public Criteria andMOriginIsNull() {
            addCriterion("m_origin is null");
            return (Criteria) this;
        }

        public Criteria andMOriginIsNotNull() {
            addCriterion("m_origin is not null");
            return (Criteria) this;
        }

        public Criteria andMOriginEqualTo(String value) {
            addCriterion("m_origin =", value, "mOrigin");
            return (Criteria) this;
        }

        public Criteria andMOriginNotEqualTo(String value) {
            addCriterion("m_origin <>", value, "mOrigin");
            return (Criteria) this;
        }

        public Criteria andMOriginGreaterThan(String value) {
            addCriterion("m_origin >", value, "mOrigin");
            return (Criteria) this;
        }

        public Criteria andMOriginGreaterThanOrEqualTo(String value) {
            addCriterion("m_origin >=", value, "mOrigin");
            return (Criteria) this;
        }

        public Criteria andMOriginLessThan(String value) {
            addCriterion("m_origin <", value, "mOrigin");
            return (Criteria) this;
        }

        public Criteria andMOriginLessThanOrEqualTo(String value) {
            addCriterion("m_origin <=", value, "mOrigin");
            return (Criteria) this;
        }

        public Criteria andMOriginLike(String value) {
            addCriterion("m_origin like", value, "mOrigin");
            return (Criteria) this;
        }

        public Criteria andMOriginNotLike(String value) {
            addCriterion("m_origin not like", value, "mOrigin");
            return (Criteria) this;
        }

        public Criteria andMOriginIn(List<String> values) {
            addCriterion("m_origin in", values, "mOrigin");
            return (Criteria) this;
        }

        public Criteria andMOriginNotIn(List<String> values) {
            addCriterion("m_origin not in", values, "mOrigin");
            return (Criteria) this;
        }

        public Criteria andMOriginBetween(String value1, String value2) {
            addCriterion("m_origin between", value1, value2, "mOrigin");
            return (Criteria) this;
        }

        public Criteria andMOriginNotBetween(String value1, String value2) {
            addCriterion("m_origin not between", value1, value2, "mOrigin");
            return (Criteria) this;
        }

        public Criteria andMEducationIsNull() {
            addCriterion("m_education is null");
            return (Criteria) this;
        }

        public Criteria andMEducationIsNotNull() {
            addCriterion("m_education is not null");
            return (Criteria) this;
        }

        public Criteria andMEducationEqualTo(String value) {
            addCriterion("m_education =", value, "mEducation");
            return (Criteria) this;
        }

        public Criteria andMEducationNotEqualTo(String value) {
            addCriterion("m_education <>", value, "mEducation");
            return (Criteria) this;
        }

        public Criteria andMEducationGreaterThan(String value) {
            addCriterion("m_education >", value, "mEducation");
            return (Criteria) this;
        }

        public Criteria andMEducationGreaterThanOrEqualTo(String value) {
            addCriterion("m_education >=", value, "mEducation");
            return (Criteria) this;
        }

        public Criteria andMEducationLessThan(String value) {
            addCriterion("m_education <", value, "mEducation");
            return (Criteria) this;
        }

        public Criteria andMEducationLessThanOrEqualTo(String value) {
            addCriterion("m_education <=", value, "mEducation");
            return (Criteria) this;
        }

        public Criteria andMEducationLike(String value) {
            addCriterion("m_education like", value, "mEducation");
            return (Criteria) this;
        }

        public Criteria andMEducationNotLike(String value) {
            addCriterion("m_education not like", value, "mEducation");
            return (Criteria) this;
        }

        public Criteria andMEducationIn(List<String> values) {
            addCriterion("m_education in", values, "mEducation");
            return (Criteria) this;
        }

        public Criteria andMEducationNotIn(List<String> values) {
            addCriterion("m_education not in", values, "mEducation");
            return (Criteria) this;
        }

        public Criteria andMEducationBetween(String value1, String value2) {
            addCriterion("m_education between", value1, value2, "mEducation");
            return (Criteria) this;
        }

        public Criteria andMEducationNotBetween(String value1, String value2) {
            addCriterion("m_education not between", value1, value2, "mEducation");
            return (Criteria) this;
        }

        public Criteria andMCollegeIsNull() {
            addCriterion("m_college is null");
            return (Criteria) this;
        }

        public Criteria andMCollegeIsNotNull() {
            addCriterion("m_college is not null");
            return (Criteria) this;
        }

        public Criteria andMCollegeEqualTo(String value) {
            addCriterion("m_college =", value, "mCollege");
            return (Criteria) this;
        }

        public Criteria andMCollegeNotEqualTo(String value) {
            addCriterion("m_college <>", value, "mCollege");
            return (Criteria) this;
        }

        public Criteria andMCollegeGreaterThan(String value) {
            addCriterion("m_college >", value, "mCollege");
            return (Criteria) this;
        }

        public Criteria andMCollegeGreaterThanOrEqualTo(String value) {
            addCriterion("m_college >=", value, "mCollege");
            return (Criteria) this;
        }

        public Criteria andMCollegeLessThan(String value) {
            addCriterion("m_college <", value, "mCollege");
            return (Criteria) this;
        }

        public Criteria andMCollegeLessThanOrEqualTo(String value) {
            addCriterion("m_college <=", value, "mCollege");
            return (Criteria) this;
        }

        public Criteria andMCollegeLike(String value) {
            addCriterion("m_college like", value, "mCollege");
            return (Criteria) this;
        }

        public Criteria andMCollegeNotLike(String value) {
            addCriterion("m_college not like", value, "mCollege");
            return (Criteria) this;
        }

        public Criteria andMCollegeIn(List<String> values) {
            addCriterion("m_college in", values, "mCollege");
            return (Criteria) this;
        }

        public Criteria andMCollegeNotIn(List<String> values) {
            addCriterion("m_college not in", values, "mCollege");
            return (Criteria) this;
        }

        public Criteria andMCollegeBetween(String value1, String value2) {
            addCriterion("m_college between", value1, value2, "mCollege");
            return (Criteria) this;
        }

        public Criteria andMCollegeNotBetween(String value1, String value2) {
            addCriterion("m_college not between", value1, value2, "mCollege");
            return (Criteria) this;
        }

        public Criteria andMTelIsNull() {
            addCriterion("m_tel is null");
            return (Criteria) this;
        }

        public Criteria andMTelIsNotNull() {
            addCriterion("m_tel is not null");
            return (Criteria) this;
        }

        public Criteria andMTelEqualTo(String value) {
            addCriterion("m_tel =", value, "mTel");
            return (Criteria) this;
        }

        public Criteria andMTelNotEqualTo(String value) {
            addCriterion("m_tel <>", value, "mTel");
            return (Criteria) this;
        }

        public Criteria andMTelGreaterThan(String value) {
            addCriterion("m_tel >", value, "mTel");
            return (Criteria) this;
        }

        public Criteria andMTelGreaterThanOrEqualTo(String value) {
            addCriterion("m_tel >=", value, "mTel");
            return (Criteria) this;
        }

        public Criteria andMTelLessThan(String value) {
            addCriterion("m_tel <", value, "mTel");
            return (Criteria) this;
        }

        public Criteria andMTelLessThanOrEqualTo(String value) {
            addCriterion("m_tel <=", value, "mTel");
            return (Criteria) this;
        }

        public Criteria andMTelLike(String value) {
            addCriterion("m_tel like", value, "mTel");
            return (Criteria) this;
        }

        public Criteria andMTelNotLike(String value) {
            addCriterion("m_tel not like", value, "mTel");
            return (Criteria) this;
        }

        public Criteria andMTelIn(List<String> values) {
            addCriterion("m_tel in", values, "mTel");
            return (Criteria) this;
        }

        public Criteria andMTelNotIn(List<String> values) {
            addCriterion("m_tel not in", values, "mTel");
            return (Criteria) this;
        }

        public Criteria andMTelBetween(String value1, String value2) {
            addCriterion("m_tel between", value1, value2, "mTel");
            return (Criteria) this;
        }

        public Criteria andMTelNotBetween(String value1, String value2) {
            addCriterion("m_tel not between", value1, value2, "mTel");
            return (Criteria) this;
        }

        public Criteria andMInfoIsNull() {
            addCriterion("m_info is null");
            return (Criteria) this;
        }

        public Criteria andMInfoIsNotNull() {
            addCriterion("m_info is not null");
            return (Criteria) this;
        }

        public Criteria andMInfoEqualTo(String value) {
            addCriterion("m_info =", value, "mInfo");
            return (Criteria) this;
        }

        public Criteria andMInfoNotEqualTo(String value) {
            addCriterion("m_info <>", value, "mInfo");
            return (Criteria) this;
        }

        public Criteria andMInfoGreaterThan(String value) {
            addCriterion("m_info >", value, "mInfo");
            return (Criteria) this;
        }

        public Criteria andMInfoGreaterThanOrEqualTo(String value) {
            addCriterion("m_info >=", value, "mInfo");
            return (Criteria) this;
        }

        public Criteria andMInfoLessThan(String value) {
            addCriterion("m_info <", value, "mInfo");
            return (Criteria) this;
        }

        public Criteria andMInfoLessThanOrEqualTo(String value) {
            addCriterion("m_info <=", value, "mInfo");
            return (Criteria) this;
        }

        public Criteria andMInfoLike(String value) {
            addCriterion("m_info like", value, "mInfo");
            return (Criteria) this;
        }

        public Criteria andMInfoNotLike(String value) {
            addCriterion("m_info not like", value, "mInfo");
            return (Criteria) this;
        }

        public Criteria andMInfoIn(List<String> values) {
            addCriterion("m_info in", values, "mInfo");
            return (Criteria) this;
        }

        public Criteria andMInfoNotIn(List<String> values) {
            addCriterion("m_info not in", values, "mInfo");
            return (Criteria) this;
        }

        public Criteria andMInfoBetween(String value1, String value2) {
            addCriterion("m_info between", value1, value2, "mInfo");
            return (Criteria) this;
        }

        public Criteria andMInfoNotBetween(String value1, String value2) {
            addCriterion("m_info not between", value1, value2, "mInfo");
            return (Criteria) this;
        }
    }

    /**
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}