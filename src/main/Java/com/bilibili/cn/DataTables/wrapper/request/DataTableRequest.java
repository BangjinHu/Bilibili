package com.bilibili.cn.DataTables.wrapper.request;

import java.util.List;

/**
 * 前台request主体，包含哪些请求列
 */
public class DataTableRequest {

    private int draw;
    private int start;
    private int length;
    private Search search;
    private List<Order> orders;
    private List<Column> columns;

    public int getDraw() {
        return draw;
    }

    public void setDraw(int draw) {
        this.draw = draw;
    }

    public int getStart() {
        return start;
    }

    public void setStart(int start) {
        this.start = start;
    }

    public int getLength() {
        return length;
    }

    public void setLength(int length) {
        this.length = length;
    }

    public Search getSearch() {
        return search;
    }

    public void setSearch(Search search) {
        this.search = search;
    }

    public List<Order> getOrders() {
        return orders;
    }

    public void setOrders(List<Order> orders) {
        this.orders = orders;
    }

    public List<Column> getColumns() {
        return columns;
    }

    public void setColumns(List<Column> columns) {
        this.columns = columns;
    }

    @Override
    public String toString() {
        return "DataTableRequest{" + "draw=" + draw + ", start=" + start + ", length=" + length + ", search=" + search + ", orders=" + orders + ", columns=" + columns + '}';
    }
}
