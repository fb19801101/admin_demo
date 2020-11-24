package com.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class IncomeExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    private Integer limit;

    private Long offset;

    public IncomeExample() {
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

        public Criteria andICodeIsNull() {
            addCriterion("i_code is null");
            return (Criteria) this;
        }

        public Criteria andICodeIsNotNull() {
            addCriterion("i_code is not null");
            return (Criteria) this;
        }

        public Criteria andICodeEqualTo(String value) {
            addCriterion("i_code =", value, "iCode");
            return (Criteria) this;
        }

        public Criteria andICodeNotEqualTo(String value) {
            addCriterion("i_code <>", value, "iCode");
            return (Criteria) this;
        }

        public Criteria andICodeGreaterThan(String value) {
            addCriterion("i_code >", value, "iCode");
            return (Criteria) this;
        }

        public Criteria andICodeGreaterThanOrEqualTo(String value) {
            addCriterion("i_code >=", value, "iCode");
            return (Criteria) this;
        }

        public Criteria andICodeLessThan(String value) {
            addCriterion("i_code <", value, "iCode");
            return (Criteria) this;
        }

        public Criteria andICodeLessThanOrEqualTo(String value) {
            addCriterion("i_code <=", value, "iCode");
            return (Criteria) this;
        }

        public Criteria andICodeLike(String value) {
            addCriterion("i_code like", value, "iCode");
            return (Criteria) this;
        }

        public Criteria andICodeNotLike(String value) {
            addCriterion("i_code not like", value, "iCode");
            return (Criteria) this;
        }

        public Criteria andICodeIn(List<String> values) {
            addCriterion("i_code in", values, "iCode");
            return (Criteria) this;
        }

        public Criteria andICodeNotIn(List<String> values) {
            addCriterion("i_code not in", values, "iCode");
            return (Criteria) this;
        }

        public Criteria andICodeBetween(String value1, String value2) {
            addCriterion("i_code between", value1, value2, "iCode");
            return (Criteria) this;
        }

        public Criteria andICodeNotBetween(String value1, String value2) {
            addCriterion("i_code not between", value1, value2, "iCode");
            return (Criteria) this;
        }

        public Criteria andIDateIsNull() {
            addCriterion("i_date is null");
            return (Criteria) this;
        }

        public Criteria andIDateIsNotNull() {
            addCriterion("i_date is not null");
            return (Criteria) this;
        }

        public Criteria andIDateEqualTo(Date value) {
            addCriterion("i_date =", value, "iDate");
            return (Criteria) this;
        }

        public Criteria andIDateNotEqualTo(Date value) {
            addCriterion("i_date <>", value, "iDate");
            return (Criteria) this;
        }

        public Criteria andIDateGreaterThan(Date value) {
            addCriterion("i_date >", value, "iDate");
            return (Criteria) this;
        }

        public Criteria andIDateGreaterThanOrEqualTo(Date value) {
            addCriterion("i_date >=", value, "iDate");
            return (Criteria) this;
        }

        public Criteria andIDateLessThan(Date value) {
            addCriterion("i_date <", value, "iDate");
            return (Criteria) this;
        }

        public Criteria andIDateLessThanOrEqualTo(Date value) {
            addCriterion("i_date <=", value, "iDate");
            return (Criteria) this;
        }

        public Criteria andIDateIn(List<Date> values) {
            addCriterion("i_date in", values, "iDate");
            return (Criteria) this;
        }

        public Criteria andIDateNotIn(List<Date> values) {
            addCriterion("i_date not in", values, "iDate");
            return (Criteria) this;
        }

        public Criteria andIDateBetween(Date value1, Date value2) {
            addCriterion("i_date between", value1, value2, "iDate");
            return (Criteria) this;
        }

        public Criteria andIDateNotBetween(Date value1, Date value2) {
            addCriterion("i_date not between", value1, value2, "iDate");
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

        public Criteria andIQtyIsNull() {
            addCriterion("i_qty is null");
            return (Criteria) this;
        }

        public Criteria andIQtyIsNotNull() {
            addCriterion("i_qty is not null");
            return (Criteria) this;
        }

        public Criteria andIQtyEqualTo(Double value) {
            addCriterion("i_qty =", value, "iQty");
            return (Criteria) this;
        }

        public Criteria andIQtyNotEqualTo(Double value) {
            addCriterion("i_qty <>", value, "iQty");
            return (Criteria) this;
        }

        public Criteria andIQtyGreaterThan(Double value) {
            addCriterion("i_qty >", value, "iQty");
            return (Criteria) this;
        }

        public Criteria andIQtyGreaterThanOrEqualTo(Double value) {
            addCriterion("i_qty >=", value, "iQty");
            return (Criteria) this;
        }

        public Criteria andIQtyLessThan(Double value) {
            addCriterion("i_qty <", value, "iQty");
            return (Criteria) this;
        }

        public Criteria andIQtyLessThanOrEqualTo(Double value) {
            addCriterion("i_qty <=", value, "iQty");
            return (Criteria) this;
        }

        public Criteria andIQtyIn(List<Double> values) {
            addCriterion("i_qty in", values, "iQty");
            return (Criteria) this;
        }

        public Criteria andIQtyNotIn(List<Double> values) {
            addCriterion("i_qty not in", values, "iQty");
            return (Criteria) this;
        }

        public Criteria andIQtyBetween(Double value1, Double value2) {
            addCriterion("i_qty between", value1, value2, "iQty");
            return (Criteria) this;
        }

        public Criteria andIQtyNotBetween(Double value1, Double value2) {
            addCriterion("i_qty not between", value1, value2, "iQty");
            return (Criteria) this;
        }

        public Criteria andIMoneyIsNull() {
            addCriterion("i_money is null");
            return (Criteria) this;
        }

        public Criteria andIMoneyIsNotNull() {
            addCriterion("i_money is not null");
            return (Criteria) this;
        }

        public Criteria andIMoneyEqualTo(Double value) {
            addCriterion("i_money =", value, "iMoney");
            return (Criteria) this;
        }

        public Criteria andIMoneyNotEqualTo(Double value) {
            addCriterion("i_money <>", value, "iMoney");
            return (Criteria) this;
        }

        public Criteria andIMoneyGreaterThan(Double value) {
            addCriterion("i_money >", value, "iMoney");
            return (Criteria) this;
        }

        public Criteria andIMoneyGreaterThanOrEqualTo(Double value) {
            addCriterion("i_money >=", value, "iMoney");
            return (Criteria) this;
        }

        public Criteria andIMoneyLessThan(Double value) {
            addCriterion("i_money <", value, "iMoney");
            return (Criteria) this;
        }

        public Criteria andIMoneyLessThanOrEqualTo(Double value) {
            addCriterion("i_money <=", value, "iMoney");
            return (Criteria) this;
        }

        public Criteria andIMoneyIn(List<Double> values) {
            addCriterion("i_money in", values, "iMoney");
            return (Criteria) this;
        }

        public Criteria andIMoneyNotIn(List<Double> values) {
            addCriterion("i_money not in", values, "iMoney");
            return (Criteria) this;
        }

        public Criteria andIMoneyBetween(Double value1, Double value2) {
            addCriterion("i_money between", value1, value2, "iMoney");
            return (Criteria) this;
        }

        public Criteria andIMoneyNotBetween(Double value1, Double value2) {
            addCriterion("i_money not between", value1, value2, "iMoney");
            return (Criteria) this;
        }

        public Criteria andIMethodIsNull() {
            addCriterion("i_method is null");
            return (Criteria) this;
        }

        public Criteria andIMethodIsNotNull() {
            addCriterion("i_method is not null");
            return (Criteria) this;
        }

        public Criteria andIMethodEqualTo(String value) {
            addCriterion("i_method =", value, "iMethod");
            return (Criteria) this;
        }

        public Criteria andIMethodNotEqualTo(String value) {
            addCriterion("i_method <>", value, "iMethod");
            return (Criteria) this;
        }

        public Criteria andIMethodGreaterThan(String value) {
            addCriterion("i_method >", value, "iMethod");
            return (Criteria) this;
        }

        public Criteria andIMethodGreaterThanOrEqualTo(String value) {
            addCriterion("i_method >=", value, "iMethod");
            return (Criteria) this;
        }

        public Criteria andIMethodLessThan(String value) {
            addCriterion("i_method <", value, "iMethod");
            return (Criteria) this;
        }

        public Criteria andIMethodLessThanOrEqualTo(String value) {
            addCriterion("i_method <=", value, "iMethod");
            return (Criteria) this;
        }

        public Criteria andIMethodLike(String value) {
            addCriterion("i_method like", value, "iMethod");
            return (Criteria) this;
        }

        public Criteria andIMethodNotLike(String value) {
            addCriterion("i_method not like", value, "iMethod");
            return (Criteria) this;
        }

        public Criteria andIMethodIn(List<String> values) {
            addCriterion("i_method in", values, "iMethod");
            return (Criteria) this;
        }

        public Criteria andIMethodNotIn(List<String> values) {
            addCriterion("i_method not in", values, "iMethod");
            return (Criteria) this;
        }

        public Criteria andIMethodBetween(String value1, String value2) {
            addCriterion("i_method between", value1, value2, "iMethod");
            return (Criteria) this;
        }

        public Criteria andIMethodNotBetween(String value1, String value2) {
            addCriterion("i_method not between", value1, value2, "iMethod");
            return (Criteria) this;
        }

        public Criteria andIInfoIsNull() {
            addCriterion("i_info is null");
            return (Criteria) this;
        }

        public Criteria andIInfoIsNotNull() {
            addCriterion("i_info is not null");
            return (Criteria) this;
        }

        public Criteria andIInfoEqualTo(String value) {
            addCriterion("i_info =", value, "iInfo");
            return (Criteria) this;
        }

        public Criteria andIInfoNotEqualTo(String value) {
            addCriterion("i_info <>", value, "iInfo");
            return (Criteria) this;
        }

        public Criteria andIInfoGreaterThan(String value) {
            addCriterion("i_info >", value, "iInfo");
            return (Criteria) this;
        }

        public Criteria andIInfoGreaterThanOrEqualTo(String value) {
            addCriterion("i_info >=", value, "iInfo");
            return (Criteria) this;
        }

        public Criteria andIInfoLessThan(String value) {
            addCriterion("i_info <", value, "iInfo");
            return (Criteria) this;
        }

        public Criteria andIInfoLessThanOrEqualTo(String value) {
            addCriterion("i_info <=", value, "iInfo");
            return (Criteria) this;
        }

        public Criteria andIInfoLike(String value) {
            addCriterion("i_info like", value, "iInfo");
            return (Criteria) this;
        }

        public Criteria andIInfoNotLike(String value) {
            addCriterion("i_info not like", value, "iInfo");
            return (Criteria) this;
        }

        public Criteria andIInfoIn(List<String> values) {
            addCriterion("i_info in", values, "iInfo");
            return (Criteria) this;
        }

        public Criteria andIInfoNotIn(List<String> values) {
            addCriterion("i_info not in", values, "iInfo");
            return (Criteria) this;
        }

        public Criteria andIInfoBetween(String value1, String value2) {
            addCriterion("i_info between", value1, value2, "iInfo");
            return (Criteria) this;
        }

        public Criteria andIInfoNotBetween(String value1, String value2) {
            addCriterion("i_info not between", value1, value2, "iInfo");
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