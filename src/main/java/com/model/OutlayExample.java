package com.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class OutlayExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    private Integer limit;

    private Long offset;

    public OutlayExample() {
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

        public Criteria andOCodeIsNull() {
            addCriterion("o_code is null");
            return (Criteria) this;
        }

        public Criteria andOCodeIsNotNull() {
            addCriterion("o_code is not null");
            return (Criteria) this;
        }

        public Criteria andOCodeEqualTo(String value) {
            addCriterion("o_code =", value, "oCode");
            return (Criteria) this;
        }

        public Criteria andOCodeNotEqualTo(String value) {
            addCriterion("o_code <>", value, "oCode");
            return (Criteria) this;
        }

        public Criteria andOCodeGreaterThan(String value) {
            addCriterion("o_code >", value, "oCode");
            return (Criteria) this;
        }

        public Criteria andOCodeGreaterThanOrEqualTo(String value) {
            addCriterion("o_code >=", value, "oCode");
            return (Criteria) this;
        }

        public Criteria andOCodeLessThan(String value) {
            addCriterion("o_code <", value, "oCode");
            return (Criteria) this;
        }

        public Criteria andOCodeLessThanOrEqualTo(String value) {
            addCriterion("o_code <=", value, "oCode");
            return (Criteria) this;
        }

        public Criteria andOCodeLike(String value) {
            addCriterion("o_code like", value, "oCode");
            return (Criteria) this;
        }

        public Criteria andOCodeNotLike(String value) {
            addCriterion("o_code not like", value, "oCode");
            return (Criteria) this;
        }

        public Criteria andOCodeIn(List<String> values) {
            addCriterion("o_code in", values, "oCode");
            return (Criteria) this;
        }

        public Criteria andOCodeNotIn(List<String> values) {
            addCriterion("o_code not in", values, "oCode");
            return (Criteria) this;
        }

        public Criteria andOCodeBetween(String value1, String value2) {
            addCriterion("o_code between", value1, value2, "oCode");
            return (Criteria) this;
        }

        public Criteria andOCodeNotBetween(String value1, String value2) {
            addCriterion("o_code not between", value1, value2, "oCode");
            return (Criteria) this;
        }

        public Criteria andODateIsNull() {
            addCriterion("o_date is null");
            return (Criteria) this;
        }

        public Criteria andODateIsNotNull() {
            addCriterion("o_date is not null");
            return (Criteria) this;
        }

        public Criteria andODateEqualTo(Date value) {
            addCriterion("o_date =", value, "oDate");
            return (Criteria) this;
        }

        public Criteria andODateNotEqualTo(Date value) {
            addCriterion("o_date <>", value, "oDate");
            return (Criteria) this;
        }

        public Criteria andODateGreaterThan(Date value) {
            addCriterion("o_date >", value, "oDate");
            return (Criteria) this;
        }

        public Criteria andODateGreaterThanOrEqualTo(Date value) {
            addCriterion("o_date >=", value, "oDate");
            return (Criteria) this;
        }

        public Criteria andODateLessThan(Date value) {
            addCriterion("o_date <", value, "oDate");
            return (Criteria) this;
        }

        public Criteria andODateLessThanOrEqualTo(Date value) {
            addCriterion("o_date <=", value, "oDate");
            return (Criteria) this;
        }

        public Criteria andODateIn(List<Date> values) {
            addCriterion("o_date in", values, "oDate");
            return (Criteria) this;
        }

        public Criteria andODateNotIn(List<Date> values) {
            addCriterion("o_date not in", values, "oDate");
            return (Criteria) this;
        }

        public Criteria andODateBetween(Date value1, Date value2) {
            addCriterion("o_date between", value1, value2, "oDate");
            return (Criteria) this;
        }

        public Criteria andODateNotBetween(Date value1, Date value2) {
            addCriterion("o_date not between", value1, value2, "oDate");
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

        public Criteria andOQtyIsNull() {
            addCriterion("o_qty is null");
            return (Criteria) this;
        }

        public Criteria andOQtyIsNotNull() {
            addCriterion("o_qty is not null");
            return (Criteria) this;
        }

        public Criteria andOQtyEqualTo(Double value) {
            addCriterion("o_qty =", value, "oQty");
            return (Criteria) this;
        }

        public Criteria andOQtyNotEqualTo(Double value) {
            addCriterion("o_qty <>", value, "oQty");
            return (Criteria) this;
        }

        public Criteria andOQtyGreaterThan(Double value) {
            addCriterion("o_qty >", value, "oQty");
            return (Criteria) this;
        }

        public Criteria andOQtyGreaterThanOrEqualTo(Double value) {
            addCriterion("o_qty >=", value, "oQty");
            return (Criteria) this;
        }

        public Criteria andOQtyLessThan(Double value) {
            addCriterion("o_qty <", value, "oQty");
            return (Criteria) this;
        }

        public Criteria andOQtyLessThanOrEqualTo(Double value) {
            addCriterion("o_qty <=", value, "oQty");
            return (Criteria) this;
        }

        public Criteria andOQtyIn(List<Double> values) {
            addCriterion("o_qty in", values, "oQty");
            return (Criteria) this;
        }

        public Criteria andOQtyNotIn(List<Double> values) {
            addCriterion("o_qty not in", values, "oQty");
            return (Criteria) this;
        }

        public Criteria andOQtyBetween(Double value1, Double value2) {
            addCriterion("o_qty between", value1, value2, "oQty");
            return (Criteria) this;
        }

        public Criteria andOQtyNotBetween(Double value1, Double value2) {
            addCriterion("o_qty not between", value1, value2, "oQty");
            return (Criteria) this;
        }

        public Criteria andOMoneyIsNull() {
            addCriterion("o_money is null");
            return (Criteria) this;
        }

        public Criteria andOMoneyIsNotNull() {
            addCriterion("o_money is not null");
            return (Criteria) this;
        }

        public Criteria andOMoneyEqualTo(Double value) {
            addCriterion("o_money =", value, "oMoney");
            return (Criteria) this;
        }

        public Criteria andOMoneyNotEqualTo(Double value) {
            addCriterion("o_money <>", value, "oMoney");
            return (Criteria) this;
        }

        public Criteria andOMoneyGreaterThan(Double value) {
            addCriterion("o_money >", value, "oMoney");
            return (Criteria) this;
        }

        public Criteria andOMoneyGreaterThanOrEqualTo(Double value) {
            addCriterion("o_money >=", value, "oMoney");
            return (Criteria) this;
        }

        public Criteria andOMoneyLessThan(Double value) {
            addCriterion("o_money <", value, "oMoney");
            return (Criteria) this;
        }

        public Criteria andOMoneyLessThanOrEqualTo(Double value) {
            addCriterion("o_money <=", value, "oMoney");
            return (Criteria) this;
        }

        public Criteria andOMoneyIn(List<Double> values) {
            addCriterion("o_money in", values, "oMoney");
            return (Criteria) this;
        }

        public Criteria andOMoneyNotIn(List<Double> values) {
            addCriterion("o_money not in", values, "oMoney");
            return (Criteria) this;
        }

        public Criteria andOMoneyBetween(Double value1, Double value2) {
            addCriterion("o_money between", value1, value2, "oMoney");
            return (Criteria) this;
        }

        public Criteria andOMoneyNotBetween(Double value1, Double value2) {
            addCriterion("o_money not between", value1, value2, "oMoney");
            return (Criteria) this;
        }

        public Criteria andOMethodIsNull() {
            addCriterion("o_method is null");
            return (Criteria) this;
        }

        public Criteria andOMethodIsNotNull() {
            addCriterion("o_method is not null");
            return (Criteria) this;
        }

        public Criteria andOMethodEqualTo(String value) {
            addCriterion("o_method =", value, "oMethod");
            return (Criteria) this;
        }

        public Criteria andOMethodNotEqualTo(String value) {
            addCriterion("o_method <>", value, "oMethod");
            return (Criteria) this;
        }

        public Criteria andOMethodGreaterThan(String value) {
            addCriterion("o_method >", value, "oMethod");
            return (Criteria) this;
        }

        public Criteria andOMethodGreaterThanOrEqualTo(String value) {
            addCriterion("o_method >=", value, "oMethod");
            return (Criteria) this;
        }

        public Criteria andOMethodLessThan(String value) {
            addCriterion("o_method <", value, "oMethod");
            return (Criteria) this;
        }

        public Criteria andOMethodLessThanOrEqualTo(String value) {
            addCriterion("o_method <=", value, "oMethod");
            return (Criteria) this;
        }

        public Criteria andOMethodLike(String value) {
            addCriterion("o_method like", value, "oMethod");
            return (Criteria) this;
        }

        public Criteria andOMethodNotLike(String value) {
            addCriterion("o_method not like", value, "oMethod");
            return (Criteria) this;
        }

        public Criteria andOMethodIn(List<String> values) {
            addCriterion("o_method in", values, "oMethod");
            return (Criteria) this;
        }

        public Criteria andOMethodNotIn(List<String> values) {
            addCriterion("o_method not in", values, "oMethod");
            return (Criteria) this;
        }

        public Criteria andOMethodBetween(String value1, String value2) {
            addCriterion("o_method between", value1, value2, "oMethod");
            return (Criteria) this;
        }

        public Criteria andOMethodNotBetween(String value1, String value2) {
            addCriterion("o_method not between", value1, value2, "oMethod");
            return (Criteria) this;
        }

        public Criteria andOInfoIsNull() {
            addCriterion("o_info is null");
            return (Criteria) this;
        }

        public Criteria andOInfoIsNotNull() {
            addCriterion("o_info is not null");
            return (Criteria) this;
        }

        public Criteria andOInfoEqualTo(String value) {
            addCriterion("o_info =", value, "oInfo");
            return (Criteria) this;
        }

        public Criteria andOInfoNotEqualTo(String value) {
            addCriterion("o_info <>", value, "oInfo");
            return (Criteria) this;
        }

        public Criteria andOInfoGreaterThan(String value) {
            addCriterion("o_info >", value, "oInfo");
            return (Criteria) this;
        }

        public Criteria andOInfoGreaterThanOrEqualTo(String value) {
            addCriterion("o_info >=", value, "oInfo");
            return (Criteria) this;
        }

        public Criteria andOInfoLessThan(String value) {
            addCriterion("o_info <", value, "oInfo");
            return (Criteria) this;
        }

        public Criteria andOInfoLessThanOrEqualTo(String value) {
            addCriterion("o_info <=", value, "oInfo");
            return (Criteria) this;
        }

        public Criteria andOInfoLike(String value) {
            addCriterion("o_info like", value, "oInfo");
            return (Criteria) this;
        }

        public Criteria andOInfoNotLike(String value) {
            addCriterion("o_info not like", value, "oInfo");
            return (Criteria) this;
        }

        public Criteria andOInfoIn(List<String> values) {
            addCriterion("o_info in", values, "oInfo");
            return (Criteria) this;
        }

        public Criteria andOInfoNotIn(List<String> values) {
            addCriterion("o_info not in", values, "oInfo");
            return (Criteria) this;
        }

        public Criteria andOInfoBetween(String value1, String value2) {
            addCriterion("o_info between", value1, value2, "oInfo");
            return (Criteria) this;
        }

        public Criteria andOInfoNotBetween(String value1, String value2) {
            addCriterion("o_info not between", value1, value2, "oInfo");
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