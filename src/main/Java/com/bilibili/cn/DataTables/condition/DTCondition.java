package com.bilibili.cn.DataTables.condition;

/**
 * entity:在利用DataTables分页时候组装sql语句主体
 */
public class DTCondition {

    private String select = "";
    private String where = "";
    private String order = "";
    private String limit = "";

    public String getSelect() {
        return select;
    }

    public void setSelect(String select) {
        this.select = select;
    }

    public String getWhere() {
        return where;
    }

    public void setWhere(String where) {
        this.where = where;
    }

    public String getOrder() {
        return order;
    }

    public void setOrder(String order) {
        this.order = order;
    }

    public String getLimit() {
        return limit;
    }

    public void setLimit(String limit) {
        this.limit = limit;
    }

    @Override
    public String toString() {
        return "DTCondition{" + "select='" + select + '\'' + ", where='" + where + '\'' + ", order='" + order + '\'' + ", limit='" + limit + '\'' + '}';
    }
}
