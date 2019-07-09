package com.bilibili.cn.DataTables.condition;

import com.bilibili.cn.DataTables.wrapper.request.Column;
import com.bilibili.cn.DataTables.wrapper.request.DataTableRequest;
import com.bilibili.cn.DataTables.wrapper.request.Order;
import org.apache.commons.lang.ArrayUtils;
import org.apache.commons.lang.StringUtils;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class DTConditionParser {

    /**
     * 前端DataTable条件的转换，将前台传过来的值转换成数据库能够查询的代码
     * @param dtRequest
     * @param columns
     * @param replace
     * @return
     */
    public static DTCondition parse(DataTableRequest dtRequest, String[] columns, Map<String, String> replaceMap){

        DTCondition condition = new DTCondition();
        //1.首先判断dtRequest的search值是否为空
        if (dtRequest.getSearch() != null && StringUtils.isNotBlank(dtRequest.getSearch().getValue())){
            List<String> likeList = new ArrayList<>();
            //2.得到要查询的列的值
            for (Column column : dtRequest.getColumns()){
                //3.判断要查询的列是否设置为可查询
                if (column.isSearchable()){
                    likeList.add(column.getData());
                }
            }

            if (null != replaceMap){
                //4.判断前台传过来的值与数据库查询的值是否一致
                for (String key : replaceMap.keySet()){
                    //5.查询要查询的list中是否包含要替换的值，如果有则返回第一次出现的下标位置
                    int idx = likeList.indexOf(key);
                    if (idx != -1){
                        //6.如果有替换则替换，将指定位置的值替换成要替换的值
                        likeList.set(idx, replaceMap.get(key));
                    }
                }
            }

            //7.构造like语句
            //7.1 前台传过来的具体的搜索的值
            String searchText = dtRequest.getSearch().getValue();
            List<String> whereList = new ArrayList<>();
            for (String col : likeList){
                if (col.equals("") || col == null){
                    continue;
                }
                //7.2 构造搜索的LIKE语句
                whereList.add(col + " LIKE '%" + searchText + "%'");
            }
            //7.3 条件的WHERE语句(select * from xxx where xxx)
            condition.setWhere(StringUtils.join(whereList, "OR"));
        }

        //8.再次开始替换每一列的值，表示要查询的列的名称
        if (null != replaceMap){
            for (String key : replaceMap.keySet()){
                int idx = ArrayUtils.indexOf(columns, key);
                if (idx != -1){
                    columns[idx] = replaceMap.get(key);
                }
            }
        }
        //9.表示要查询的列，对应数据库中的列
        condition.setSelect(StringUtils.join(columns, ","));

        //10.表示要查询的order值
        if (dtRequest.getOrders().size() > 0){
            List<String> orList = new ArrayList<>();
            for (Order order : dtRequest.getOrders()){
                orList.add(columns[order.getColumn()] + " " + order.getDir());
            }
            //11.设置order的值
            condition.setOrder(StringUtils.join(orList, ", "));
        }

        //12.设置limit的值，如果大于0则设置limit的值是该值
        if (dtRequest.getLength() >= 0){
            condition.setLimit(dtRequest.getStart() + ", " + dtRequest.getLength());
        }
        return condition;
    }
}
