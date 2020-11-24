package com.model;

import java.util.ArrayList;
import java.util.List;

public class CurveElementExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    private Integer limit;

    private Long offset;

    public CurveElementExample() {
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

        public Criteria andCeIdIsNull() {
            addCriterion("ce_ID is null");
            return (Criteria) this;
        }

        public Criteria andCeIdIsNotNull() {
            addCriterion("ce_ID is not null");
            return (Criteria) this;
        }

        public Criteria andCeIdEqualTo(Integer value) {
            addCriterion("ce_ID =", value, "ceId");
            return (Criteria) this;
        }

        public Criteria andCeIdNotEqualTo(Integer value) {
            addCriterion("ce_ID <>", value, "ceId");
            return (Criteria) this;
        }

        public Criteria andCeIdGreaterThan(Integer value) {
            addCriterion("ce_ID >", value, "ceId");
            return (Criteria) this;
        }

        public Criteria andCeIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("ce_ID >=", value, "ceId");
            return (Criteria) this;
        }

        public Criteria andCeIdLessThan(Integer value) {
            addCriterion("ce_ID <", value, "ceId");
            return (Criteria) this;
        }

        public Criteria andCeIdLessThanOrEqualTo(Integer value) {
            addCriterion("ce_ID <=", value, "ceId");
            return (Criteria) this;
        }

        public Criteria andCeIdIn(List<Integer> values) {
            addCriterion("ce_ID in", values, "ceId");
            return (Criteria) this;
        }

        public Criteria andCeIdNotIn(List<Integer> values) {
            addCriterion("ce_ID not in", values, "ceId");
            return (Criteria) this;
        }

        public Criteria andCeIdBetween(Integer value1, Integer value2) {
            addCriterion("ce_ID between", value1, value2, "ceId");
            return (Criteria) this;
        }

        public Criteria andCeIdNotBetween(Integer value1, Integer value2) {
            addCriterion("ce_ID not between", value1, value2, "ceId");
            return (Criteria) this;
        }

        public Criteria andCeJdIsNull() {
            addCriterion("ce_JD is null");
            return (Criteria) this;
        }

        public Criteria andCeJdIsNotNull() {
            addCriterion("ce_JD is not null");
            return (Criteria) this;
        }

        public Criteria andCeJdEqualTo(String value) {
            addCriterion("ce_JD =", value, "ceJd");
            return (Criteria) this;
        }

        public Criteria andCeJdNotEqualTo(String value) {
            addCriterion("ce_JD <>", value, "ceJd");
            return (Criteria) this;
        }

        public Criteria andCeJdGreaterThan(String value) {
            addCriterion("ce_JD >", value, "ceJd");
            return (Criteria) this;
        }

        public Criteria andCeJdGreaterThanOrEqualTo(String value) {
            addCriterion("ce_JD >=", value, "ceJd");
            return (Criteria) this;
        }

        public Criteria andCeJdLessThan(String value) {
            addCriterion("ce_JD <", value, "ceJd");
            return (Criteria) this;
        }

        public Criteria andCeJdLessThanOrEqualTo(String value) {
            addCriterion("ce_JD <=", value, "ceJd");
            return (Criteria) this;
        }

        public Criteria andCeJdLike(String value) {
            addCriterion("ce_JD like", value, "ceJd");
            return (Criteria) this;
        }

        public Criteria andCeJdNotLike(String value) {
            addCriterion("ce_JD not like", value, "ceJd");
            return (Criteria) this;
        }

        public Criteria andCeJdIn(List<String> values) {
            addCriterion("ce_JD in", values, "ceJd");
            return (Criteria) this;
        }

        public Criteria andCeJdNotIn(List<String> values) {
            addCriterion("ce_JD not in", values, "ceJd");
            return (Criteria) this;
        }

        public Criteria andCeJdBetween(String value1, String value2) {
            addCriterion("ce_JD between", value1, value2, "ceJd");
            return (Criteria) this;
        }

        public Criteria andCeJdNotBetween(String value1, String value2) {
            addCriterion("ce_JD not between", value1, value2, "ceJd");
            return (Criteria) this;
        }

        public Criteria andCeDkIsNull() {
            addCriterion("ce_DK is null");
            return (Criteria) this;
        }

        public Criteria andCeDkIsNotNull() {
            addCriterion("ce_DK is not null");
            return (Criteria) this;
        }

        public Criteria andCeDkEqualTo(Double value) {
            addCriterion("ce_DK =", value, "ceDk");
            return (Criteria) this;
        }

        public Criteria andCeDkNotEqualTo(Double value) {
            addCriterion("ce_DK <>", value, "ceDk");
            return (Criteria) this;
        }

        public Criteria andCeDkGreaterThan(Double value) {
            addCriterion("ce_DK >", value, "ceDk");
            return (Criteria) this;
        }

        public Criteria andCeDkGreaterThanOrEqualTo(Double value) {
            addCriterion("ce_DK >=", value, "ceDk");
            return (Criteria) this;
        }

        public Criteria andCeDkLessThan(Double value) {
            addCriterion("ce_DK <", value, "ceDk");
            return (Criteria) this;
        }

        public Criteria andCeDkLessThanOrEqualTo(Double value) {
            addCriterion("ce_DK <=", value, "ceDk");
            return (Criteria) this;
        }

        public Criteria andCeDkIn(List<Double> values) {
            addCriterion("ce_DK in", values, "ceDk");
            return (Criteria) this;
        }

        public Criteria andCeDkNotIn(List<Double> values) {
            addCriterion("ce_DK not in", values, "ceDk");
            return (Criteria) this;
        }

        public Criteria andCeDkBetween(Double value1, Double value2) {
            addCriterion("ce_DK between", value1, value2, "ceDk");
            return (Criteria) this;
        }

        public Criteria andCeDkNotBetween(Double value1, Double value2) {
            addCriterion("ce_DK not between", value1, value2, "ceDk");
            return (Criteria) this;
        }

        public Criteria andCeExIsNull() {
            addCriterion("ce_EX is null");
            return (Criteria) this;
        }

        public Criteria andCeExIsNotNull() {
            addCriterion("ce_EX is not null");
            return (Criteria) this;
        }

        public Criteria andCeExEqualTo(Double value) {
            addCriterion("ce_EX =", value, "ceEx");
            return (Criteria) this;
        }

        public Criteria andCeExNotEqualTo(Double value) {
            addCriterion("ce_EX <>", value, "ceEx");
            return (Criteria) this;
        }

        public Criteria andCeExGreaterThan(Double value) {
            addCriterion("ce_EX >", value, "ceEx");
            return (Criteria) this;
        }

        public Criteria andCeExGreaterThanOrEqualTo(Double value) {
            addCriterion("ce_EX >=", value, "ceEx");
            return (Criteria) this;
        }

        public Criteria andCeExLessThan(Double value) {
            addCriterion("ce_EX <", value, "ceEx");
            return (Criteria) this;
        }

        public Criteria andCeExLessThanOrEqualTo(Double value) {
            addCriterion("ce_EX <=", value, "ceEx");
            return (Criteria) this;
        }

        public Criteria andCeExIn(List<Double> values) {
            addCriterion("ce_EX in", values, "ceEx");
            return (Criteria) this;
        }

        public Criteria andCeExNotIn(List<Double> values) {
            addCriterion("ce_EX not in", values, "ceEx");
            return (Criteria) this;
        }

        public Criteria andCeExBetween(Double value1, Double value2) {
            addCriterion("ce_EX between", value1, value2, "ceEx");
            return (Criteria) this;
        }

        public Criteria andCeExNotBetween(Double value1, Double value2) {
            addCriterion("ce_EX not between", value1, value2, "ceEx");
            return (Criteria) this;
        }

        public Criteria andCeNyIsNull() {
            addCriterion("ce_NY is null");
            return (Criteria) this;
        }

        public Criteria andCeNyIsNotNull() {
            addCriterion("ce_NY is not null");
            return (Criteria) this;
        }

        public Criteria andCeNyEqualTo(Double value) {
            addCriterion("ce_NY =", value, "ceNy");
            return (Criteria) this;
        }

        public Criteria andCeNyNotEqualTo(Double value) {
            addCriterion("ce_NY <>", value, "ceNy");
            return (Criteria) this;
        }

        public Criteria andCeNyGreaterThan(Double value) {
            addCriterion("ce_NY >", value, "ceNy");
            return (Criteria) this;
        }

        public Criteria andCeNyGreaterThanOrEqualTo(Double value) {
            addCriterion("ce_NY >=", value, "ceNy");
            return (Criteria) this;
        }

        public Criteria andCeNyLessThan(Double value) {
            addCriterion("ce_NY <", value, "ceNy");
            return (Criteria) this;
        }

        public Criteria andCeNyLessThanOrEqualTo(Double value) {
            addCriterion("ce_NY <=", value, "ceNy");
            return (Criteria) this;
        }

        public Criteria andCeNyIn(List<Double> values) {
            addCriterion("ce_NY in", values, "ceNy");
            return (Criteria) this;
        }

        public Criteria andCeNyNotIn(List<Double> values) {
            addCriterion("ce_NY not in", values, "ceNy");
            return (Criteria) this;
        }

        public Criteria andCeNyBetween(Double value1, Double value2) {
            addCriterion("ce_NY between", value1, value2, "ceNy");
            return (Criteria) this;
        }

        public Criteria andCeNyNotBetween(Double value1, Double value2) {
            addCriterion("ce_NY not between", value1, value2, "ceNy");
            return (Criteria) this;
        }

        public Criteria andCeT1IsNull() {
            addCriterion("ce_T1 is null");
            return (Criteria) this;
        }

        public Criteria andCeT1IsNotNull() {
            addCriterion("ce_T1 is not null");
            return (Criteria) this;
        }

        public Criteria andCeT1EqualTo(Double value) {
            addCriterion("ce_T1 =", value, "ceT1");
            return (Criteria) this;
        }

        public Criteria andCeT1NotEqualTo(Double value) {
            addCriterion("ce_T1 <>", value, "ceT1");
            return (Criteria) this;
        }

        public Criteria andCeT1GreaterThan(Double value) {
            addCriterion("ce_T1 >", value, "ceT1");
            return (Criteria) this;
        }

        public Criteria andCeT1GreaterThanOrEqualTo(Double value) {
            addCriterion("ce_T1 >=", value, "ceT1");
            return (Criteria) this;
        }

        public Criteria andCeT1LessThan(Double value) {
            addCriterion("ce_T1 <", value, "ceT1");
            return (Criteria) this;
        }

        public Criteria andCeT1LessThanOrEqualTo(Double value) {
            addCriterion("ce_T1 <=", value, "ceT1");
            return (Criteria) this;
        }

        public Criteria andCeT1In(List<Double> values) {
            addCriterion("ce_T1 in", values, "ceT1");
            return (Criteria) this;
        }

        public Criteria andCeT1NotIn(List<Double> values) {
            addCriterion("ce_T1 not in", values, "ceT1");
            return (Criteria) this;
        }

        public Criteria andCeT1Between(Double value1, Double value2) {
            addCriterion("ce_T1 between", value1, value2, "ceT1");
            return (Criteria) this;
        }

        public Criteria andCeT1NotBetween(Double value1, Double value2) {
            addCriterion("ce_T1 not between", value1, value2, "ceT1");
            return (Criteria) this;
        }

        public Criteria andCeT2IsNull() {
            addCriterion("ce_T2 is null");
            return (Criteria) this;
        }

        public Criteria andCeT2IsNotNull() {
            addCriterion("ce_T2 is not null");
            return (Criteria) this;
        }

        public Criteria andCeT2EqualTo(Double value) {
            addCriterion("ce_T2 =", value, "ceT2");
            return (Criteria) this;
        }

        public Criteria andCeT2NotEqualTo(Double value) {
            addCriterion("ce_T2 <>", value, "ceT2");
            return (Criteria) this;
        }

        public Criteria andCeT2GreaterThan(Double value) {
            addCriterion("ce_T2 >", value, "ceT2");
            return (Criteria) this;
        }

        public Criteria andCeT2GreaterThanOrEqualTo(Double value) {
            addCriterion("ce_T2 >=", value, "ceT2");
            return (Criteria) this;
        }

        public Criteria andCeT2LessThan(Double value) {
            addCriterion("ce_T2 <", value, "ceT2");
            return (Criteria) this;
        }

        public Criteria andCeT2LessThanOrEqualTo(Double value) {
            addCriterion("ce_T2 <=", value, "ceT2");
            return (Criteria) this;
        }

        public Criteria andCeT2In(List<Double> values) {
            addCriterion("ce_T2 in", values, "ceT2");
            return (Criteria) this;
        }

        public Criteria andCeT2NotIn(List<Double> values) {
            addCriterion("ce_T2 not in", values, "ceT2");
            return (Criteria) this;
        }

        public Criteria andCeT2Between(Double value1, Double value2) {
            addCriterion("ce_T2 between", value1, value2, "ceT2");
            return (Criteria) this;
        }

        public Criteria andCeT2NotBetween(Double value1, Double value2) {
            addCriterion("ce_T2 not between", value1, value2, "ceT2");
            return (Criteria) this;
        }

        public Criteria andCeR1IsNull() {
            addCriterion("ce_R1 is null");
            return (Criteria) this;
        }

        public Criteria andCeR1IsNotNull() {
            addCriterion("ce_R1 is not null");
            return (Criteria) this;
        }

        public Criteria andCeR1EqualTo(Double value) {
            addCriterion("ce_R1 =", value, "ceR1");
            return (Criteria) this;
        }

        public Criteria andCeR1NotEqualTo(Double value) {
            addCriterion("ce_R1 <>", value, "ceR1");
            return (Criteria) this;
        }

        public Criteria andCeR1GreaterThan(Double value) {
            addCriterion("ce_R1 >", value, "ceR1");
            return (Criteria) this;
        }

        public Criteria andCeR1GreaterThanOrEqualTo(Double value) {
            addCriterion("ce_R1 >=", value, "ceR1");
            return (Criteria) this;
        }

        public Criteria andCeR1LessThan(Double value) {
            addCriterion("ce_R1 <", value, "ceR1");
            return (Criteria) this;
        }

        public Criteria andCeR1LessThanOrEqualTo(Double value) {
            addCriterion("ce_R1 <=", value, "ceR1");
            return (Criteria) this;
        }

        public Criteria andCeR1In(List<Double> values) {
            addCriterion("ce_R1 in", values, "ceR1");
            return (Criteria) this;
        }

        public Criteria andCeR1NotIn(List<Double> values) {
            addCriterion("ce_R1 not in", values, "ceR1");
            return (Criteria) this;
        }

        public Criteria andCeR1Between(Double value1, Double value2) {
            addCriterion("ce_R1 between", value1, value2, "ceR1");
            return (Criteria) this;
        }

        public Criteria andCeR1NotBetween(Double value1, Double value2) {
            addCriterion("ce_R1 not between", value1, value2, "ceR1");
            return (Criteria) this;
        }

        public Criteria andCeR2IsNull() {
            addCriterion("ce_R2 is null");
            return (Criteria) this;
        }

        public Criteria andCeR2IsNotNull() {
            addCriterion("ce_R2 is not null");
            return (Criteria) this;
        }

        public Criteria andCeR2EqualTo(Double value) {
            addCriterion("ce_R2 =", value, "ceR2");
            return (Criteria) this;
        }

        public Criteria andCeR2NotEqualTo(Double value) {
            addCriterion("ce_R2 <>", value, "ceR2");
            return (Criteria) this;
        }

        public Criteria andCeR2GreaterThan(Double value) {
            addCriterion("ce_R2 >", value, "ceR2");
            return (Criteria) this;
        }

        public Criteria andCeR2GreaterThanOrEqualTo(Double value) {
            addCriterion("ce_R2 >=", value, "ceR2");
            return (Criteria) this;
        }

        public Criteria andCeR2LessThan(Double value) {
            addCriterion("ce_R2 <", value, "ceR2");
            return (Criteria) this;
        }

        public Criteria andCeR2LessThanOrEqualTo(Double value) {
            addCriterion("ce_R2 <=", value, "ceR2");
            return (Criteria) this;
        }

        public Criteria andCeR2In(List<Double> values) {
            addCriterion("ce_R2 in", values, "ceR2");
            return (Criteria) this;
        }

        public Criteria andCeR2NotIn(List<Double> values) {
            addCriterion("ce_R2 not in", values, "ceR2");
            return (Criteria) this;
        }

        public Criteria andCeR2Between(Double value1, Double value2) {
            addCriterion("ce_R2 between", value1, value2, "ceR2");
            return (Criteria) this;
        }

        public Criteria andCeR2NotBetween(Double value1, Double value2) {
            addCriterion("ce_R2 not between", value1, value2, "ceR2");
            return (Criteria) this;
        }

        public Criteria andCeRcIsNull() {
            addCriterion("ce_Rc is null");
            return (Criteria) this;
        }

        public Criteria andCeRcIsNotNull() {
            addCriterion("ce_Rc is not null");
            return (Criteria) this;
        }

        public Criteria andCeRcEqualTo(Double value) {
            addCriterion("ce_Rc =", value, "ceRc");
            return (Criteria) this;
        }

        public Criteria andCeRcNotEqualTo(Double value) {
            addCriterion("ce_Rc <>", value, "ceRc");
            return (Criteria) this;
        }

        public Criteria andCeRcGreaterThan(Double value) {
            addCriterion("ce_Rc >", value, "ceRc");
            return (Criteria) this;
        }

        public Criteria andCeRcGreaterThanOrEqualTo(Double value) {
            addCriterion("ce_Rc >=", value, "ceRc");
            return (Criteria) this;
        }

        public Criteria andCeRcLessThan(Double value) {
            addCriterion("ce_Rc <", value, "ceRc");
            return (Criteria) this;
        }

        public Criteria andCeRcLessThanOrEqualTo(Double value) {
            addCriterion("ce_Rc <=", value, "ceRc");
            return (Criteria) this;
        }

        public Criteria andCeRcIn(List<Double> values) {
            addCriterion("ce_Rc in", values, "ceRc");
            return (Criteria) this;
        }

        public Criteria andCeRcNotIn(List<Double> values) {
            addCriterion("ce_Rc not in", values, "ceRc");
            return (Criteria) this;
        }

        public Criteria andCeRcBetween(Double value1, Double value2) {
            addCriterion("ce_Rc between", value1, value2, "ceRc");
            return (Criteria) this;
        }

        public Criteria andCeRcNotBetween(Double value1, Double value2) {
            addCriterion("ce_Rc not between", value1, value2, "ceRc");
            return (Criteria) this;
        }

        public Criteria andCeA1IsNull() {
            addCriterion("ce_A1 is null");
            return (Criteria) this;
        }

        public Criteria andCeA1IsNotNull() {
            addCriterion("ce_A1 is not null");
            return (Criteria) this;
        }

        public Criteria andCeA1EqualTo(Double value) {
            addCriterion("ce_A1 =", value, "ceA1");
            return (Criteria) this;
        }

        public Criteria andCeA1NotEqualTo(Double value) {
            addCriterion("ce_A1 <>", value, "ceA1");
            return (Criteria) this;
        }

        public Criteria andCeA1GreaterThan(Double value) {
            addCriterion("ce_A1 >", value, "ceA1");
            return (Criteria) this;
        }

        public Criteria andCeA1GreaterThanOrEqualTo(Double value) {
            addCriterion("ce_A1 >=", value, "ceA1");
            return (Criteria) this;
        }

        public Criteria andCeA1LessThan(Double value) {
            addCriterion("ce_A1 <", value, "ceA1");
            return (Criteria) this;
        }

        public Criteria andCeA1LessThanOrEqualTo(Double value) {
            addCriterion("ce_A1 <=", value, "ceA1");
            return (Criteria) this;
        }

        public Criteria andCeA1In(List<Double> values) {
            addCriterion("ce_A1 in", values, "ceA1");
            return (Criteria) this;
        }

        public Criteria andCeA1NotIn(List<Double> values) {
            addCriterion("ce_A1 not in", values, "ceA1");
            return (Criteria) this;
        }

        public Criteria andCeA1Between(Double value1, Double value2) {
            addCriterion("ce_A1 between", value1, value2, "ceA1");
            return (Criteria) this;
        }

        public Criteria andCeA1NotBetween(Double value1, Double value2) {
            addCriterion("ce_A1 not between", value1, value2, "ceA1");
            return (Criteria) this;
        }

        public Criteria andCeA2IsNull() {
            addCriterion("ce_A2 is null");
            return (Criteria) this;
        }

        public Criteria andCeA2IsNotNull() {
            addCriterion("ce_A2 is not null");
            return (Criteria) this;
        }

        public Criteria andCeA2EqualTo(Double value) {
            addCriterion("ce_A2 =", value, "ceA2");
            return (Criteria) this;
        }

        public Criteria andCeA2NotEqualTo(Double value) {
            addCriterion("ce_A2 <>", value, "ceA2");
            return (Criteria) this;
        }

        public Criteria andCeA2GreaterThan(Double value) {
            addCriterion("ce_A2 >", value, "ceA2");
            return (Criteria) this;
        }

        public Criteria andCeA2GreaterThanOrEqualTo(Double value) {
            addCriterion("ce_A2 >=", value, "ceA2");
            return (Criteria) this;
        }

        public Criteria andCeA2LessThan(Double value) {
            addCriterion("ce_A2 <", value, "ceA2");
            return (Criteria) this;
        }

        public Criteria andCeA2LessThanOrEqualTo(Double value) {
            addCriterion("ce_A2 <=", value, "ceA2");
            return (Criteria) this;
        }

        public Criteria andCeA2In(List<Double> values) {
            addCriterion("ce_A2 in", values, "ceA2");
            return (Criteria) this;
        }

        public Criteria andCeA2NotIn(List<Double> values) {
            addCriterion("ce_A2 not in", values, "ceA2");
            return (Criteria) this;
        }

        public Criteria andCeA2Between(Double value1, Double value2) {
            addCriterion("ce_A2 between", value1, value2, "ceA2");
            return (Criteria) this;
        }

        public Criteria andCeA2NotBetween(Double value1, Double value2) {
            addCriterion("ce_A2 not between", value1, value2, "ceA2");
            return (Criteria) this;
        }

        public Criteria andCeLs1IsNull() {
            addCriterion("ce_Ls1 is null");
            return (Criteria) this;
        }

        public Criteria andCeLs1IsNotNull() {
            addCriterion("ce_Ls1 is not null");
            return (Criteria) this;
        }

        public Criteria andCeLs1EqualTo(Double value) {
            addCriterion("ce_Ls1 =", value, "ceLs1");
            return (Criteria) this;
        }

        public Criteria andCeLs1NotEqualTo(Double value) {
            addCriterion("ce_Ls1 <>", value, "ceLs1");
            return (Criteria) this;
        }

        public Criteria andCeLs1GreaterThan(Double value) {
            addCriterion("ce_Ls1 >", value, "ceLs1");
            return (Criteria) this;
        }

        public Criteria andCeLs1GreaterThanOrEqualTo(Double value) {
            addCriterion("ce_Ls1 >=", value, "ceLs1");
            return (Criteria) this;
        }

        public Criteria andCeLs1LessThan(Double value) {
            addCriterion("ce_Ls1 <", value, "ceLs1");
            return (Criteria) this;
        }

        public Criteria andCeLs1LessThanOrEqualTo(Double value) {
            addCriterion("ce_Ls1 <=", value, "ceLs1");
            return (Criteria) this;
        }

        public Criteria andCeLs1In(List<Double> values) {
            addCriterion("ce_Ls1 in", values, "ceLs1");
            return (Criteria) this;
        }

        public Criteria andCeLs1NotIn(List<Double> values) {
            addCriterion("ce_Ls1 not in", values, "ceLs1");
            return (Criteria) this;
        }

        public Criteria andCeLs1Between(Double value1, Double value2) {
            addCriterion("ce_Ls1 between", value1, value2, "ceLs1");
            return (Criteria) this;
        }

        public Criteria andCeLs1NotBetween(Double value1, Double value2) {
            addCriterion("ce_Ls1 not between", value1, value2, "ceLs1");
            return (Criteria) this;
        }

        public Criteria andCeLs2IsNull() {
            addCriterion("ce_Ls2 is null");
            return (Criteria) this;
        }

        public Criteria andCeLs2IsNotNull() {
            addCriterion("ce_Ls2 is not null");
            return (Criteria) this;
        }

        public Criteria andCeLs2EqualTo(Double value) {
            addCriterion("ce_Ls2 =", value, "ceLs2");
            return (Criteria) this;
        }

        public Criteria andCeLs2NotEqualTo(Double value) {
            addCriterion("ce_Ls2 <>", value, "ceLs2");
            return (Criteria) this;
        }

        public Criteria andCeLs2GreaterThan(Double value) {
            addCriterion("ce_Ls2 >", value, "ceLs2");
            return (Criteria) this;
        }

        public Criteria andCeLs2GreaterThanOrEqualTo(Double value) {
            addCriterion("ce_Ls2 >=", value, "ceLs2");
            return (Criteria) this;
        }

        public Criteria andCeLs2LessThan(Double value) {
            addCriterion("ce_Ls2 <", value, "ceLs2");
            return (Criteria) this;
        }

        public Criteria andCeLs2LessThanOrEqualTo(Double value) {
            addCriterion("ce_Ls2 <=", value, "ceLs2");
            return (Criteria) this;
        }

        public Criteria andCeLs2In(List<Double> values) {
            addCriterion("ce_Ls2 in", values, "ceLs2");
            return (Criteria) this;
        }

        public Criteria andCeLs2NotIn(List<Double> values) {
            addCriterion("ce_Ls2 not in", values, "ceLs2");
            return (Criteria) this;
        }

        public Criteria andCeLs2Between(Double value1, Double value2) {
            addCriterion("ce_Ls2 between", value1, value2, "ceLs2");
            return (Criteria) this;
        }

        public Criteria andCeLs2NotBetween(Double value1, Double value2) {
            addCriterion("ce_Ls2 not between", value1, value2, "ceLs2");
            return (Criteria) this;
        }

        public Criteria andCeLcIsNull() {
            addCriterion("ce_Lc is null");
            return (Criteria) this;
        }

        public Criteria andCeLcIsNotNull() {
            addCriterion("ce_Lc is not null");
            return (Criteria) this;
        }

        public Criteria andCeLcEqualTo(Double value) {
            addCriterion("ce_Lc =", value, "ceLc");
            return (Criteria) this;
        }

        public Criteria andCeLcNotEqualTo(Double value) {
            addCriterion("ce_Lc <>", value, "ceLc");
            return (Criteria) this;
        }

        public Criteria andCeLcGreaterThan(Double value) {
            addCriterion("ce_Lc >", value, "ceLc");
            return (Criteria) this;
        }

        public Criteria andCeLcGreaterThanOrEqualTo(Double value) {
            addCriterion("ce_Lc >=", value, "ceLc");
            return (Criteria) this;
        }

        public Criteria andCeLcLessThan(Double value) {
            addCriterion("ce_Lc <", value, "ceLc");
            return (Criteria) this;
        }

        public Criteria andCeLcLessThanOrEqualTo(Double value) {
            addCriterion("ce_Lc <=", value, "ceLc");
            return (Criteria) this;
        }

        public Criteria andCeLcIn(List<Double> values) {
            addCriterion("ce_Lc in", values, "ceLc");
            return (Criteria) this;
        }

        public Criteria andCeLcNotIn(List<Double> values) {
            addCriterion("ce_Lc not in", values, "ceLc");
            return (Criteria) this;
        }

        public Criteria andCeLcBetween(Double value1, Double value2) {
            addCriterion("ce_Lc between", value1, value2, "ceLc");
            return (Criteria) this;
        }

        public Criteria andCeLcNotBetween(Double value1, Double value2) {
            addCriterion("ce_Lc not between", value1, value2, "ceLc");
            return (Criteria) this;
        }

        public Criteria andCeLzIsNull() {
            addCriterion("ce_Lz is null");
            return (Criteria) this;
        }

        public Criteria andCeLzIsNotNull() {
            addCriterion("ce_Lz is not null");
            return (Criteria) this;
        }

        public Criteria andCeLzEqualTo(Double value) {
            addCriterion("ce_Lz =", value, "ceLz");
            return (Criteria) this;
        }

        public Criteria andCeLzNotEqualTo(Double value) {
            addCriterion("ce_Lz <>", value, "ceLz");
            return (Criteria) this;
        }

        public Criteria andCeLzGreaterThan(Double value) {
            addCriterion("ce_Lz >", value, "ceLz");
            return (Criteria) this;
        }

        public Criteria andCeLzGreaterThanOrEqualTo(Double value) {
            addCriterion("ce_Lz >=", value, "ceLz");
            return (Criteria) this;
        }

        public Criteria andCeLzLessThan(Double value) {
            addCriterion("ce_Lz <", value, "ceLz");
            return (Criteria) this;
        }

        public Criteria andCeLzLessThanOrEqualTo(Double value) {
            addCriterion("ce_Lz <=", value, "ceLz");
            return (Criteria) this;
        }

        public Criteria andCeLzIn(List<Double> values) {
            addCriterion("ce_Lz in", values, "ceLz");
            return (Criteria) this;
        }

        public Criteria andCeLzNotIn(List<Double> values) {
            addCriterion("ce_Lz not in", values, "ceLz");
            return (Criteria) this;
        }

        public Criteria andCeLzBetween(Double value1, Double value2) {
            addCriterion("ce_Lz between", value1, value2, "ceLz");
            return (Criteria) this;
        }

        public Criteria andCeLzNotBetween(Double value1, Double value2) {
            addCriterion("ce_Lz not between", value1, value2, "ceLz");
            return (Criteria) this;
        }

        public Criteria andCeLIsNull() {
            addCriterion("ce_L is null");
            return (Criteria) this;
        }

        public Criteria andCeLIsNotNull() {
            addCriterion("ce_L is not null");
            return (Criteria) this;
        }

        public Criteria andCeLEqualTo(Double value) {
            addCriterion("ce_L =", value, "ceL");
            return (Criteria) this;
        }

        public Criteria andCeLNotEqualTo(Double value) {
            addCriterion("ce_L <>", value, "ceL");
            return (Criteria) this;
        }

        public Criteria andCeLGreaterThan(Double value) {
            addCriterion("ce_L >", value, "ceL");
            return (Criteria) this;
        }

        public Criteria andCeLGreaterThanOrEqualTo(Double value) {
            addCriterion("ce_L >=", value, "ceL");
            return (Criteria) this;
        }

        public Criteria andCeLLessThan(Double value) {
            addCriterion("ce_L <", value, "ceL");
            return (Criteria) this;
        }

        public Criteria andCeLLessThanOrEqualTo(Double value) {
            addCriterion("ce_L <=", value, "ceL");
            return (Criteria) this;
        }

        public Criteria andCeLIn(List<Double> values) {
            addCriterion("ce_L in", values, "ceL");
            return (Criteria) this;
        }

        public Criteria andCeLNotIn(List<Double> values) {
            addCriterion("ce_L not in", values, "ceL");
            return (Criteria) this;
        }

        public Criteria andCeLBetween(Double value1, Double value2) {
            addCriterion("ce_L between", value1, value2, "ceL");
            return (Criteria) this;
        }

        public Criteria andCeLNotBetween(Double value1, Double value2) {
            addCriterion("ce_L not between", value1, value2, "ceL");
            return (Criteria) this;
        }

        public Criteria andCeEIsNull() {
            addCriterion("ce_E is null");
            return (Criteria) this;
        }

        public Criteria andCeEIsNotNull() {
            addCriterion("ce_E is not null");
            return (Criteria) this;
        }

        public Criteria andCeEEqualTo(Double value) {
            addCriterion("ce_E =", value, "ceE");
            return (Criteria) this;
        }

        public Criteria andCeENotEqualTo(Double value) {
            addCriterion("ce_E <>", value, "ceE");
            return (Criteria) this;
        }

        public Criteria andCeEGreaterThan(Double value) {
            addCriterion("ce_E >", value, "ceE");
            return (Criteria) this;
        }

        public Criteria andCeEGreaterThanOrEqualTo(Double value) {
            addCriterion("ce_E >=", value, "ceE");
            return (Criteria) this;
        }

        public Criteria andCeELessThan(Double value) {
            addCriterion("ce_E <", value, "ceE");
            return (Criteria) this;
        }

        public Criteria andCeELessThanOrEqualTo(Double value) {
            addCriterion("ce_E <=", value, "ceE");
            return (Criteria) this;
        }

        public Criteria andCeEIn(List<Double> values) {
            addCriterion("ce_E in", values, "ceE");
            return (Criteria) this;
        }

        public Criteria andCeENotIn(List<Double> values) {
            addCriterion("ce_E not in", values, "ceE");
            return (Criteria) this;
        }

        public Criteria andCeEBetween(Double value1, Double value2) {
            addCriterion("ce_E between", value1, value2, "ceE");
            return (Criteria) this;
        }

        public Criteria andCeENotBetween(Double value1, Double value2) {
            addCriterion("ce_E not between", value1, value2, "ceE");
            return (Criteria) this;
        }

        public Criteria andCePjIsNull() {
            addCriterion("ce_PJ is null");
            return (Criteria) this;
        }

        public Criteria andCePjIsNotNull() {
            addCriterion("ce_PJ is not null");
            return (Criteria) this;
        }

        public Criteria andCePjEqualTo(Double value) {
            addCriterion("ce_PJ =", value, "cePj");
            return (Criteria) this;
        }

        public Criteria andCePjNotEqualTo(Double value) {
            addCriterion("ce_PJ <>", value, "cePj");
            return (Criteria) this;
        }

        public Criteria andCePjGreaterThan(Double value) {
            addCriterion("ce_PJ >", value, "cePj");
            return (Criteria) this;
        }

        public Criteria andCePjGreaterThanOrEqualTo(Double value) {
            addCriterion("ce_PJ >=", value, "cePj");
            return (Criteria) this;
        }

        public Criteria andCePjLessThan(Double value) {
            addCriterion("ce_PJ <", value, "cePj");
            return (Criteria) this;
        }

        public Criteria andCePjLessThanOrEqualTo(Double value) {
            addCriterion("ce_PJ <=", value, "cePj");
            return (Criteria) this;
        }

        public Criteria andCePjIn(List<Double> values) {
            addCriterion("ce_PJ in", values, "cePj");
            return (Criteria) this;
        }

        public Criteria andCePjNotIn(List<Double> values) {
            addCriterion("ce_PJ not in", values, "cePj");
            return (Criteria) this;
        }

        public Criteria andCePjBetween(Double value1, Double value2) {
            addCriterion("ce_PJ between", value1, value2, "cePj");
            return (Criteria) this;
        }

        public Criteria andCePjNotBetween(Double value1, Double value2) {
            addCriterion("ce_PJ not between", value1, value2, "cePj");
            return (Criteria) this;
        }

        public Criteria andCeFwjIsNull() {
            addCriterion("ce_FWJ is null");
            return (Criteria) this;
        }

        public Criteria andCeFwjIsNotNull() {
            addCriterion("ce_FWJ is not null");
            return (Criteria) this;
        }

        public Criteria andCeFwjEqualTo(Double value) {
            addCriterion("ce_FWJ =", value, "ceFwj");
            return (Criteria) this;
        }

        public Criteria andCeFwjNotEqualTo(Double value) {
            addCriterion("ce_FWJ <>", value, "ceFwj");
            return (Criteria) this;
        }

        public Criteria andCeFwjGreaterThan(Double value) {
            addCriterion("ce_FWJ >", value, "ceFwj");
            return (Criteria) this;
        }

        public Criteria andCeFwjGreaterThanOrEqualTo(Double value) {
            addCriterion("ce_FWJ >=", value, "ceFwj");
            return (Criteria) this;
        }

        public Criteria andCeFwjLessThan(Double value) {
            addCriterion("ce_FWJ <", value, "ceFwj");
            return (Criteria) this;
        }

        public Criteria andCeFwjLessThanOrEqualTo(Double value) {
            addCriterion("ce_FWJ <=", value, "ceFwj");
            return (Criteria) this;
        }

        public Criteria andCeFwjIn(List<Double> values) {
            addCriterion("ce_FWJ in", values, "ceFwj");
            return (Criteria) this;
        }

        public Criteria andCeFwjNotIn(List<Double> values) {
            addCriterion("ce_FWJ not in", values, "ceFwj");
            return (Criteria) this;
        }

        public Criteria andCeFwjBetween(Double value1, Double value2) {
            addCriterion("ce_FWJ between", value1, value2, "ceFwj");
            return (Criteria) this;
        }

        public Criteria andCeFwjNotBetween(Double value1, Double value2) {
            addCriterion("ce_FWJ not between", value1, value2, "ceFwj");
            return (Criteria) this;
        }

        public Criteria andCeQdIsNull() {
            addCriterion("ce_QD is null");
            return (Criteria) this;
        }

        public Criteria andCeQdIsNotNull() {
            addCriterion("ce_QD is not null");
            return (Criteria) this;
        }

        public Criteria andCeQdEqualTo(Double value) {
            addCriterion("ce_QD =", value, "ceQd");
            return (Criteria) this;
        }

        public Criteria andCeQdNotEqualTo(Double value) {
            addCriterion("ce_QD <>", value, "ceQd");
            return (Criteria) this;
        }

        public Criteria andCeQdGreaterThan(Double value) {
            addCriterion("ce_QD >", value, "ceQd");
            return (Criteria) this;
        }

        public Criteria andCeQdGreaterThanOrEqualTo(Double value) {
            addCriterion("ce_QD >=", value, "ceQd");
            return (Criteria) this;
        }

        public Criteria andCeQdLessThan(Double value) {
            addCriterion("ce_QD <", value, "ceQd");
            return (Criteria) this;
        }

        public Criteria andCeQdLessThanOrEqualTo(Double value) {
            addCriterion("ce_QD <=", value, "ceQd");
            return (Criteria) this;
        }

        public Criteria andCeQdIn(List<Double> values) {
            addCriterion("ce_QD in", values, "ceQd");
            return (Criteria) this;
        }

        public Criteria andCeQdNotIn(List<Double> values) {
            addCriterion("ce_QD not in", values, "ceQd");
            return (Criteria) this;
        }

        public Criteria andCeQdBetween(Double value1, Double value2) {
            addCriterion("ce_QD between", value1, value2, "ceQd");
            return (Criteria) this;
        }

        public Criteria andCeQdNotBetween(Double value1, Double value2) {
            addCriterion("ce_QD not between", value1, value2, "ceQd");
            return (Criteria) this;
        }

        public Criteria andCeZhIsNull() {
            addCriterion("ce_ZH is null");
            return (Criteria) this;
        }

        public Criteria andCeZhIsNotNull() {
            addCriterion("ce_ZH is not null");
            return (Criteria) this;
        }

        public Criteria andCeZhEqualTo(Double value) {
            addCriterion("ce_ZH =", value, "ceZh");
            return (Criteria) this;
        }

        public Criteria andCeZhNotEqualTo(Double value) {
            addCriterion("ce_ZH <>", value, "ceZh");
            return (Criteria) this;
        }

        public Criteria andCeZhGreaterThan(Double value) {
            addCriterion("ce_ZH >", value, "ceZh");
            return (Criteria) this;
        }

        public Criteria andCeZhGreaterThanOrEqualTo(Double value) {
            addCriterion("ce_ZH >=", value, "ceZh");
            return (Criteria) this;
        }

        public Criteria andCeZhLessThan(Double value) {
            addCriterion("ce_ZH <", value, "ceZh");
            return (Criteria) this;
        }

        public Criteria andCeZhLessThanOrEqualTo(Double value) {
            addCriterion("ce_ZH <=", value, "ceZh");
            return (Criteria) this;
        }

        public Criteria andCeZhIn(List<Double> values) {
            addCriterion("ce_ZH in", values, "ceZh");
            return (Criteria) this;
        }

        public Criteria andCeZhNotIn(List<Double> values) {
            addCriterion("ce_ZH not in", values, "ceZh");
            return (Criteria) this;
        }

        public Criteria andCeZhBetween(Double value1, Double value2) {
            addCriterion("ce_ZH between", value1, value2, "ceZh");
            return (Criteria) this;
        }

        public Criteria andCeZhNotBetween(Double value1, Double value2) {
            addCriterion("ce_ZH not between", value1, value2, "ceZh");
            return (Criteria) this;
        }

        public Criteria andCeHyIsNull() {
            addCriterion("ce_HY is null");
            return (Criteria) this;
        }

        public Criteria andCeHyIsNotNull() {
            addCriterion("ce_HY is not null");
            return (Criteria) this;
        }

        public Criteria andCeHyEqualTo(Double value) {
            addCriterion("ce_HY =", value, "ceHy");
            return (Criteria) this;
        }

        public Criteria andCeHyNotEqualTo(Double value) {
            addCriterion("ce_HY <>", value, "ceHy");
            return (Criteria) this;
        }

        public Criteria andCeHyGreaterThan(Double value) {
            addCriterion("ce_HY >", value, "ceHy");
            return (Criteria) this;
        }

        public Criteria andCeHyGreaterThanOrEqualTo(Double value) {
            addCriterion("ce_HY >=", value, "ceHy");
            return (Criteria) this;
        }

        public Criteria andCeHyLessThan(Double value) {
            addCriterion("ce_HY <", value, "ceHy");
            return (Criteria) this;
        }

        public Criteria andCeHyLessThanOrEqualTo(Double value) {
            addCriterion("ce_HY <=", value, "ceHy");
            return (Criteria) this;
        }

        public Criteria andCeHyIn(List<Double> values) {
            addCriterion("ce_HY in", values, "ceHy");
            return (Criteria) this;
        }

        public Criteria andCeHyNotIn(List<Double> values) {
            addCriterion("ce_HY not in", values, "ceHy");
            return (Criteria) this;
        }

        public Criteria andCeHyBetween(Double value1, Double value2) {
            addCriterion("ce_HY between", value1, value2, "ceHy");
            return (Criteria) this;
        }

        public Criteria andCeHyNotBetween(Double value1, Double value2) {
            addCriterion("ce_HY not between", value1, value2, "ceHy");
            return (Criteria) this;
        }

        public Criteria andCeQzIsNull() {
            addCriterion("ce_QZ is null");
            return (Criteria) this;
        }

        public Criteria andCeQzIsNotNull() {
            addCriterion("ce_QZ is not null");
            return (Criteria) this;
        }

        public Criteria andCeQzEqualTo(Double value) {
            addCriterion("ce_QZ =", value, "ceQz");
            return (Criteria) this;
        }

        public Criteria andCeQzNotEqualTo(Double value) {
            addCriterion("ce_QZ <>", value, "ceQz");
            return (Criteria) this;
        }

        public Criteria andCeQzGreaterThan(Double value) {
            addCriterion("ce_QZ >", value, "ceQz");
            return (Criteria) this;
        }

        public Criteria andCeQzGreaterThanOrEqualTo(Double value) {
            addCriterion("ce_QZ >=", value, "ceQz");
            return (Criteria) this;
        }

        public Criteria andCeQzLessThan(Double value) {
            addCriterion("ce_QZ <", value, "ceQz");
            return (Criteria) this;
        }

        public Criteria andCeQzLessThanOrEqualTo(Double value) {
            addCriterion("ce_QZ <=", value, "ceQz");
            return (Criteria) this;
        }

        public Criteria andCeQzIn(List<Double> values) {
            addCriterion("ce_QZ in", values, "ceQz");
            return (Criteria) this;
        }

        public Criteria andCeQzNotIn(List<Double> values) {
            addCriterion("ce_QZ not in", values, "ceQz");
            return (Criteria) this;
        }

        public Criteria andCeQzBetween(Double value1, Double value2) {
            addCriterion("ce_QZ between", value1, value2, "ceQz");
            return (Criteria) this;
        }

        public Criteria andCeQzNotBetween(Double value1, Double value2) {
            addCriterion("ce_QZ not between", value1, value2, "ceQz");
            return (Criteria) this;
        }

        public Criteria andCeYhIsNull() {
            addCriterion("ce_YH is null");
            return (Criteria) this;
        }

        public Criteria andCeYhIsNotNull() {
            addCriterion("ce_YH is not null");
            return (Criteria) this;
        }

        public Criteria andCeYhEqualTo(Double value) {
            addCriterion("ce_YH =", value, "ceYh");
            return (Criteria) this;
        }

        public Criteria andCeYhNotEqualTo(Double value) {
            addCriterion("ce_YH <>", value, "ceYh");
            return (Criteria) this;
        }

        public Criteria andCeYhGreaterThan(Double value) {
            addCriterion("ce_YH >", value, "ceYh");
            return (Criteria) this;
        }

        public Criteria andCeYhGreaterThanOrEqualTo(Double value) {
            addCriterion("ce_YH >=", value, "ceYh");
            return (Criteria) this;
        }

        public Criteria andCeYhLessThan(Double value) {
            addCriterion("ce_YH <", value, "ceYh");
            return (Criteria) this;
        }

        public Criteria andCeYhLessThanOrEqualTo(Double value) {
            addCriterion("ce_YH <=", value, "ceYh");
            return (Criteria) this;
        }

        public Criteria andCeYhIn(List<Double> values) {
            addCriterion("ce_YH in", values, "ceYh");
            return (Criteria) this;
        }

        public Criteria andCeYhNotIn(List<Double> values) {
            addCriterion("ce_YH not in", values, "ceYh");
            return (Criteria) this;
        }

        public Criteria andCeYhBetween(Double value1, Double value2) {
            addCriterion("ce_YH between", value1, value2, "ceYh");
            return (Criteria) this;
        }

        public Criteria andCeYhNotBetween(Double value1, Double value2) {
            addCriterion("ce_YH not between", value1, value2, "ceYh");
            return (Criteria) this;
        }

        public Criteria andCeHzIsNull() {
            addCriterion("ce_HZ is null");
            return (Criteria) this;
        }

        public Criteria andCeHzIsNotNull() {
            addCriterion("ce_HZ is not null");
            return (Criteria) this;
        }

        public Criteria andCeHzEqualTo(Double value) {
            addCriterion("ce_HZ =", value, "ceHz");
            return (Criteria) this;
        }

        public Criteria andCeHzNotEqualTo(Double value) {
            addCriterion("ce_HZ <>", value, "ceHz");
            return (Criteria) this;
        }

        public Criteria andCeHzGreaterThan(Double value) {
            addCriterion("ce_HZ >", value, "ceHz");
            return (Criteria) this;
        }

        public Criteria andCeHzGreaterThanOrEqualTo(Double value) {
            addCriterion("ce_HZ >=", value, "ceHz");
            return (Criteria) this;
        }

        public Criteria andCeHzLessThan(Double value) {
            addCriterion("ce_HZ <", value, "ceHz");
            return (Criteria) this;
        }

        public Criteria andCeHzLessThanOrEqualTo(Double value) {
            addCriterion("ce_HZ <=", value, "ceHz");
            return (Criteria) this;
        }

        public Criteria andCeHzIn(List<Double> values) {
            addCriterion("ce_HZ in", values, "ceHz");
            return (Criteria) this;
        }

        public Criteria andCeHzNotIn(List<Double> values) {
            addCriterion("ce_HZ not in", values, "ceHz");
            return (Criteria) this;
        }

        public Criteria andCeHzBetween(Double value1, Double value2) {
            addCriterion("ce_HZ between", value1, value2, "ceHz");
            return (Criteria) this;
        }

        public Criteria andCeHzNotBetween(Double value1, Double value2) {
            addCriterion("ce_HZ not between", value1, value2, "ceHz");
            return (Criteria) this;
        }

        public Criteria andCeZdIsNull() {
            addCriterion("ce_ZD is null");
            return (Criteria) this;
        }

        public Criteria andCeZdIsNotNull() {
            addCriterion("ce_ZD is not null");
            return (Criteria) this;
        }

        public Criteria andCeZdEqualTo(Double value) {
            addCriterion("ce_ZD =", value, "ceZd");
            return (Criteria) this;
        }

        public Criteria andCeZdNotEqualTo(Double value) {
            addCriterion("ce_ZD <>", value, "ceZd");
            return (Criteria) this;
        }

        public Criteria andCeZdGreaterThan(Double value) {
            addCriterion("ce_ZD >", value, "ceZd");
            return (Criteria) this;
        }

        public Criteria andCeZdGreaterThanOrEqualTo(Double value) {
            addCriterion("ce_ZD >=", value, "ceZd");
            return (Criteria) this;
        }

        public Criteria andCeZdLessThan(Double value) {
            addCriterion("ce_ZD <", value, "ceZd");
            return (Criteria) this;
        }

        public Criteria andCeZdLessThanOrEqualTo(Double value) {
            addCriterion("ce_ZD <=", value, "ceZd");
            return (Criteria) this;
        }

        public Criteria andCeZdIn(List<Double> values) {
            addCriterion("ce_ZD in", values, "ceZd");
            return (Criteria) this;
        }

        public Criteria andCeZdNotIn(List<Double> values) {
            addCriterion("ce_ZD not in", values, "ceZd");
            return (Criteria) this;
        }

        public Criteria andCeZdBetween(Double value1, Double value2) {
            addCriterion("ce_ZD between", value1, value2, "ceZd");
            return (Criteria) this;
        }

        public Criteria andCeZdNotBetween(Double value1, Double value2) {
            addCriterion("ce_ZD not between", value1, value2, "ceZd");
            return (Criteria) this;
        }

        public Criteria andCeQdXIsNull() {
            addCriterion("ce_QD_x is null");
            return (Criteria) this;
        }

        public Criteria andCeQdXIsNotNull() {
            addCriterion("ce_QD_x is not null");
            return (Criteria) this;
        }

        public Criteria andCeQdXEqualTo(Double value) {
            addCriterion("ce_QD_x =", value, "ceQdX");
            return (Criteria) this;
        }

        public Criteria andCeQdXNotEqualTo(Double value) {
            addCriterion("ce_QD_x <>", value, "ceQdX");
            return (Criteria) this;
        }

        public Criteria andCeQdXGreaterThan(Double value) {
            addCriterion("ce_QD_x >", value, "ceQdX");
            return (Criteria) this;
        }

        public Criteria andCeQdXGreaterThanOrEqualTo(Double value) {
            addCriterion("ce_QD_x >=", value, "ceQdX");
            return (Criteria) this;
        }

        public Criteria andCeQdXLessThan(Double value) {
            addCriterion("ce_QD_x <", value, "ceQdX");
            return (Criteria) this;
        }

        public Criteria andCeQdXLessThanOrEqualTo(Double value) {
            addCriterion("ce_QD_x <=", value, "ceQdX");
            return (Criteria) this;
        }

        public Criteria andCeQdXIn(List<Double> values) {
            addCriterion("ce_QD_x in", values, "ceQdX");
            return (Criteria) this;
        }

        public Criteria andCeQdXNotIn(List<Double> values) {
            addCriterion("ce_QD_x not in", values, "ceQdX");
            return (Criteria) this;
        }

        public Criteria andCeQdXBetween(Double value1, Double value2) {
            addCriterion("ce_QD_x between", value1, value2, "ceQdX");
            return (Criteria) this;
        }

        public Criteria andCeQdXNotBetween(Double value1, Double value2) {
            addCriterion("ce_QD_x not between", value1, value2, "ceQdX");
            return (Criteria) this;
        }

        public Criteria andCeQdYIsNull() {
            addCriterion("ce_QD_y is null");
            return (Criteria) this;
        }

        public Criteria andCeQdYIsNotNull() {
            addCriterion("ce_QD_y is not null");
            return (Criteria) this;
        }

        public Criteria andCeQdYEqualTo(Double value) {
            addCriterion("ce_QD_y =", value, "ceQdY");
            return (Criteria) this;
        }

        public Criteria andCeQdYNotEqualTo(Double value) {
            addCriterion("ce_QD_y <>", value, "ceQdY");
            return (Criteria) this;
        }

        public Criteria andCeQdYGreaterThan(Double value) {
            addCriterion("ce_QD_y >", value, "ceQdY");
            return (Criteria) this;
        }

        public Criteria andCeQdYGreaterThanOrEqualTo(Double value) {
            addCriterion("ce_QD_y >=", value, "ceQdY");
            return (Criteria) this;
        }

        public Criteria andCeQdYLessThan(Double value) {
            addCriterion("ce_QD_y <", value, "ceQdY");
            return (Criteria) this;
        }

        public Criteria andCeQdYLessThanOrEqualTo(Double value) {
            addCriterion("ce_QD_y <=", value, "ceQdY");
            return (Criteria) this;
        }

        public Criteria andCeQdYIn(List<Double> values) {
            addCriterion("ce_QD_y in", values, "ceQdY");
            return (Criteria) this;
        }

        public Criteria andCeQdYNotIn(List<Double> values) {
            addCriterion("ce_QD_y not in", values, "ceQdY");
            return (Criteria) this;
        }

        public Criteria andCeQdYBetween(Double value1, Double value2) {
            addCriterion("ce_QD_y between", value1, value2, "ceQdY");
            return (Criteria) this;
        }

        public Criteria andCeQdYNotBetween(Double value1, Double value2) {
            addCriterion("ce_QD_y not between", value1, value2, "ceQdY");
            return (Criteria) this;
        }

        public Criteria andCeZhXIsNull() {
            addCriterion("ce_ZH_x is null");
            return (Criteria) this;
        }

        public Criteria andCeZhXIsNotNull() {
            addCriterion("ce_ZH_x is not null");
            return (Criteria) this;
        }

        public Criteria andCeZhXEqualTo(Double value) {
            addCriterion("ce_ZH_x =", value, "ceZhX");
            return (Criteria) this;
        }

        public Criteria andCeZhXNotEqualTo(Double value) {
            addCriterion("ce_ZH_x <>", value, "ceZhX");
            return (Criteria) this;
        }

        public Criteria andCeZhXGreaterThan(Double value) {
            addCriterion("ce_ZH_x >", value, "ceZhX");
            return (Criteria) this;
        }

        public Criteria andCeZhXGreaterThanOrEqualTo(Double value) {
            addCriterion("ce_ZH_x >=", value, "ceZhX");
            return (Criteria) this;
        }

        public Criteria andCeZhXLessThan(Double value) {
            addCriterion("ce_ZH_x <", value, "ceZhX");
            return (Criteria) this;
        }

        public Criteria andCeZhXLessThanOrEqualTo(Double value) {
            addCriterion("ce_ZH_x <=", value, "ceZhX");
            return (Criteria) this;
        }

        public Criteria andCeZhXIn(List<Double> values) {
            addCriterion("ce_ZH_x in", values, "ceZhX");
            return (Criteria) this;
        }

        public Criteria andCeZhXNotIn(List<Double> values) {
            addCriterion("ce_ZH_x not in", values, "ceZhX");
            return (Criteria) this;
        }

        public Criteria andCeZhXBetween(Double value1, Double value2) {
            addCriterion("ce_ZH_x between", value1, value2, "ceZhX");
            return (Criteria) this;
        }

        public Criteria andCeZhXNotBetween(Double value1, Double value2) {
            addCriterion("ce_ZH_x not between", value1, value2, "ceZhX");
            return (Criteria) this;
        }

        public Criteria andCeZhYIsNull() {
            addCriterion("ce_ZH_y is null");
            return (Criteria) this;
        }

        public Criteria andCeZhYIsNotNull() {
            addCriterion("ce_ZH_y is not null");
            return (Criteria) this;
        }

        public Criteria andCeZhYEqualTo(Double value) {
            addCriterion("ce_ZH_y =", value, "ceZhY");
            return (Criteria) this;
        }

        public Criteria andCeZhYNotEqualTo(Double value) {
            addCriterion("ce_ZH_y <>", value, "ceZhY");
            return (Criteria) this;
        }

        public Criteria andCeZhYGreaterThan(Double value) {
            addCriterion("ce_ZH_y >", value, "ceZhY");
            return (Criteria) this;
        }

        public Criteria andCeZhYGreaterThanOrEqualTo(Double value) {
            addCriterion("ce_ZH_y >=", value, "ceZhY");
            return (Criteria) this;
        }

        public Criteria andCeZhYLessThan(Double value) {
            addCriterion("ce_ZH_y <", value, "ceZhY");
            return (Criteria) this;
        }

        public Criteria andCeZhYLessThanOrEqualTo(Double value) {
            addCriterion("ce_ZH_y <=", value, "ceZhY");
            return (Criteria) this;
        }

        public Criteria andCeZhYIn(List<Double> values) {
            addCriterion("ce_ZH_y in", values, "ceZhY");
            return (Criteria) this;
        }

        public Criteria andCeZhYNotIn(List<Double> values) {
            addCriterion("ce_ZH_y not in", values, "ceZhY");
            return (Criteria) this;
        }

        public Criteria andCeZhYBetween(Double value1, Double value2) {
            addCriterion("ce_ZH_y between", value1, value2, "ceZhY");
            return (Criteria) this;
        }

        public Criteria andCeZhYNotBetween(Double value1, Double value2) {
            addCriterion("ce_ZH_y not between", value1, value2, "ceZhY");
            return (Criteria) this;
        }

        public Criteria andCeHyXIsNull() {
            addCriterion("ce_HY_x is null");
            return (Criteria) this;
        }

        public Criteria andCeHyXIsNotNull() {
            addCriterion("ce_HY_x is not null");
            return (Criteria) this;
        }

        public Criteria andCeHyXEqualTo(Double value) {
            addCriterion("ce_HY_x =", value, "ceHyX");
            return (Criteria) this;
        }

        public Criteria andCeHyXNotEqualTo(Double value) {
            addCriterion("ce_HY_x <>", value, "ceHyX");
            return (Criteria) this;
        }

        public Criteria andCeHyXGreaterThan(Double value) {
            addCriterion("ce_HY_x >", value, "ceHyX");
            return (Criteria) this;
        }

        public Criteria andCeHyXGreaterThanOrEqualTo(Double value) {
            addCriterion("ce_HY_x >=", value, "ceHyX");
            return (Criteria) this;
        }

        public Criteria andCeHyXLessThan(Double value) {
            addCriterion("ce_HY_x <", value, "ceHyX");
            return (Criteria) this;
        }

        public Criteria andCeHyXLessThanOrEqualTo(Double value) {
            addCriterion("ce_HY_x <=", value, "ceHyX");
            return (Criteria) this;
        }

        public Criteria andCeHyXIn(List<Double> values) {
            addCriterion("ce_HY_x in", values, "ceHyX");
            return (Criteria) this;
        }

        public Criteria andCeHyXNotIn(List<Double> values) {
            addCriterion("ce_HY_x not in", values, "ceHyX");
            return (Criteria) this;
        }

        public Criteria andCeHyXBetween(Double value1, Double value2) {
            addCriterion("ce_HY_x between", value1, value2, "ceHyX");
            return (Criteria) this;
        }

        public Criteria andCeHyXNotBetween(Double value1, Double value2) {
            addCriterion("ce_HY_x not between", value1, value2, "ceHyX");
            return (Criteria) this;
        }

        public Criteria andCeHyYIsNull() {
            addCriterion("ce_HY_y is null");
            return (Criteria) this;
        }

        public Criteria andCeHyYIsNotNull() {
            addCriterion("ce_HY_y is not null");
            return (Criteria) this;
        }

        public Criteria andCeHyYEqualTo(Double value) {
            addCriterion("ce_HY_y =", value, "ceHyY");
            return (Criteria) this;
        }

        public Criteria andCeHyYNotEqualTo(Double value) {
            addCriterion("ce_HY_y <>", value, "ceHyY");
            return (Criteria) this;
        }

        public Criteria andCeHyYGreaterThan(Double value) {
            addCriterion("ce_HY_y >", value, "ceHyY");
            return (Criteria) this;
        }

        public Criteria andCeHyYGreaterThanOrEqualTo(Double value) {
            addCriterion("ce_HY_y >=", value, "ceHyY");
            return (Criteria) this;
        }

        public Criteria andCeHyYLessThan(Double value) {
            addCriterion("ce_HY_y <", value, "ceHyY");
            return (Criteria) this;
        }

        public Criteria andCeHyYLessThanOrEqualTo(Double value) {
            addCriterion("ce_HY_y <=", value, "ceHyY");
            return (Criteria) this;
        }

        public Criteria andCeHyYIn(List<Double> values) {
            addCriterion("ce_HY_y in", values, "ceHyY");
            return (Criteria) this;
        }

        public Criteria andCeHyYNotIn(List<Double> values) {
            addCriterion("ce_HY_y not in", values, "ceHyY");
            return (Criteria) this;
        }

        public Criteria andCeHyYBetween(Double value1, Double value2) {
            addCriterion("ce_HY_y between", value1, value2, "ceHyY");
            return (Criteria) this;
        }

        public Criteria andCeHyYNotBetween(Double value1, Double value2) {
            addCriterion("ce_HY_y not between", value1, value2, "ceHyY");
            return (Criteria) this;
        }

        public Criteria andCeQzXIsNull() {
            addCriterion("ce_QZ_x is null");
            return (Criteria) this;
        }

        public Criteria andCeQzXIsNotNull() {
            addCriterion("ce_QZ_x is not null");
            return (Criteria) this;
        }

        public Criteria andCeQzXEqualTo(Double value) {
            addCriterion("ce_QZ_x =", value, "ceQzX");
            return (Criteria) this;
        }

        public Criteria andCeQzXNotEqualTo(Double value) {
            addCriterion("ce_QZ_x <>", value, "ceQzX");
            return (Criteria) this;
        }

        public Criteria andCeQzXGreaterThan(Double value) {
            addCriterion("ce_QZ_x >", value, "ceQzX");
            return (Criteria) this;
        }

        public Criteria andCeQzXGreaterThanOrEqualTo(Double value) {
            addCriterion("ce_QZ_x >=", value, "ceQzX");
            return (Criteria) this;
        }

        public Criteria andCeQzXLessThan(Double value) {
            addCriterion("ce_QZ_x <", value, "ceQzX");
            return (Criteria) this;
        }

        public Criteria andCeQzXLessThanOrEqualTo(Double value) {
            addCriterion("ce_QZ_x <=", value, "ceQzX");
            return (Criteria) this;
        }

        public Criteria andCeQzXIn(List<Double> values) {
            addCriterion("ce_QZ_x in", values, "ceQzX");
            return (Criteria) this;
        }

        public Criteria andCeQzXNotIn(List<Double> values) {
            addCriterion("ce_QZ_x not in", values, "ceQzX");
            return (Criteria) this;
        }

        public Criteria andCeQzXBetween(Double value1, Double value2) {
            addCriterion("ce_QZ_x between", value1, value2, "ceQzX");
            return (Criteria) this;
        }

        public Criteria andCeQzXNotBetween(Double value1, Double value2) {
            addCriterion("ce_QZ_x not between", value1, value2, "ceQzX");
            return (Criteria) this;
        }

        public Criteria andCeQzYIsNull() {
            addCriterion("ce_QZ_y is null");
            return (Criteria) this;
        }

        public Criteria andCeQzYIsNotNull() {
            addCriterion("ce_QZ_y is not null");
            return (Criteria) this;
        }

        public Criteria andCeQzYEqualTo(Double value) {
            addCriterion("ce_QZ_y =", value, "ceQzY");
            return (Criteria) this;
        }

        public Criteria andCeQzYNotEqualTo(Double value) {
            addCriterion("ce_QZ_y <>", value, "ceQzY");
            return (Criteria) this;
        }

        public Criteria andCeQzYGreaterThan(Double value) {
            addCriterion("ce_QZ_y >", value, "ceQzY");
            return (Criteria) this;
        }

        public Criteria andCeQzYGreaterThanOrEqualTo(Double value) {
            addCriterion("ce_QZ_y >=", value, "ceQzY");
            return (Criteria) this;
        }

        public Criteria andCeQzYLessThan(Double value) {
            addCriterion("ce_QZ_y <", value, "ceQzY");
            return (Criteria) this;
        }

        public Criteria andCeQzYLessThanOrEqualTo(Double value) {
            addCriterion("ce_QZ_y <=", value, "ceQzY");
            return (Criteria) this;
        }

        public Criteria andCeQzYIn(List<Double> values) {
            addCriterion("ce_QZ_y in", values, "ceQzY");
            return (Criteria) this;
        }

        public Criteria andCeQzYNotIn(List<Double> values) {
            addCriterion("ce_QZ_y not in", values, "ceQzY");
            return (Criteria) this;
        }

        public Criteria andCeQzYBetween(Double value1, Double value2) {
            addCriterion("ce_QZ_y between", value1, value2, "ceQzY");
            return (Criteria) this;
        }

        public Criteria andCeQzYNotBetween(Double value1, Double value2) {
            addCriterion("ce_QZ_y not between", value1, value2, "ceQzY");
            return (Criteria) this;
        }

        public Criteria andCeYhXIsNull() {
            addCriterion("ce_YH_x is null");
            return (Criteria) this;
        }

        public Criteria andCeYhXIsNotNull() {
            addCriterion("ce_YH_x is not null");
            return (Criteria) this;
        }

        public Criteria andCeYhXEqualTo(Double value) {
            addCriterion("ce_YH_x =", value, "ceYhX");
            return (Criteria) this;
        }

        public Criteria andCeYhXNotEqualTo(Double value) {
            addCriterion("ce_YH_x <>", value, "ceYhX");
            return (Criteria) this;
        }

        public Criteria andCeYhXGreaterThan(Double value) {
            addCriterion("ce_YH_x >", value, "ceYhX");
            return (Criteria) this;
        }

        public Criteria andCeYhXGreaterThanOrEqualTo(Double value) {
            addCriterion("ce_YH_x >=", value, "ceYhX");
            return (Criteria) this;
        }

        public Criteria andCeYhXLessThan(Double value) {
            addCriterion("ce_YH_x <", value, "ceYhX");
            return (Criteria) this;
        }

        public Criteria andCeYhXLessThanOrEqualTo(Double value) {
            addCriterion("ce_YH_x <=", value, "ceYhX");
            return (Criteria) this;
        }

        public Criteria andCeYhXIn(List<Double> values) {
            addCriterion("ce_YH_x in", values, "ceYhX");
            return (Criteria) this;
        }

        public Criteria andCeYhXNotIn(List<Double> values) {
            addCriterion("ce_YH_x not in", values, "ceYhX");
            return (Criteria) this;
        }

        public Criteria andCeYhXBetween(Double value1, Double value2) {
            addCriterion("ce_YH_x between", value1, value2, "ceYhX");
            return (Criteria) this;
        }

        public Criteria andCeYhXNotBetween(Double value1, Double value2) {
            addCriterion("ce_YH_x not between", value1, value2, "ceYhX");
            return (Criteria) this;
        }

        public Criteria andCeYhYIsNull() {
            addCriterion("ce_YH_y is null");
            return (Criteria) this;
        }

        public Criteria andCeYhYIsNotNull() {
            addCriterion("ce_YH_y is not null");
            return (Criteria) this;
        }

        public Criteria andCeYhYEqualTo(Double value) {
            addCriterion("ce_YH_y =", value, "ceYhY");
            return (Criteria) this;
        }

        public Criteria andCeYhYNotEqualTo(Double value) {
            addCriterion("ce_YH_y <>", value, "ceYhY");
            return (Criteria) this;
        }

        public Criteria andCeYhYGreaterThan(Double value) {
            addCriterion("ce_YH_y >", value, "ceYhY");
            return (Criteria) this;
        }

        public Criteria andCeYhYGreaterThanOrEqualTo(Double value) {
            addCriterion("ce_YH_y >=", value, "ceYhY");
            return (Criteria) this;
        }

        public Criteria andCeYhYLessThan(Double value) {
            addCriterion("ce_YH_y <", value, "ceYhY");
            return (Criteria) this;
        }

        public Criteria andCeYhYLessThanOrEqualTo(Double value) {
            addCriterion("ce_YH_y <=", value, "ceYhY");
            return (Criteria) this;
        }

        public Criteria andCeYhYIn(List<Double> values) {
            addCriterion("ce_YH_y in", values, "ceYhY");
            return (Criteria) this;
        }

        public Criteria andCeYhYNotIn(List<Double> values) {
            addCriterion("ce_YH_y not in", values, "ceYhY");
            return (Criteria) this;
        }

        public Criteria andCeYhYBetween(Double value1, Double value2) {
            addCriterion("ce_YH_y between", value1, value2, "ceYhY");
            return (Criteria) this;
        }

        public Criteria andCeYhYNotBetween(Double value1, Double value2) {
            addCriterion("ce_YH_y not between", value1, value2, "ceYhY");
            return (Criteria) this;
        }

        public Criteria andCeHzXIsNull() {
            addCriterion("ce_HZ_x is null");
            return (Criteria) this;
        }

        public Criteria andCeHzXIsNotNull() {
            addCriterion("ce_HZ_x is not null");
            return (Criteria) this;
        }

        public Criteria andCeHzXEqualTo(Double value) {
            addCriterion("ce_HZ_x =", value, "ceHzX");
            return (Criteria) this;
        }

        public Criteria andCeHzXNotEqualTo(Double value) {
            addCriterion("ce_HZ_x <>", value, "ceHzX");
            return (Criteria) this;
        }

        public Criteria andCeHzXGreaterThan(Double value) {
            addCriterion("ce_HZ_x >", value, "ceHzX");
            return (Criteria) this;
        }

        public Criteria andCeHzXGreaterThanOrEqualTo(Double value) {
            addCriterion("ce_HZ_x >=", value, "ceHzX");
            return (Criteria) this;
        }

        public Criteria andCeHzXLessThan(Double value) {
            addCriterion("ce_HZ_x <", value, "ceHzX");
            return (Criteria) this;
        }

        public Criteria andCeHzXLessThanOrEqualTo(Double value) {
            addCriterion("ce_HZ_x <=", value, "ceHzX");
            return (Criteria) this;
        }

        public Criteria andCeHzXIn(List<Double> values) {
            addCriterion("ce_HZ_x in", values, "ceHzX");
            return (Criteria) this;
        }

        public Criteria andCeHzXNotIn(List<Double> values) {
            addCriterion("ce_HZ_x not in", values, "ceHzX");
            return (Criteria) this;
        }

        public Criteria andCeHzXBetween(Double value1, Double value2) {
            addCriterion("ce_HZ_x between", value1, value2, "ceHzX");
            return (Criteria) this;
        }

        public Criteria andCeHzXNotBetween(Double value1, Double value2) {
            addCriterion("ce_HZ_x not between", value1, value2, "ceHzX");
            return (Criteria) this;
        }

        public Criteria andCeHzYIsNull() {
            addCriterion("ce_HZ_y is null");
            return (Criteria) this;
        }

        public Criteria andCeHzYIsNotNull() {
            addCriterion("ce_HZ_y is not null");
            return (Criteria) this;
        }

        public Criteria andCeHzYEqualTo(Double value) {
            addCriterion("ce_HZ_y =", value, "ceHzY");
            return (Criteria) this;
        }

        public Criteria andCeHzYNotEqualTo(Double value) {
            addCriterion("ce_HZ_y <>", value, "ceHzY");
            return (Criteria) this;
        }

        public Criteria andCeHzYGreaterThan(Double value) {
            addCriterion("ce_HZ_y >", value, "ceHzY");
            return (Criteria) this;
        }

        public Criteria andCeHzYGreaterThanOrEqualTo(Double value) {
            addCriterion("ce_HZ_y >=", value, "ceHzY");
            return (Criteria) this;
        }

        public Criteria andCeHzYLessThan(Double value) {
            addCriterion("ce_HZ_y <", value, "ceHzY");
            return (Criteria) this;
        }

        public Criteria andCeHzYLessThanOrEqualTo(Double value) {
            addCriterion("ce_HZ_y <=", value, "ceHzY");
            return (Criteria) this;
        }

        public Criteria andCeHzYIn(List<Double> values) {
            addCriterion("ce_HZ_y in", values, "ceHzY");
            return (Criteria) this;
        }

        public Criteria andCeHzYNotIn(List<Double> values) {
            addCriterion("ce_HZ_y not in", values, "ceHzY");
            return (Criteria) this;
        }

        public Criteria andCeHzYBetween(Double value1, Double value2) {
            addCriterion("ce_HZ_y between", value1, value2, "ceHzY");
            return (Criteria) this;
        }

        public Criteria andCeHzYNotBetween(Double value1, Double value2) {
            addCriterion("ce_HZ_y not between", value1, value2, "ceHzY");
            return (Criteria) this;
        }

        public Criteria andCeZdXIsNull() {
            addCriterion("ce_ZD_x is null");
            return (Criteria) this;
        }

        public Criteria andCeZdXIsNotNull() {
            addCriterion("ce_ZD_x is not null");
            return (Criteria) this;
        }

        public Criteria andCeZdXEqualTo(Double value) {
            addCriterion("ce_ZD_x =", value, "ceZdX");
            return (Criteria) this;
        }

        public Criteria andCeZdXNotEqualTo(Double value) {
            addCriterion("ce_ZD_x <>", value, "ceZdX");
            return (Criteria) this;
        }

        public Criteria andCeZdXGreaterThan(Double value) {
            addCriterion("ce_ZD_x >", value, "ceZdX");
            return (Criteria) this;
        }

        public Criteria andCeZdXGreaterThanOrEqualTo(Double value) {
            addCriterion("ce_ZD_x >=", value, "ceZdX");
            return (Criteria) this;
        }

        public Criteria andCeZdXLessThan(Double value) {
            addCriterion("ce_ZD_x <", value, "ceZdX");
            return (Criteria) this;
        }

        public Criteria andCeZdXLessThanOrEqualTo(Double value) {
            addCriterion("ce_ZD_x <=", value, "ceZdX");
            return (Criteria) this;
        }

        public Criteria andCeZdXIn(List<Double> values) {
            addCriterion("ce_ZD_x in", values, "ceZdX");
            return (Criteria) this;
        }

        public Criteria andCeZdXNotIn(List<Double> values) {
            addCriterion("ce_ZD_x not in", values, "ceZdX");
            return (Criteria) this;
        }

        public Criteria andCeZdXBetween(Double value1, Double value2) {
            addCriterion("ce_ZD_x between", value1, value2, "ceZdX");
            return (Criteria) this;
        }

        public Criteria andCeZdXNotBetween(Double value1, Double value2) {
            addCriterion("ce_ZD_x not between", value1, value2, "ceZdX");
            return (Criteria) this;
        }

        public Criteria andCeZdYIsNull() {
            addCriterion("ce_ZD_y is null");
            return (Criteria) this;
        }

        public Criteria andCeZdYIsNotNull() {
            addCriterion("ce_ZD_y is not null");
            return (Criteria) this;
        }

        public Criteria andCeZdYEqualTo(Double value) {
            addCriterion("ce_ZD_y =", value, "ceZdY");
            return (Criteria) this;
        }

        public Criteria andCeZdYNotEqualTo(Double value) {
            addCriterion("ce_ZD_y <>", value, "ceZdY");
            return (Criteria) this;
        }

        public Criteria andCeZdYGreaterThan(Double value) {
            addCriterion("ce_ZD_y >", value, "ceZdY");
            return (Criteria) this;
        }

        public Criteria andCeZdYGreaterThanOrEqualTo(Double value) {
            addCriterion("ce_ZD_y >=", value, "ceZdY");
            return (Criteria) this;
        }

        public Criteria andCeZdYLessThan(Double value) {
            addCriterion("ce_ZD_y <", value, "ceZdY");
            return (Criteria) this;
        }

        public Criteria andCeZdYLessThanOrEqualTo(Double value) {
            addCriterion("ce_ZD_y <=", value, "ceZdY");
            return (Criteria) this;
        }

        public Criteria andCeZdYIn(List<Double> values) {
            addCriterion("ce_ZD_y in", values, "ceZdY");
            return (Criteria) this;
        }

        public Criteria andCeZdYNotIn(List<Double> values) {
            addCriterion("ce_ZD_y not in", values, "ceZdY");
            return (Criteria) this;
        }

        public Criteria andCeZdYBetween(Double value1, Double value2) {
            addCriterion("ce_ZD_y between", value1, value2, "ceZdY");
            return (Criteria) this;
        }

        public Criteria andCeZdYNotBetween(Double value1, Double value2) {
            addCriterion("ce_ZD_y not between", value1, value2, "ceZdY");
            return (Criteria) this;
        }

        public Criteria andCeQxIsNull() {
            addCriterion("ce_QX is null");
            return (Criteria) this;
        }

        public Criteria andCeQxIsNotNull() {
            addCriterion("ce_QX is not null");
            return (Criteria) this;
        }

        public Criteria andCeQxEqualTo(String value) {
            addCriterion("ce_QX =", value, "ceQx");
            return (Criteria) this;
        }

        public Criteria andCeQxNotEqualTo(String value) {
            addCriterion("ce_QX <>", value, "ceQx");
            return (Criteria) this;
        }

        public Criteria andCeQxGreaterThan(String value) {
            addCriterion("ce_QX >", value, "ceQx");
            return (Criteria) this;
        }

        public Criteria andCeQxGreaterThanOrEqualTo(String value) {
            addCriterion("ce_QX >=", value, "ceQx");
            return (Criteria) this;
        }

        public Criteria andCeQxLessThan(String value) {
            addCriterion("ce_QX <", value, "ceQx");
            return (Criteria) this;
        }

        public Criteria andCeQxLessThanOrEqualTo(String value) {
            addCriterion("ce_QX <=", value, "ceQx");
            return (Criteria) this;
        }

        public Criteria andCeQxLike(String value) {
            addCriterion("ce_QX like", value, "ceQx");
            return (Criteria) this;
        }

        public Criteria andCeQxNotLike(String value) {
            addCriterion("ce_QX not like", value, "ceQx");
            return (Criteria) this;
        }

        public Criteria andCeQxIn(List<String> values) {
            addCriterion("ce_QX in", values, "ceQx");
            return (Criteria) this;
        }

        public Criteria andCeQxNotIn(List<String> values) {
            addCriterion("ce_QX not in", values, "ceQx");
            return (Criteria) this;
        }

        public Criteria andCeQxBetween(String value1, String value2) {
            addCriterion("ce_QX between", value1, value2, "ceQx");
            return (Criteria) this;
        }

        public Criteria andCeQxNotBetween(String value1, String value2) {
            addCriterion("ce_QX not between", value1, value2, "ceQx");
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