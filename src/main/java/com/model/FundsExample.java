package com.model;

import java.util.ArrayList;
import java.util.List;

public class FundsExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    private Integer limit;

    private Long offset;

    public FundsExample() {
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

        public Criteria andFCodeIsNull() {
            addCriterion("f_code is null");
            return (Criteria) this;
        }

        public Criteria andFCodeIsNotNull() {
            addCriterion("f_code is not null");
            return (Criteria) this;
        }

        public Criteria andFCodeEqualTo(String value) {
            addCriterion("f_code =", value, "fCode");
            return (Criteria) this;
        }

        public Criteria andFCodeNotEqualTo(String value) {
            addCriterion("f_code <>", value, "fCode");
            return (Criteria) this;
        }

        public Criteria andFCodeGreaterThan(String value) {
            addCriterion("f_code >", value, "fCode");
            return (Criteria) this;
        }

        public Criteria andFCodeGreaterThanOrEqualTo(String value) {
            addCriterion("f_code >=", value, "fCode");
            return (Criteria) this;
        }

        public Criteria andFCodeLessThan(String value) {
            addCriterion("f_code <", value, "fCode");
            return (Criteria) this;
        }

        public Criteria andFCodeLessThanOrEqualTo(String value) {
            addCriterion("f_code <=", value, "fCode");
            return (Criteria) this;
        }

        public Criteria andFCodeLike(String value) {
            addCriterion("f_code like", value, "fCode");
            return (Criteria) this;
        }

        public Criteria andFCodeNotLike(String value) {
            addCriterion("f_code not like", value, "fCode");
            return (Criteria) this;
        }

        public Criteria andFCodeIn(List<String> values) {
            addCriterion("f_code in", values, "fCode");
            return (Criteria) this;
        }

        public Criteria andFCodeNotIn(List<String> values) {
            addCriterion("f_code not in", values, "fCode");
            return (Criteria) this;
        }

        public Criteria andFCodeBetween(String value1, String value2) {
            addCriterion("f_code between", value1, value2, "fCode");
            return (Criteria) this;
        }

        public Criteria andFCodeNotBetween(String value1, String value2) {
            addCriterion("f_code not between", value1, value2, "fCode");
            return (Criteria) this;
        }

        public Criteria andFNameIsNull() {
            addCriterion("f_name is null");
            return (Criteria) this;
        }

        public Criteria andFNameIsNotNull() {
            addCriterion("f_name is not null");
            return (Criteria) this;
        }

        public Criteria andFNameEqualTo(String value) {
            addCriterion("f_name =", value, "fName");
            return (Criteria) this;
        }

        public Criteria andFNameNotEqualTo(String value) {
            addCriterion("f_name <>", value, "fName");
            return (Criteria) this;
        }

        public Criteria andFNameGreaterThan(String value) {
            addCriterion("f_name >", value, "fName");
            return (Criteria) this;
        }

        public Criteria andFNameGreaterThanOrEqualTo(String value) {
            addCriterion("f_name >=", value, "fName");
            return (Criteria) this;
        }

        public Criteria andFNameLessThan(String value) {
            addCriterion("f_name <", value, "fName");
            return (Criteria) this;
        }

        public Criteria andFNameLessThanOrEqualTo(String value) {
            addCriterion("f_name <=", value, "fName");
            return (Criteria) this;
        }

        public Criteria andFNameLike(String value) {
            addCriterion("f_name like", value, "fName");
            return (Criteria) this;
        }

        public Criteria andFNameNotLike(String value) {
            addCriterion("f_name not like", value, "fName");
            return (Criteria) this;
        }

        public Criteria andFNameIn(List<String> values) {
            addCriterion("f_name in", values, "fName");
            return (Criteria) this;
        }

        public Criteria andFNameNotIn(List<String> values) {
            addCriterion("f_name not in", values, "fName");
            return (Criteria) this;
        }

        public Criteria andFNameBetween(String value1, String value2) {
            addCriterion("f_name between", value1, value2, "fName");
            return (Criteria) this;
        }

        public Criteria andFNameNotBetween(String value1, String value2) {
            addCriterion("f_name not between", value1, value2, "fName");
            return (Criteria) this;
        }

        public Criteria andFCategoryIsNull() {
            addCriterion("f_category is null");
            return (Criteria) this;
        }

        public Criteria andFCategoryIsNotNull() {
            addCriterion("f_category is not null");
            return (Criteria) this;
        }

        public Criteria andFCategoryEqualTo(String value) {
            addCriterion("f_category =", value, "fCategory");
            return (Criteria) this;
        }

        public Criteria andFCategoryNotEqualTo(String value) {
            addCriterion("f_category <>", value, "fCategory");
            return (Criteria) this;
        }

        public Criteria andFCategoryGreaterThan(String value) {
            addCriterion("f_category >", value, "fCategory");
            return (Criteria) this;
        }

        public Criteria andFCategoryGreaterThanOrEqualTo(String value) {
            addCriterion("f_category >=", value, "fCategory");
            return (Criteria) this;
        }

        public Criteria andFCategoryLessThan(String value) {
            addCriterion("f_category <", value, "fCategory");
            return (Criteria) this;
        }

        public Criteria andFCategoryLessThanOrEqualTo(String value) {
            addCriterion("f_category <=", value, "fCategory");
            return (Criteria) this;
        }

        public Criteria andFCategoryLike(String value) {
            addCriterion("f_category like", value, "fCategory");
            return (Criteria) this;
        }

        public Criteria andFCategoryNotLike(String value) {
            addCriterion("f_category not like", value, "fCategory");
            return (Criteria) this;
        }

        public Criteria andFCategoryIn(List<String> values) {
            addCriterion("f_category in", values, "fCategory");
            return (Criteria) this;
        }

        public Criteria andFCategoryNotIn(List<String> values) {
            addCriterion("f_category not in", values, "fCategory");
            return (Criteria) this;
        }

        public Criteria andFCategoryBetween(String value1, String value2) {
            addCriterion("f_category between", value1, value2, "fCategory");
            return (Criteria) this;
        }

        public Criteria andFCategoryNotBetween(String value1, String value2) {
            addCriterion("f_category not between", value1, value2, "fCategory");
            return (Criteria) this;
        }

        public Criteria andFBusinessIsNull() {
            addCriterion("f_business is null");
            return (Criteria) this;
        }

        public Criteria andFBusinessIsNotNull() {
            addCriterion("f_business is not null");
            return (Criteria) this;
        }

        public Criteria andFBusinessEqualTo(String value) {
            addCriterion("f_business =", value, "fBusiness");
            return (Criteria) this;
        }

        public Criteria andFBusinessNotEqualTo(String value) {
            addCriterion("f_business <>", value, "fBusiness");
            return (Criteria) this;
        }

        public Criteria andFBusinessGreaterThan(String value) {
            addCriterion("f_business >", value, "fBusiness");
            return (Criteria) this;
        }

        public Criteria andFBusinessGreaterThanOrEqualTo(String value) {
            addCriterion("f_business >=", value, "fBusiness");
            return (Criteria) this;
        }

        public Criteria andFBusinessLessThan(String value) {
            addCriterion("f_business <", value, "fBusiness");
            return (Criteria) this;
        }

        public Criteria andFBusinessLessThanOrEqualTo(String value) {
            addCriterion("f_business <=", value, "fBusiness");
            return (Criteria) this;
        }

        public Criteria andFBusinessLike(String value) {
            addCriterion("f_business like", value, "fBusiness");
            return (Criteria) this;
        }

        public Criteria andFBusinessNotLike(String value) {
            addCriterion("f_business not like", value, "fBusiness");
            return (Criteria) this;
        }

        public Criteria andFBusinessIn(List<String> values) {
            addCriterion("f_business in", values, "fBusiness");
            return (Criteria) this;
        }

        public Criteria andFBusinessNotIn(List<String> values) {
            addCriterion("f_business not in", values, "fBusiness");
            return (Criteria) this;
        }

        public Criteria andFBusinessBetween(String value1, String value2) {
            addCriterion("f_business between", value1, value2, "fBusiness");
            return (Criteria) this;
        }

        public Criteria andFBusinessNotBetween(String value1, String value2) {
            addCriterion("f_business not between", value1, value2, "fBusiness");
            return (Criteria) this;
        }

        public Criteria andFUnitIsNull() {
            addCriterion("f_unit is null");
            return (Criteria) this;
        }

        public Criteria andFUnitIsNotNull() {
            addCriterion("f_unit is not null");
            return (Criteria) this;
        }

        public Criteria andFUnitEqualTo(String value) {
            addCriterion("f_unit =", value, "fUnit");
            return (Criteria) this;
        }

        public Criteria andFUnitNotEqualTo(String value) {
            addCriterion("f_unit <>", value, "fUnit");
            return (Criteria) this;
        }

        public Criteria andFUnitGreaterThan(String value) {
            addCriterion("f_unit >", value, "fUnit");
            return (Criteria) this;
        }

        public Criteria andFUnitGreaterThanOrEqualTo(String value) {
            addCriterion("f_unit >=", value, "fUnit");
            return (Criteria) this;
        }

        public Criteria andFUnitLessThan(String value) {
            addCriterion("f_unit <", value, "fUnit");
            return (Criteria) this;
        }

        public Criteria andFUnitLessThanOrEqualTo(String value) {
            addCriterion("f_unit <=", value, "fUnit");
            return (Criteria) this;
        }

        public Criteria andFUnitLike(String value) {
            addCriterion("f_unit like", value, "fUnit");
            return (Criteria) this;
        }

        public Criteria andFUnitNotLike(String value) {
            addCriterion("f_unit not like", value, "fUnit");
            return (Criteria) this;
        }

        public Criteria andFUnitIn(List<String> values) {
            addCriterion("f_unit in", values, "fUnit");
            return (Criteria) this;
        }

        public Criteria andFUnitNotIn(List<String> values) {
            addCriterion("f_unit not in", values, "fUnit");
            return (Criteria) this;
        }

        public Criteria andFUnitBetween(String value1, String value2) {
            addCriterion("f_unit between", value1, value2, "fUnit");
            return (Criteria) this;
        }

        public Criteria andFUnitNotBetween(String value1, String value2) {
            addCriterion("f_unit not between", value1, value2, "fUnit");
            return (Criteria) this;
        }

        public Criteria andFPriceIsNull() {
            addCriterion("f_price is null");
            return (Criteria) this;
        }

        public Criteria andFPriceIsNotNull() {
            addCriterion("f_price is not null");
            return (Criteria) this;
        }

        public Criteria andFPriceEqualTo(Double value) {
            addCriterion("f_price =", value, "fPrice");
            return (Criteria) this;
        }

        public Criteria andFPriceNotEqualTo(Double value) {
            addCriterion("f_price <>", value, "fPrice");
            return (Criteria) this;
        }

        public Criteria andFPriceGreaterThan(Double value) {
            addCriterion("f_price >", value, "fPrice");
            return (Criteria) this;
        }

        public Criteria andFPriceGreaterThanOrEqualTo(Double value) {
            addCriterion("f_price >=", value, "fPrice");
            return (Criteria) this;
        }

        public Criteria andFPriceLessThan(Double value) {
            addCriterion("f_price <", value, "fPrice");
            return (Criteria) this;
        }

        public Criteria andFPriceLessThanOrEqualTo(Double value) {
            addCriterion("f_price <=", value, "fPrice");
            return (Criteria) this;
        }

        public Criteria andFPriceIn(List<Double> values) {
            addCriterion("f_price in", values, "fPrice");
            return (Criteria) this;
        }

        public Criteria andFPriceNotIn(List<Double> values) {
            addCriterion("f_price not in", values, "fPrice");
            return (Criteria) this;
        }

        public Criteria andFPriceBetween(Double value1, Double value2) {
            addCriterion("f_price between", value1, value2, "fPrice");
            return (Criteria) this;
        }

        public Criteria andFPriceNotBetween(Double value1, Double value2) {
            addCriterion("f_price not between", value1, value2, "fPrice");
            return (Criteria) this;
        }

        public Criteria andFInfoIsNull() {
            addCriterion("f_info is null");
            return (Criteria) this;
        }

        public Criteria andFInfoIsNotNull() {
            addCriterion("f_info is not null");
            return (Criteria) this;
        }

        public Criteria andFInfoEqualTo(String value) {
            addCriterion("f_info =", value, "fInfo");
            return (Criteria) this;
        }

        public Criteria andFInfoNotEqualTo(String value) {
            addCriterion("f_info <>", value, "fInfo");
            return (Criteria) this;
        }

        public Criteria andFInfoGreaterThan(String value) {
            addCriterion("f_info >", value, "fInfo");
            return (Criteria) this;
        }

        public Criteria andFInfoGreaterThanOrEqualTo(String value) {
            addCriterion("f_info >=", value, "fInfo");
            return (Criteria) this;
        }

        public Criteria andFInfoLessThan(String value) {
            addCriterion("f_info <", value, "fInfo");
            return (Criteria) this;
        }

        public Criteria andFInfoLessThanOrEqualTo(String value) {
            addCriterion("f_info <=", value, "fInfo");
            return (Criteria) this;
        }

        public Criteria andFInfoLike(String value) {
            addCriterion("f_info like", value, "fInfo");
            return (Criteria) this;
        }

        public Criteria andFInfoNotLike(String value) {
            addCriterion("f_info not like", value, "fInfo");
            return (Criteria) this;
        }

        public Criteria andFInfoIn(List<String> values) {
            addCriterion("f_info in", values, "fInfo");
            return (Criteria) this;
        }

        public Criteria andFInfoNotIn(List<String> values) {
            addCriterion("f_info not in", values, "fInfo");
            return (Criteria) this;
        }

        public Criteria andFInfoBetween(String value1, String value2) {
            addCriterion("f_info between", value1, value2, "fInfo");
            return (Criteria) this;
        }

        public Criteria andFInfoNotBetween(String value1, String value2) {
            addCriterion("f_info not between", value1, value2, "fInfo");
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