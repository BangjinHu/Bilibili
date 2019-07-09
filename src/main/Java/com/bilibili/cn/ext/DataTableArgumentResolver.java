package com.bilibili.cn.ext;

import com.bilibili.cn.DataTables.wrapper.annotation.DataTableArgument;
import com.bilibili.cn.DataTables.wrapper.request.Column;
import com.bilibili.cn.DataTables.wrapper.request.DataTableRequest;
import com.bilibili.cn.DataTables.wrapper.request.Order;
import com.bilibili.cn.DataTables.wrapper.request.Search;
import org.springframework.core.MethodParameter;
import org.springframework.web.bind.support.WebDataBinderFactory;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.method.support.ModelAndViewContainer;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class DataTableArgumentResolver implements HandlerMethodArgumentResolver {
    @Override
    public boolean supportsParameter(MethodParameter methodParameter) {
        return methodParameter.hasParameterAnnotation(DataTableArgument.class);
    }

    @Override
    public Object resolveArgument(MethodParameter methodParameter, ModelAndViewContainer modelAndViewContainer, NativeWebRequest nativeWebRequest, WebDataBinderFactory webDataBinderFactory) throws Exception {

        DataTableRequest dtRequest = new DataTableRequest();
        if (nativeWebRequest.getParameter("draw") != null){
            dtRequest.setDraw(Integer.valueOf(nativeWebRequest.getParameter("draw")));
        }
        if (nativeWebRequest.getParameter("start") != null){
            dtRequest.setStart(Integer.valueOf(nativeWebRequest.getParameter("start")));
        }
        if (nativeWebRequest.getParameter("length") != null){
            dtRequest.setLength(Integer.valueOf(nativeWebRequest.getParameter("length")));
        }

        Map<String, String[]> parameterMap = nativeWebRequest.getParameterMap();
        if (parameterMap.containsKey("search[value]")){
            Search search = new Search();
            search.setValue(parameterMap.get("search[value]")[0]);
            search.setRegex(Boolean.valueOf(parameterMap.get("search[regex]")[0]));
            dtRequest.setSearch(search);
        }

        List<Order> orders = new ArrayList<>();
        int i = 0;
        String ockey = "order[" + i + "][column]", odkey;
        while (parameterMap.containsKey(ockey)){
            odkey = "order[" + i + "][dir]";
            Order order = new Order();
            order.setColumn(Integer.valueOf(parameterMap.get(ockey)[0]));
            order.setDir(parameterMap.get(odkey)[0]);
            orders.add(order);

            ockey = "order[" + (++i) + "][column]";
        }
        dtRequest.setOrders(orders);

        List<Column> columns = new ArrayList<>();
        i = 0;
        String cdkey, cnkey, cskey, cokey, csvkey, csrkey;
        cdkey = "columns[" + i + "][data]";
        while (parameterMap.containsKey(cdkey)){
            cnkey = "columns[" + i + "][name]";
            cskey = "columns[" + i + "][searchable]";
            cokey = "columns[" + i + "][orderable]";
            csvkey = "columns[" + i + "][search][value]";
            csrkey = "columns[" + i + "][search][regex]";

            Column column = new Column();
            column.setData(parameterMap.get(cdkey)[0]);
            column.setName(parameterMap.get(cnkey)[0]);
            column.setSearchable(Boolean.valueOf(parameterMap.get(cskey)[0]));
            column.setOrderable(Boolean.valueOf(parameterMap.get(cokey)[0]));
            Search search = new Search();
            search.setValue(parameterMap.get(csvkey)[0]);
            search.setRegex(Boolean.valueOf(parameterMap.get(csrkey)[0]));
            column.setSearch(search);
            columns.add(column);

            cdkey = "columns[" + (++i) + "][data]";
        }
        dtRequest.setColumns(columns);

        return dtRequest;
    }
}
