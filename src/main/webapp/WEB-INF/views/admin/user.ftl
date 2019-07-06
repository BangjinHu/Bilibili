<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>哔哩哔哩-系统后台</title>

    <!-- Fav and touch icons -->
    <link rel="shortcut icon" href="${basePath}/static/ico/favicon.ico" type="image/x-icon" />
    <!-- Css files -->
    <link href="${basePath}/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="${basePath}/static/css/jquery.mmenu.css" rel="stylesheet">
    <link href="${basePath}/static/css/font-awesome.min.css" rel="stylesheet">
    <link href="${basePath}/static/plugins/jquery-ui/css/jquery-ui-1.10.4.min.css" rel="stylesheet">
    <link href="${basePath}/static/css/style.min.css" rel="stylesheet">
    <link href="${basePath}/static/plugins/jquery.dataTables/css/dataTables.bootstrap.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="${basePath}/static/js/html5shiv.min.js"></script>
    <script src="${basePath}/static/js/respond.min.js"></script>
    <![endif]-->
    <style>
        td > a {
            padding: 5px 10px !important;
            margin-right: 2px;
        }
        input[type=search] {
            width: 300px !important;
        }
        tr > td:last-child {
            min-width: 75px;
        }

        div.dataTables_processing {
            z-index: 9999;
        }
        div.dataTables_processing img {
            width: 100px;
        }
    </style>

</head>

<body>
<!-- header -->
<#include "admin/inc/header.ftl">

<div class="container-fluid content">
    <div class="row">
        <!-- menu -->
        <#include "admin/inc/menu.ftl">

        <!-- start: Content -->
        <div class="main">

            <div class="row">

                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h2><i class="fa fa-table red"></i><span class="break"></span><strong>用户列表</strong></h2>
                            <div class="panel-actions">
                                <a href="#" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
                                <a href="#" class="btn-close"><i class="fa fa-times"></i></a>
                            </div>
                        </div>

                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover" id="user-table">
                                    <thead>
                                    <tr>
                                        <th>序号</th>
                                        <th>用户真实姓名</th>
                                        <th>用户姓名</th>
                                        <th>密码</th>
                                        <th>银行卡号</th>
                                        <th>性别</th>
                                        <th>头像</th>
                                        <th>地址</th>
                                        <th>电话</th>
                                        <th>QQ</th>
                                        <th>email</th>
                                        <th>收藏</th>
                                        <th>状态</th>
                                        <th>上次登录时间</th>
                                        <th>上次登录IP</th>
                                        <th>支付密码</th>
                                        <th>账户余额</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                </table>
                            </div>
                        </div>

                        <div class="panel-footer">
                            <a href="user/add" class="btn btn-success"><i class="fa fa-plus"></i> 添加用户</a>
                        </div>
                    </div>
                </div><!--/col-->

            </div><!--/row-->

        </div>
        <!-- end: Content -->
        <br>
        <br>
        <br>
    </div>
    <!--/container-->


    <!-- modal -->
    <div class="modal fade" id="myModal">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title"></h4>
                </div>
                <div class="modal-body">
                    <p></p>
                </div>
                <div class="modal-footer">
                    <input type="hidden" id="hide-userId" value="">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-primary" id="btn-commit">确定</button>
                </div>
            </div>
        </div>
    </div>

    <div class="clearfix"></div>

    <!-- start: JavaScript-->
    <!--[if !IE]>-->
    <script src="${basePath}/static/js/jquery-2.1.1.min.js"></script>
    <!--<![endif]-->

    <!--[if IE]>
    <script src="${basePath}/static/js/jquery-1.11.1.min.js"></script>
    <![endif]-->

    <!--[if !IE]>-->
    <script type="text/javascript">
        window.jQuery || document.write("<script src='${basePath}/static/js/jquery-2.1.1.min.js'>" + "<" + "/script>");
    </script>
    <!--<![endif]-->

    <!--[if IE]>
    <script type="text/javascript">
        window.jQuery || document.write("<script src='${basePath}/static/js/jquery-1.11.1.min.js'>"+"<"+"/script>");
    </script>
    <![endif]-->

    <script src="${basePath}/static/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="${basePath}/static/js/bootstrap.min.js"></script>
    <!-- page scripts -->
    <script src="${basePath}/static/plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script>
    <script src="${basePath}/static/plugins/jquery.dataTables/js/jquery.dataTables.min.js"></script>
    <script src="${basePath}/static/plugins/jquery.dataTables/js/dataTables.bootstrap.js"></script>
    <!--[if lte IE 8]>
    <script language="javascript" type="text/javascript" src="${basePath}/static/plugins/excanvas/excanvas.min.js"></script>
    <![endif]-->
    <script src="${basePath}/static/plugins/autosize/jquery.autosize.min.js"></script>
    <script src="${basePath}/static/plugins/placeholder/jquery.placeholder.min.js"></script>
    <!-- theme scripts -->
    <script src="${basePath}/static/js/SmoothScroll.js"></script>
    <script src="${basePath}/static/js/jquery.mmenu.min.js"></script>
    <script src="${basePath}/static/js/core.min.js"></script>
    <!-- inline scripts related to this page -->
    <script src="${basePath}/static/js/iepatch.js"></script>
    <!-- end: JavaScript-->

