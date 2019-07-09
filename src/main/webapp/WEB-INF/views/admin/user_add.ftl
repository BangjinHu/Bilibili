<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>哔哩哔哩 - 系统后台</title>
    <!-- Favicon and touch icons -->
    <link rel="shortcut icon" href="${basePath}/static/ico/favicon.ico" type="image/x-icon" />
    <!-- Css files -->
    <link href="${basePath}/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="${basePath}/static/css/jquery.mmenu.css" rel="stylesheet">
    <link href="${basePath}/static/css/font-awesome.min.css" rel="stylesheet">
    <link href="${basePath}/static/plugins/jquery-ui/css/jquery-ui-1.10.4.min.css" rel="stylesheet">
    <link href="${basePath}/static/plugins/jquery.sumoselect/css/sumoselect.css" rel="stylesheet">
    <link href="${basePath}/static/css/style.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="${basePath}/static/js/html5shiv.min.js"></script>
    <script src="${basePath}/static/js/respond.min.js"></script>
    <![endif]-->
    <style>
        .choose-block {
            border: 1px solid;
            border-radius: 6px;
            padding: 2px;
            display: inline-block;
            margin-bottom: 4px;
        }

        .choose-block:hover {
            background-color: #eee;
            cursor: default;
        }
    </style>

</head>
</head>

<body>
<!-- header -->
<#include "admin/inc/header.ftl">
<div class="container-fluid content">
    <div class="row">
        <!-- menu -->
        <#include "admin/inc/menu.ftl">
        <!-- start: Content -->
        <div class="main ">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h2><i class="fa fa-indent red"></i><strong>添加用户</strong></h2>
                        </div>
                        <div class="panel-body">
                            <br>
                            <br>
                            <form action="add/do" method="post" class="form-horizontal">
                                <div class="form-group">
                                    <label class="col-md-3 control-label" for="userRealName">真实姓名</label>
                                    <div class="col-md-6">
                                        <input type="text" id="userRealName" name="userRealName" class="form-control" placeholder="" value="" data-required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label" for="username">姓名</label>
                                    <div class="col-md-6">
                                        <input type="text" id="username" name="username" class="form-control" placeholder="" value="" data-required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label" for="password">密码</label>
                                    <div class="col-md-6">
                                        <input type="text" id="password" name="password" class="form-control" placeholder="" value="" data-required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label" for="userBankCard">银行卡号</label>
                                    <div class="col-md-6">
                                        <input type="text" id="userBankCard" name="userBankCard" class="form-control" placeholder="" value="" data-required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label" for="username">电话</label>
                                    <div class="col-md-6">
                                        <input type="text" id="usePhone" name="usePhone" class="form-control" placeholder="" value="" data-required>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-3 control-label" for="userSex">性别</label>
                                    <div class="col-md-6">
                                        <select name="userSex" id="userSex" class="form-control">
                                            <option value="0" selected="selected">男</option>
                                            <option value="1">女</option>
                                        </select>
                                    </div>
                                </div>
                                <br>
                                <br>
                                <div class="form-group">
                                    <div class="col-md-12 col-lg-offset-6" >
                                        <button type="button" class="btn btn-primary" id="btn-submit"><i class="fa fa-dot-circle-o"></i> 提交</button>
                                        <button type="button" onclick="history.back()" class="btn btn-danger"><i class="fa fa-rotate-left"></i> 返回</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!--/.col-->
            </div>
            <!-- end: Content -->
            <br>
            <br>
            <br>
        </div>
        <!--/container-->
        <div class="modal fade" id="myModal">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">提示</h4>
                    </div>
                    <div class="modal-body">
                        <p></p>
                    </div>
                    <div class="modal-footer" style="display: none;">
                        <button type="button" class="btn btn-default" data-dismiss="modal">放弃</button>
                        <button type="button" class="btn btn-primary" id="btn-commit">确认</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
        <div class="clearfix"></div>
    </div>
</div>
</body>
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
<script src="${basePath}/static/plugins/autosize/jquery.autosize.min.js"></script>
<script src="${basePath}/static/plugins/placeholder/jquery.placeholder.min.js"></script>
<!-- theme scripts -->
<script src="${basePath}/static/js/SmoothScroll.js"></script>
<script src="${basePath}/static/js/jquery.mmenu.min.js"></script>
<script src="${basePath}/static/js/core.min.js"></script>
<!-- inline scripts related to this page -->
<!-- end: JavaScript-->

<script type="text/javascript">

    $('.sidebar-menu li').eq(2).addClass('active').addClass('open');

    $(function() {
        $('.choose-block').on('click', function(event) {
            event.preventDefault();
            $(this).parent().siblings('input').val($(this).html());
        });

        $("#birthday").datepicker({
            dateFormat: "yy-mm-dd",
            monthNamesShort: ["1月", "2月", "3月", "4月", "5月", "6月", "7月", "8月", "9月", "10月", "11月", "12月"],
            monthNames:["1月", "2月", "3月", "4月", "5月", "6月", "7月", "8月", "9月", "10月", "11月", "12月"],
            dayNamesMin:['日', "一", "二", "三", "四", "五", "六"],
            prevText: "上一月",
            nextText: "下一月",
            changeMonth: true,
            changeYear: true,
            yearRange:"1900:2017"
        });
    });

    $(function() {

        var $modal = $('#myModal');
        var $p = $modal.find('p');

        $('#btn-submit').on('click', function(event) {
            event.preventDefault();

            if ($('#username').val() == '') {
                $p.html("请填写姓名");
                $modal.modal('show');
                return false;
            }

            if ($('#userPhone').val() == '') {
                $p.html("请填写工资号")
                $modal.modal('show');
                return false;
            }

            $modal.find('h4').html("确认提交？")
            $modal.find('.modal-body').remove();
            $('.modal-footer').css('display', 'inherit');
            $modal.modal('show');

        });

        $('#btn-commit').on('click', function(event) {
            event.preventDefault();
            $('form').submit();
        });

    });

</script>

</html>
