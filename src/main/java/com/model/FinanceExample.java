package com.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class FinanceExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    private Integer limit;

    private Long offset;

    public FinanceExample() {
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

        public Criteria andPCodeIsNull() {
            addCriterion("p_code is null");
            return (Criteria) this;
        }

        public Criteria andPCodeIsNotNull() {
            addCriterion("p_code is not null");
            return (Criteria) this;
        }

        public Criteria andPCodeEqualTo(String value) {
            addCriterion("p_code =", value, "pCode");
            return (Criteria) this;
        }

        public Criteria andPCodeNotEqualTo(String value) {
            addCriterion("p_code <>", value, "pCode");
            return (Criteria) this;
        }

        public Criteria andPCodeGreaterThan(String value) {
            addCriterion("p_code >", value, "pCode");
            return (Criteria) this;
        }

        public Criteria andPCodeGreaterThanOrEqualTo(String value) {
            addCriterion("p_code >=", value, "pCode");
            return (Criteria) this;
        }

        public Criteria andPCodeLessThan(String value) {
            addCriterion("p_code <", value, "pCode");
            return (Criteria) this;
        }

        public Criteria andPCodeLessThanOrEqualTo(String value) {
            addCriterion("p_code <=", value, "pCode");
            return (Criteria) this;
        }

        public Criteria andPCodeLike(String value) {
            addCriterion("p_code like", value, "pCode");
            return (Criteria) this;
        }

        public Criteria andPCodeNotLike(String value) {
            addCriterion("p_code not like", value, "pCode");
            return (Criteria) this;
        }

        public Criteria andPCodeIn(List<String> values) {
            addCriterion("p_code in", values, "pCode");
            return (Criteria) this;
        }

        public Criteria andPCodeNotIn(List<String> values) {
            addCriterion("p_code not in", values, "pCode");
            return (Criteria) this;
        }

        public Criteria andPCodeBetween(String value1, String value2) {
            addCriterion("p_code between", value1, value2, "pCode");
            return (Criteria) this;
        }

        public Criteria andPCodeNotBetween(String value1, String value2) {
            addCriterion("p_code not between", value1, value2, "pCode");
            return (Criteria) this;
        }

        public Criteria andPDateIsNull() {
            addCriterion("p_date is null");
            return (Criteria) this;
        }

        public Criteria andPDateIsNotNull() {
            addCriterion("p_date is not null");
            return (Criteria) this;
        }

        public Criteria andPDateEqualTo(Date value) {
            addCriterion("p_date =", value, "pDate");
            return (Criteria) this;
        }

        public Criteria andPDateNotEqualTo(Date value) {
            addCriterion("p_date <>", value, "pDate");
            return (Criteria) this;
        }

        public Criteria andPDateGreaterThan(Date value) {
            addCriterion("p_date >", value, "pDate");
            return (Criteria) this;
        }

        public Criteria andPDateGreaterThanOrEqualTo(Date value) {
            addCriterion("p_date >=", value, "pDate");
            return (Criteria) this;
        }

        public Criteria andPDateLessThan(Date value) {
            addCriterion("p_date <", value, "pDate");
            return (Criteria) this;
        }

        public Criteria andPDateLessThanOrEqualTo(Date value) {
            addCriterion("p_date <=", value, "pDate");
            return (Criteria) this;
        }

        public Criteria andPDateIn(List<Date> values) {
            addCriterion("p_date in", values, "pDate");
            return (Criteria) this;
        }

        public Criteria andPDateNotIn(List<Date> values) {
            addCriterion("p_date not in", values, "pDate");
            return (Criteria) this;
        }

        public Criteria andPDateBetween(Date value1, Date value2) {
            addCriterion("p_date between", value1, value2, "pDate");
            return (Criteria) this;
        }

        public Criteria andPDateNotBetween(Date value1, Date value2) {
            addCriterion("p_date not between", value1, value2, "pDate");
            return (Criteria) this;
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

        public Criteria andPQtyIsNull() {
            addCriterion("p_qty is null");
            return (Criteria) this;
        }

        public Criteria andPQtyIsNotNull() {
            addCriterion("p_qty is not null");
            return (Criteria) this;
        }

        public Criteria andPQtyEqualTo(Double value) {
            addCriterion("p_qty =", value, "pQty");
            return (Criteria) this;
        }

        public Criteria andPQtyNotEqualTo(Double value) {
            addCriterion("p_qty <>", value, "pQty");
            return (Criteria) this;
        }

        public Criteria andPQtyGreaterThan(Double value) {
            addCriterion("p_qty >", value, "pQty");
            return (Criteria) this;
        }

        public Criteria andPQtyGreaterThanOrEqualTo(Double value) {
            addCriterion("p_qty >=", value, "pQty");
            return (Criteria) this;
        }

        public Criteria andPQtyLessThan(Double value) {
            addCriterion("p_qty <", value, "pQty");
            return (Criteria) this;
        }

        public Criteria andPQtyLessThanOrEqualTo(Double value) {
            addCriterion("p_qty <=", value, "pQty");
            return (Criteria) this;
        }

        public Criteria andPQtyIn(List<Double> values) {
            addCriterion("p_qty in", values, "pQty");
            return (Criteria) this;
        }

        public Criteria andPQtyNotIn(List<Double> values) {
            addCriterion("p_qty not in", values, "pQty");
            return (Criteria) this;
        }

        public Criteria andPQtyBetween(Double value1, Double value2) {
            addCriterion("p_qty between", value1, value2, "pQty");
            return (Criteria) this;
        }

        public Criteria andPQtyNotBetween(Double value1, Double value2) {
            addCriterion("p_qty not between", value1, value2, "pQty");
            return (Criteria) this;
        }

        public Criteria andPMoneyIsNull() {
            addCriterion("p_money is null");
            return (Criteria) this;
        }

        public Criteria andPMoneyIsNotNull() {
            addCriterion("p_money is not null");
            return (Criteria) this;
        }

        public Criteria andPMoneyEqualTo(Double value) {
            addCriterion("p_money =", value, "pMoney");
            return (Criteria) this;
        }

        public Criteria andPMoneyNotEqualTo(Double value) {
            addCriterion("p_money <>", value, "pMoney");
            return (Criteria) this;
        }

        public Criteria andPMoneyGreaterThan(Double value) {
            addCriterion("p_money >", value, "pMoney");
            return (Criteria) this;
        }

        public Criteria andPMoneyGreaterThanOrEqualTo(Double value) {
            addCriterion("p_money >=", value, "pMoney");
            return (Criteria) this;
        }

        public Criteria andPMoneyLessThan(Double value) {
            addCriterion("p_money <", value, "pMoney");
            return (Criteria) this;
        }

        public Criteria andPMoneyLessThanOrEqualTo(Double value) {
            addCriterion("p_money <=", value, "pMoney");
            return (Criteria) this;
        }

        public Criteria andPMoneyIn(List<Double> values) {
            addCriterion("p_money in", values, "pMoney");
            return (Criteria) this;
        }

        public Criteria andPMoneyNotIn(List<Double> values) {
            addCriterion("p_money not in", values, "pMoney");
            return (Criteria) this;
        }

        public Criteria andPMoneyBetween(Double value1, Double value2) {
            addCriterion("p_money between", value1, value2, "pMoney");
            return (Criteria) this;
        }

        public Criteria andPMoneyNotBetween(Double value1, Double value2) {
            addCriterion("p_money not between", value1, value2, "pMoney");
            return (Criteria) this;
        }

        public Criteria andPTypeIsNull() {
            addCriterion("p_type is null");
            return (Criteria) this;
        }

        public Criteria andPTypeIsNotNull() {
            addCriterion("p_type is not null");
            return (Criteria) this;
        }

        public Criteria andPTypeEqualTo(String value) {
            addCriterion("p_type =", value, "pType");
            return (Criteria) this;
        }

        public Criteria andPTypeNotEqualTo(String value) {
            addCriterion("p_type <>", value, "pType");
            return (Criteria) this;
        }

        public Criteria andPTypeGreaterThan(String value) {
            addCriterion("p_type >", value, "pType");
            return (Criteria) this;
        }

        public Criteria andPTypeGreaterThanOrEqualTo(String value) {
            addCriterion("p_type >=", value, "pType");
            return (Criteria) this;
        }

        public Criteria andPTypeLessThan(String value) {
            addCriterion("p_type <", value, "pType");
            return (Criteria) this;
        }

        public Criteria andPTypeLessThanOrEqualTo(String value) {
            addCriterion("p_type <=", value, "pType");
            return (Criteria) this;
        }

        public Criteria andPTypeLike(String value) {
            addCriterion("p_type like", value, "pType");
            return (Criteria) this;
        }

        public Criteria andPTypeNotLike(String value) {
            addCriterion("p_type not like", value, "pType");
            return (Criteria) this;
        }

        public Criteria andPTypeIn(List<String> values) {
            addCriterion("p_type in", values, "pType");
            return (Criteria) this;
        }

        public Criteria andPTypeNotIn(List<String> values) {
            addCriterion("p_type not in", values, "pType");
            return (Criteria) this;
        }

        public Criteria andPTypeBetween(String value1, String value2) {
            addCriterion("p_type between", value1, value2, "pType");
            return (Criteria) this;
        }

        public Criteria andPTypeNotBetween(String value1, String value2) {
            addCriterion("p_type not between", value1, value2, "pType");
            return (Criteria) this;
        }

        public Criteria andPMethodIsNull() {
            addCriterion("p_method is null");
            return (Criteria) this;
        }

        public Criteria andPMethodIsNotNull() {
            addCriterion("p_method is not null");
            return (Criteria) this;
        }

        public Criteria andPMethodEqualTo(String value) {
            addCriterion("p_method =", value, "pMethod");
            return (Criteria) this;
        }

        public Criteria andPMethodNotEqualTo(String value) {
            addCriterion("p_method <>", value, "pMethod");
            return (Criteria) this;
        }

        public Criteria andPMethodGreaterThan(String value) {
            addCriterion("p_method >", value, "pMethod");
            return (Criteria) this;
        }

        public Criteria andPMethodGreaterThanOrEqualTo(String value) {
            addCriterion("p_method >=", value, "pMethod");
            return (Criteria) this;
        }

        public Criteria andPMethodLessThan(String value) {
            addCriterion("p_method <", value, "pMethod");
            return (Criteria) this;
        }

        public Criteria andPMethodLessThanOrEqualTo(String value) {
            addCriterion("p_method <=", value, "pMethod");
            return (Criteria) this;
        }

        public Criteria andPMethodLike(String value) {
            addCriterion("p_method like", value, "pMethod");
            return (Criteria) this;
        }

        public Criteria andPMethodNotLike(String value) {
            addCriterion("p_method not like", value, "pMethod");
            return (Criteria) this;
        }

        public Criteria andPMethodIn(List<String> values) {
            addCriterion("p_method in", values, "pMethod");
            return (Criteria) this;
        }

        public Criteria andPMethodNotIn(List<String> values) {
            addCriterion("p_method not in", values, "pMethod");
            return (Criteria) this;
        }

        public Criteria andPMethodBetween(String value1, String value2) {
            addCriterion("p_method between", value1, value2, "pMethod");
            return (Criteria) this;
        }

        public Criteria andPMethodNotBetween(String value1, String value2) {
            addCriterion("p_method not between", value1, value2, "pMethod");
            return (Criteria) this;
        }

        public Criteria andPInfoIsNull() {
            addCriterion("p_info is null");
            return (Criteria) this;
        }

        public Criteria andPInfoIsNotNull() {
            addCriterion("p_info is not null");
            return (Criteria) this;
        }

        public Criteria andPInfoEqualTo(String value) {
            addCriterion("p_info =", value, "pInfo");
            return (Criteria) this;
        }

        public Criteria andPInfoNotEqualTo(String value) {
            addCriterion("p_info <>", value, "pInfo");
            return (Criteria) this;
        }

        public Criteria andPInfoGreaterThan(String value) {
            addCriterion("p_info >", value, "pInfo");
            return (Criteria) this;
        }

        public Criteria andPInfoGreaterThanOrEqualTo(String value) {
            addCriterion("p_info >=", value, "pInfo");
            return (Criteria) this;
        }

        public Criteria andPInfoLessThan(String value) {
            addCriterion("p_info <", value, "pInfo");
            return (Criteria) this;
        }

        public Criteria andPInfoLessThanOrEqualTo(String value) {
            addCriterion("p_info <=", value, "pInfo");
            return (Criteria) this;
        }

        public Criteria andPInfoLike(String value) {
            addCriterion("p_info like", value, "pInfo");
            return (Criteria) this;
        }

        public Criteria andPInfoNotLike(String value) {
            addCriterion("p_info not like", value, "pInfo");
            return (Criteria) this;
        }

        public Criteria andPInfoIn(List<String> values) {
            addCriterion("p_info in", values, "pInfo");
            return (Criteria) this;
        }

        public Criteria andPInfoNotIn(List<String> values) {
            addCriterion("p_info not in", values, "pInfo");
            return (Criteria) this;
        }

        public Criteria andPInfoBetween(String value1, String value2) {
            addCriterion("p_info between", value1, value2, "pInfo");
            return (Criteria) this;
        }

        public Criteria andPInfoNotBetween(String value1, String value2) {
            addCriterion("p_info not between", value1, value2, "pInfo");
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