</body>

<script type="text/javascript">
    $(function() {
        $.fn.dataTable.ext.errMode='none'; //禁止datatables报错

        // 要显示的属性
        var showColumns = ["userId", "userRealName", "userName", "password",
            "userBankCard", "userSex", "userHandImg", "userAddr",
            "userPhone", "userQQ", "userEmail", "userCollection", "userState", "userLogin", "userIp",
            "userPass", "userRmb"];

        var columns = [];
        showColumns.forEach(function(cur){
            var obj = {};
            obj["data"] = cur;
            columns.push(obj);
        });

        //DataTable插件分页，服务器模式处理存在大量数据情况
        $('table').DataTable({
            "pagingType": "full_numbers",
            "processing": true,
            "serverSide": true,
            "ajax": {
                "url": "teacher/process",
                "type": "GET",
                "data": {
                    "showColumns": showColumns
                }
            },
            "columns": columns,
            "columnDefs": [
                {
                    "targets": [],
                    "visible": false
                },
                {
                    "targets": [],
                    "searchable": false
                },
                {
                    "targets": [],
                    "orderable": false
                },
                {
                    "targets": 18,
                    "data": null,
                    "render": function(data, type, row) {
                        var html =
                            '<input type="hidden" id="userId" value="{userId}">' +
                            '<a class="btn btn-success" href="javascript:void(0);" title="详情"><i class="fa fa-search-plus "></i></a>' +
                            '<a class="btn btn-info" href="user/modify/{userId}" title="修改"><i class="fa fa-edit "></i></a>' +
                            '<a class="btn btn-danger" href="#" title="删除"><i class="fa fa-trash-o "></i></a>';
                        html = html.replace(/{userId}/g, row.id);
                        return html;
                    }
                }
            ],
            "oLanguage" : {
                "sLengthMenu": "每页显示 _MENU_ 条记录",
                "sZeroRecords": "抱歉， 没有找到",
                "sInfo": "从 _START_ 到 _END_ /共 _TOTAL_ 条数据",
                "sInfoEmpty": "没有数据",
                "sInfoFiltered": "(从 _MAX_ 条数据中检索)",
                "sZeroRecords": "没有检索到数据",
                "sSearch": "全文搜索:",
                "sProcessing": "<img src='${basePath}/static/img/loading.gif'/> 正在加载数据...",
                "oPaginate": {
                    "sFirst": "首页",
                    "sPrevious": "前一页",
                    "sNext": "后一页",
                    "sLast": "尾页",
                    "sJump": "跳转"
                }
            }
        });
    });

    $(function() {
        var $modal = $('#myModal');
        $('#user-table').on('click', 'a.btn-danger', function(event) {
            event.preventDefault();
            var userId = $(this).siblings('input').val();
            console.log(userId);
            if (userId) {
                $modal.find('h4').html("确认删除该用户？");
                $modal.find('.modal-body').html("请谨慎操作!").css('color', '#ff5454');
                $modal.find('#hide-userId').val(userId);
                $modal.modal('show');
            }
        });

        $('#btn-commit').on('click', function(event) {
            event.preventDefault();
            var userId = $modal.find('#hide-userId').val();
            if (userId) {
                $.get('user/dlt/' + userId, function(data) {
                    if (data['code'] == 0) {
                        $modal.find('.modal-body').html("删除成功，即将跳转到列表").css('color', '#4a7d28');;
                    } else {
                        $modal.find('.modal-body').html("删除失败，原因未知，请重试!");
                    }
                    setTimeout(function() {
                        $modal.modal('hide');
                        window.location.href = "user";
                    }, 2000);
                });
            }
        });
    });

</script>

</html>
