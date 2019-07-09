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
                            <h2><i class="fa fa-indent red"></i><strong>修改用户信息</strong></h2>
                        </div>
                        <div class="panel-body">
                            <br>
                            <br>
                            <form action="do" method="post" class="form-horizontal ">
                                <input type="hidden" name="id" value="${user.userId}">

                                <div class="form-group">
                                    <label class="col-md-3 control-label" for="userRealName">真实姓名</label>
                                    <div class="col-md-6">
                                        <input type="text" id="userRealName" name="userRealName" class="form-control" placeholder="" value="${user.userRealName}" data-required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label" for="userName">姓名</label>
                                    <div class="col-md-6">
                                        <input type="text" id="userName" name="userName" class="form-control" placeholder="" value="${user.userName}" data-required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label" for="password">密码</label>
                                    <div class="col-md-6">
                                        <input type="text" id="password" name="password" class="form-control" placeholder="" value="${user.password}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label" for="userBankCard">银行卡号</label>
                                    <div class="col-md-6">
                                        <input type="text" id="userBankCard" name="userBankCard" class="form-control" placeholder="" value="${user.userBankCard}" data-required>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-3 control-label" for="userSex">性别</label>
                                    <div class="col-md-6">
                                        <input type="text" id="userSex" name="userSex" class="form-control" placeholder="" value="${user.userSex}" data-required>
                                    </div>
                                </div>

                                <br>
                                <br>

                                <div class="form-group">
                                    <div class="col-md-12 col-lg-offset-6" >
                                        <button type="button" class="btn btn-primary" id="btnsubmit"><i class="fa fa-dot-circle-o"></i> 修改</button>
                                        <button type="reset" class="btn btn-danger"><i class="fa fa-ban"></i> 重置</button>
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

    $('.sidebar-menu li').eq(1).addClass('active').addClass('open');

    $(function() {

        var $modal = $('#myModal');
        var $p = $modal.find('p');

        $('#btnsubmit').on('click', function(event) {
            event.preventDefault();

            if ($('#userName').val() == '') {
                $p.html("请填写姓名");
                $modal.modal('show');
                return false;
            }

            $modal.find('h4').html("确认修改？")
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
