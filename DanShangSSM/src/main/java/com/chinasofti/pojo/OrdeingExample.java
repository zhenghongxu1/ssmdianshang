package com.chinasofti.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class OrdeingExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table ordeing
     *
     * @mbg.generated Thu Sep 26 12:12:03 CST 2019
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table ordeing
     *
     * @mbg.generated Thu Sep 26 12:12:03 CST 2019
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table ordeing
     *
     * @mbg.generated Thu Sep 26 12:12:03 CST 2019
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ordeing
     *
     * @mbg.generated Thu Sep 26 12:12:03 CST 2019
     */
    public OrdeingExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ordeing
     *
     * @mbg.generated Thu Sep 26 12:12:03 CST 2019
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ordeing
     *
     * @mbg.generated Thu Sep 26 12:12:03 CST 2019
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ordeing
     *
     * @mbg.generated Thu Sep 26 12:12:03 CST 2019
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ordeing
     *
     * @mbg.generated Thu Sep 26 12:12:03 CST 2019
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ordeing
     *
     * @mbg.generated Thu Sep 26 12:12:03 CST 2019
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ordeing
     *
     * @mbg.generated Thu Sep 26 12:12:03 CST 2019
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ordeing
     *
     * @mbg.generated Thu Sep 26 12:12:03 CST 2019
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ordeing
     *
     * @mbg.generated Thu Sep 26 12:12:03 CST 2019
     */
    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ordeing
     *
     * @mbg.generated Thu Sep 26 12:12:03 CST 2019
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ordeing
     *
     * @mbg.generated Thu Sep 26 12:12:03 CST 2019
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table ordeing
     *
     * @mbg.generated Thu Sep 26 12:12:03 CST 2019
     */
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

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andUserIsNull() {
            addCriterion("user is null");
            return (Criteria) this;
        }

        public Criteria andUserIsNotNull() {
            addCriterion("user is not null");
            return (Criteria) this;
        }

        public Criteria andUserEqualTo(Integer value) {
            addCriterion("user =", value, "user");
            return (Criteria) this;
        }

        public Criteria andUserNotEqualTo(Integer value) {
            addCriterion("user <>", value, "user");
            return (Criteria) this;
        }

        public Criteria andUserGreaterThan(Integer value) {
            addCriterion("user >", value, "user");
            return (Criteria) this;
        }

        public Criteria andUserGreaterThanOrEqualTo(Integer value) {
            addCriterion("user >=", value, "user");
            return (Criteria) this;
        }

        public Criteria andUserLessThan(Integer value) {
            addCriterion("user <", value, "user");
            return (Criteria) this;
        }

        public Criteria andUserLessThanOrEqualTo(Integer value) {
            addCriterion("user <=", value, "user");
            return (Criteria) this;
        }

        public Criteria andUserIn(List<Integer> values) {
            addCriterion("user in", values, "user");
            return (Criteria) this;
        }

        public Criteria andUserNotIn(List<Integer> values) {
            addCriterion("user not in", values, "user");
            return (Criteria) this;
        }

        public Criteria andUserBetween(Integer value1, Integer value2) {
            addCriterion("user between", value1, value2, "user");
            return (Criteria) this;
        }

        public Criteria andUserNotBetween(Integer value1, Integer value2) {
            addCriterion("user not between", value1, value2, "user");
            return (Criteria) this;
        }

        public Criteria andOrdeidIsNull() {
            addCriterion("ordeid is null");
            return (Criteria) this;
        }

        public Criteria andOrdeidIsNotNull() {
            addCriterion("ordeid is not null");
            return (Criteria) this;
        }

        public Criteria andOrdeidEqualTo(String value) {
            addCriterion("ordeid =", value, "ordeid");
            return (Criteria) this;
        }

        public Criteria andOrdeidNotEqualTo(String value) {
            addCriterion("ordeid <>", value, "ordeid");
            return (Criteria) this;
        }

        public Criteria andOrdeidGreaterThan(String value) {
            addCriterion("ordeid >", value, "ordeid");
            return (Criteria) this;
        }

        public Criteria andOrdeidGreaterThanOrEqualTo(String value) {
            addCriterion("ordeid >=", value, "ordeid");
            return (Criteria) this;
        }

        public Criteria andOrdeidLessThan(String value) {
            addCriterion("ordeid <", value, "ordeid");
            return (Criteria) this;
        }

        public Criteria andOrdeidLessThanOrEqualTo(String value) {
            addCriterion("ordeid <=", value, "ordeid");
            return (Criteria) this;
        }

        public Criteria andOrdeidLike(String value) {
            addCriterion("ordeid like", value, "ordeid");
            return (Criteria) this;
        }

        public Criteria andOrdeidNotLike(String value) {
            addCriterion("ordeid not like", value, "ordeid");
            return (Criteria) this;
        }

        public Criteria andOrdeidIn(List<String> values) {
            addCriterion("ordeid in", values, "ordeid");
            return (Criteria) this;
        }

        public Criteria andOrdeidNotIn(List<String> values) {
            addCriterion("ordeid not in", values, "ordeid");
            return (Criteria) this;
        }

        public Criteria andOrdeidBetween(String value1, String value2) {
            addCriterion("ordeid between", value1, value2, "ordeid");
            return (Criteria) this;
        }

        public Criteria andOrdeidNotBetween(String value1, String value2) {
            addCriterion("ordeid not between", value1, value2, "ordeid");
            return (Criteria) this;
        }

        public Criteria andSumpriceIsNull() {
            addCriterion("sumprice is null");
            return (Criteria) this;
        }

        public Criteria andSumpriceIsNotNull() {
            addCriterion("sumprice is not null");
            return (Criteria) this;
        }

        public Criteria andSumpriceEqualTo(String value) {
            addCriterion("sumprice =", value, "sumprice");
            return (Criteria) this;
        }

        public Criteria andSumpriceNotEqualTo(String value) {
            addCriterion("sumprice <>", value, "sumprice");
            return (Criteria) this;
        }

        public Criteria andSumpriceGreaterThan(String value) {
            addCriterion("sumprice >", value, "sumprice");
            return (Criteria) this;
        }

        public Criteria andSumpriceGreaterThanOrEqualTo(String value) {
            addCriterion("sumprice >=", value, "sumprice");
            return (Criteria) this;
        }

        public Criteria andSumpriceLessThan(String value) {
            addCriterion("sumprice <", value, "sumprice");
            return (Criteria) this;
        }

        public Criteria andSumpriceLessThanOrEqualTo(String value) {
            addCriterion("sumprice <=", value, "sumprice");
            return (Criteria) this;
        }

        public Criteria andSumpriceLike(String value) {
            addCriterion("sumprice like", value, "sumprice");
            return (Criteria) this;
        }

        public Criteria andSumpriceNotLike(String value) {
            addCriterion("sumprice not like", value, "sumprice");
            return (Criteria) this;
        }

        public Criteria andSumpriceIn(List<String> values) {
            addCriterion("sumprice in", values, "sumprice");
            return (Criteria) this;
        }

        public Criteria andSumpriceNotIn(List<String> values) {
            addCriterion("sumprice not in", values, "sumprice");
            return (Criteria) this;
        }

        public Criteria andSumpriceBetween(String value1, String value2) {
            addCriterion("sumprice between", value1, value2, "sumprice");
            return (Criteria) this;
        }

        public Criteria andSumpriceNotBetween(String value1, String value2) {
            addCriterion("sumprice not between", value1, value2, "sumprice");
            return (Criteria) this;
        }

        public Criteria andServerconIsNull() {
            addCriterion("servercon is null");
            return (Criteria) this;
        }

        public Criteria andServerconIsNotNull() {
            addCriterion("servercon is not null");
            return (Criteria) this;
        }

        public Criteria andServerconEqualTo(String value) {
            addCriterion("servercon =", value, "servercon");
            return (Criteria) this;
        }

        public Criteria andServerconNotEqualTo(String value) {
            addCriterion("servercon <>", value, "servercon");
            return (Criteria) this;
        }

        public Criteria andServerconGreaterThan(String value) {
            addCriterion("servercon >", value, "servercon");
            return (Criteria) this;
        }

        public Criteria andServerconGreaterThanOrEqualTo(String value) {
            addCriterion("servercon >=", value, "servercon");
            return (Criteria) this;
        }

        public Criteria andServerconLessThan(String value) {
            addCriterion("servercon <", value, "servercon");
            return (Criteria) this;
        }

        public Criteria andServerconLessThanOrEqualTo(String value) {
            addCriterion("servercon <=", value, "servercon");
            return (Criteria) this;
        }

        public Criteria andServerconLike(String value) {
            addCriterion("servercon like", value, "servercon");
            return (Criteria) this;
        }

        public Criteria andServerconNotLike(String value) {
            addCriterion("servercon not like", value, "servercon");
            return (Criteria) this;
        }

        public Criteria andServerconIn(List<String> values) {
            addCriterion("servercon in", values, "servercon");
            return (Criteria) this;
        }

        public Criteria andServerconNotIn(List<String> values) {
            addCriterion("servercon not in", values, "servercon");
            return (Criteria) this;
        }

        public Criteria andServerconBetween(String value1, String value2) {
            addCriterion("servercon between", value1, value2, "servercon");
            return (Criteria) this;
        }

        public Criteria andServerconNotBetween(String value1, String value2) {
            addCriterion("servercon not between", value1, value2, "servercon");
            return (Criteria) this;
        }

        public Criteria andServertimeIsNull() {
            addCriterion("servertime is null");
            return (Criteria) this;
        }

        public Criteria andServertimeIsNotNull() {
            addCriterion("servertime is not null");
            return (Criteria) this;
        }

        public Criteria andServertimeEqualTo(Date value) {
            addCriterion("servertime =", value, "servertime");
            return (Criteria) this;
        }

        public Criteria andServertimeNotEqualTo(Date value) {
            addCriterion("servertime <>", value, "servertime");
            return (Criteria) this;
        }

        public Criteria andServertimeGreaterThan(Date value) {
            addCriterion("servertime >", value, "servertime");
            return (Criteria) this;
        }

        public Criteria andServertimeGreaterThanOrEqualTo(Date value) {
            addCriterion("servertime >=", value, "servertime");
            return (Criteria) this;
        }

        public Criteria andServertimeLessThan(Date value) {
            addCriterion("servertime <", value, "servertime");
            return (Criteria) this;
        }

        public Criteria andServertimeLessThanOrEqualTo(Date value) {
            addCriterion("servertime <=", value, "servertime");
            return (Criteria) this;
        }

        public Criteria andServertimeIn(List<Date> values) {
            addCriterion("servertime in", values, "servertime");
            return (Criteria) this;
        }

        public Criteria andServertimeNotIn(List<Date> values) {
            addCriterion("servertime not in", values, "servertime");
            return (Criteria) this;
        }

        public Criteria andServertimeBetween(Date value1, Date value2) {
            addCriterion("servertime between", value1, value2, "servertime");
            return (Criteria) this;
        }

        public Criteria andServertimeNotBetween(Date value1, Date value2) {
            addCriterion("servertime not between", value1, value2, "servertime");
            return (Criteria) this;
        }

        public Criteria andBrandeIsNull() {
            addCriterion("brande is null");
            return (Criteria) this;
        }

        public Criteria andBrandeIsNotNull() {
            addCriterion("brande is not null");
            return (Criteria) this;
        }

        public Criteria andBrandeEqualTo(String value) {
            addCriterion("brande =", value, "brande");
            return (Criteria) this;
        }

        public Criteria andBrandeNotEqualTo(String value) {
            addCriterion("brande <>", value, "brande");
            return (Criteria) this;
        }

        public Criteria andBrandeGreaterThan(String value) {
            addCriterion("brande >", value, "brande");
            return (Criteria) this;
        }

        public Criteria andBrandeGreaterThanOrEqualTo(String value) {
            addCriterion("brande >=", value, "brande");
            return (Criteria) this;
        }

        public Criteria andBrandeLessThan(String value) {
            addCriterion("brande <", value, "brande");
            return (Criteria) this;
        }

        public Criteria andBrandeLessThanOrEqualTo(String value) {
            addCriterion("brande <=", value, "brande");
            return (Criteria) this;
        }

        public Criteria andBrandeLike(String value) {
            addCriterion("brande like", value, "brande");
            return (Criteria) this;
        }

        public Criteria andBrandeNotLike(String value) {
            addCriterion("brande not like", value, "brande");
            return (Criteria) this;
        }

        public Criteria andBrandeIn(List<String> values) {
            addCriterion("brande in", values, "brande");
            return (Criteria) this;
        }

        public Criteria andBrandeNotIn(List<String> values) {
            addCriterion("brande not in", values, "brande");
            return (Criteria) this;
        }

        public Criteria andBrandeBetween(String value1, String value2) {
            addCriterion("brande between", value1, value2, "brande");
            return (Criteria) this;
        }

        public Criteria andBrandeNotBetween(String value1, String value2) {
            addCriterion("brande not between", value1, value2, "brande");
            return (Criteria) this;
        }

        public Criteria andOrdingtimeIsNull() {
            addCriterion("ordingtime is null");
            return (Criteria) this;
        }

        public Criteria andOrdingtimeIsNotNull() {
            addCriterion("ordingtime is not null");
            return (Criteria) this;
        }

        public Criteria andOrdingtimeEqualTo(String value) {
            addCriterion("ordingtime =", value, "ordingtime");
            return (Criteria) this;
        }

        public Criteria andOrdingtimeNotEqualTo(String value) {
            addCriterion("ordingtime <>", value, "ordingtime");
            return (Criteria) this;
        }

        public Criteria andOrdingtimeGreaterThan(String value) {
            addCriterion("ordingtime >", value, "ordingtime");
            return (Criteria) this;
        }

        public Criteria andOrdingtimeGreaterThanOrEqualTo(String value) {
            addCriterion("ordingtime >=", value, "ordingtime");
            return (Criteria) this;
        }

        public Criteria andOrdingtimeLessThan(String value) {
            addCriterion("ordingtime <", value, "ordingtime");
            return (Criteria) this;
        }

        public Criteria andOrdingtimeLessThanOrEqualTo(String value) {
            addCriterion("ordingtime <=", value, "ordingtime");
            return (Criteria) this;
        }

        public Criteria andOrdingtimeLike(String value) {
            addCriterion("ordingtime like", value, "ordingtime");
            return (Criteria) this;
        }

        public Criteria andOrdingtimeNotLike(String value) {
            addCriterion("ordingtime not like", value, "ordingtime");
            return (Criteria) this;
        }

        public Criteria andOrdingtimeIn(List<String> values) {
            addCriterion("ordingtime in", values, "ordingtime");
            return (Criteria) this;
        }

        public Criteria andOrdingtimeNotIn(List<String> values) {
            addCriterion("ordingtime not in", values, "ordingtime");
            return (Criteria) this;
        }

        public Criteria andOrdingtimeBetween(String value1, String value2) {
            addCriterion("ordingtime between", value1, value2, "ordingtime");
            return (Criteria) this;
        }

        public Criteria andOrdingtimeNotBetween(String value1, String value2) {
            addCriterion("ordingtime not between", value1, value2, "ordingtime");
            return (Criteria) this;
        }

        public Criteria andNameIsNull() {
            addCriterion("name is null");
            return (Criteria) this;
        }

        public Criteria andNameIsNotNull() {
            addCriterion("name is not null");
            return (Criteria) this;
        }

        public Criteria andNameEqualTo(String value) {
            addCriterion("name =", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotEqualTo(String value) {
            addCriterion("name <>", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThan(String value) {
            addCriterion("name >", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThanOrEqualTo(String value) {
            addCriterion("name >=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThan(String value) {
            addCriterion("name <", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThanOrEqualTo(String value) {
            addCriterion("name <=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLike(String value) {
            addCriterion("name like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotLike(String value) {
            addCriterion("name not like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameIn(List<String> values) {
            addCriterion("name in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotIn(List<String> values) {
            addCriterion("name not in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameBetween(String value1, String value2) {
            addCriterion("name between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotBetween(String value1, String value2) {
            addCriterion("name not between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andTelIsNull() {
            addCriterion("tel is null");
            return (Criteria) this;
        }

        public Criteria andTelIsNotNull() {
            addCriterion("tel is not null");
            return (Criteria) this;
        }

        public Criteria andTelEqualTo(String value) {
            addCriterion("tel =", value, "tel");
            return (Criteria) this;
        }

        public Criteria andTelNotEqualTo(String value) {
            addCriterion("tel <>", value, "tel");
            return (Criteria) this;
        }

        public Criteria andTelGreaterThan(String value) {
            addCriterion("tel >", value, "tel");
            return (Criteria) this;
        }

        public Criteria andTelGreaterThanOrEqualTo(String value) {
            addCriterion("tel >=", value, "tel");
            return (Criteria) this;
        }

        public Criteria andTelLessThan(String value) {
            addCriterion("tel <", value, "tel");
            return (Criteria) this;
        }

        public Criteria andTelLessThanOrEqualTo(String value) {
            addCriterion("tel <=", value, "tel");
            return (Criteria) this;
        }

        public Criteria andTelLike(String value) {
            addCriterion("tel like", value, "tel");
            return (Criteria) this;
        }

        public Criteria andTelNotLike(String value) {
            addCriterion("tel not like", value, "tel");
            return (Criteria) this;
        }

        public Criteria andTelIn(List<String> values) {
            addCriterion("tel in", values, "tel");
            return (Criteria) this;
        }

        public Criteria andTelNotIn(List<String> values) {
            addCriterion("tel not in", values, "tel");
            return (Criteria) this;
        }

        public Criteria andTelBetween(String value1, String value2) {
            addCriterion("tel between", value1, value2, "tel");
            return (Criteria) this;
        }

        public Criteria andTelNotBetween(String value1, String value2) {
            addCriterion("tel not between", value1, value2, "tel");
            return (Criteria) this;
        }

        public Criteria andAddressIsNull() {
            addCriterion("address is null");
            return (Criteria) this;
        }

        public Criteria andAddressIsNotNull() {
            addCriterion("address is not null");
            return (Criteria) this;
        }

        public Criteria andAddressEqualTo(String value) {
            addCriterion("address =", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotEqualTo(String value) {
            addCriterion("address <>", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressGreaterThan(String value) {
            addCriterion("address >", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressGreaterThanOrEqualTo(String value) {
            addCriterion("address >=", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressLessThan(String value) {
            addCriterion("address <", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressLessThanOrEqualTo(String value) {
            addCriterion("address <=", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressLike(String value) {
            addCriterion("address like", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotLike(String value) {
            addCriterion("address not like", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressIn(List<String> values) {
            addCriterion("address in", values, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotIn(List<String> values) {
            addCriterion("address not in", values, "address");
            return (Criteria) this;
        }

        public Criteria andAddressBetween(String value1, String value2) {
            addCriterion("address between", value1, value2, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotBetween(String value1, String value2) {
            addCriterion("address not between", value1, value2, "address");
            return (Criteria) this;
        }

        public Criteria andStateIsNull() {
            addCriterion("state is null");
            return (Criteria) this;
        }

        public Criteria andStateIsNotNull() {
            addCriterion("state is not null");
            return (Criteria) this;
        }

        public Criteria andStateEqualTo(Integer value) {
            addCriterion("state =", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateNotEqualTo(Integer value) {
            addCriterion("state <>", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateGreaterThan(Integer value) {
            addCriterion("state >", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateGreaterThanOrEqualTo(Integer value) {
            addCriterion("state >=", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateLessThan(Integer value) {
            addCriterion("state <", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateLessThanOrEqualTo(Integer value) {
            addCriterion("state <=", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateIn(List<Integer> values) {
            addCriterion("state in", values, "state");
            return (Criteria) this;
        }

        public Criteria andStateNotIn(List<Integer> values) {
            addCriterion("state not in", values, "state");
            return (Criteria) this;
        }

        public Criteria andStateBetween(Integer value1, Integer value2) {
            addCriterion("state between", value1, value2, "state");
            return (Criteria) this;
        }

        public Criteria andStateNotBetween(Integer value1, Integer value2) {
            addCriterion("state not between", value1, value2, "state");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table ordeing
     *
     * @mbg.generated do_not_delete_during_merge Thu Sep 26 12:12:03 CST 2019
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table ordeing
     *
     * @mbg.generated Thu Sep 26 12:12:03 CST 2019
     */
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