<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>哔哩哔哩-系统后台</title>

    <!-- Favicon and touch icons -->
    <link rel="shortcut icon" href="${basePath}/static/ico/favicon.ico" type="image/x-icon" />
    <!-- Css files -->
    <link href="${basePath}/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="${basePath}/static/css/jquery.mmenu.css" rel="stylesheet">
    <link href="${basePath}/static/css/font-awesome.min.css" rel="stylesheet">
    <link href="${basePath}/static/plugins/jquery-ui/css/jquery-ui-1.10.4.min.css" rel="stylesheet">
    <link href="${basePath}/static/css/style.min.css" rel="stylesheet">
    <link href="${basePath}/static/css/add-ons.min.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="${basePath}/static/js/html5shiv.min.js"></script>
    <script src="${basePath}/static/js/respond.min.js"></script>
    <![endif]-->
    <style>
        ul.profile-details li {
            width: 16%;
            display: inline-block;
        }

        @media screen and (max-width: 768px) {
            ul.profile-details li {
                width: 100%;
                display: inherit;
            }
        }
    </style>
</head>
</head>

<body>
<!-- start: Header -->
<#include "admin/inc/header.ftl">
<!-- end: Header -->
<div class="container-fluid content">
    <div class="row">
        <!-- start: Main Menu -->
        <#include "admin/inc/menu.ftl">
        <!-- end: Main Menu -->
        <!-- start: Content -->
        <div class="main ">

            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h2><i class="fa fa-font red"></i><strong>说明</strong></h2>
                        </div>
                        <div class="panel-body">
                            <ol>
                                <li><h5 class="red">哔哩哔哩系统刚上线不久，存在不少问题，如果各位在使用过程中遇到任何问题，请联系##程序猿日常管理人员</h5></li>
                                <li><h5 class="red">问题反馈请加 ## 程序猿日常 ## 管理人员微信</h5></li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row profile">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h2><i class="fa fa-user red"></i><strong>个人信息</strong></h2>
                        </div>
                        <div class="panel-body">
                            <h3 class="text-center"><strong>${admin.username}</strong></h3>
                            <hr>
                            <h4><strong>基本信息</strong></h4>
                            <ul class="profile-details">
                                <li>
                                    <div><i class="fa fa-bookmark"></i> 账号</div>
                                    <!-- deal null or emtry string -->
                                    <p>${((admin.username)?length>0)?string((admin.username), "&nbsp;")}</p>
                                </li>
                                <li>
                                    <div><i class="fa fa-book"></i> 等级</div>
                                    ${((admin.level)?length>0)?string((admin.level), "&nbsp;")}
                                </li>

                                <li>
                                    <div><i class="fa fa-building-o"></i> UP视频主题</div>
                                    ${((admin.subject)?length>0)?string((admin.subject), "&nbsp;")}
                                </li>
                                <li>
                                    <div><i class="fa fa-compass"></i> 性别</div>
                                    ${((admin.sex)?length>0)?string((admin.sex), "&nbsp;")}
                                </li>
                            </ul>
                            <hr>
                            <h4><strong>联系方式</strong></h4>
                            <ul class="profile-details">
                                <li>
                                    <div><i class="fa fa-users"></i> 电话</div>
                                    ${((admin.phone)?length>0)?string((admin.phone), "&nbsp;")}
                                </li>
                                <li>
                                    <div><i class="fa fa-square"></i> 邮箱</div>
                                    ${((admin.email)?length>0)?string((admin.email), "&nbsp;")}
                                </li>
                            </ul>
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
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Modal title</h4>
                    </div>
                    <div class="modal-body">
                        <p>Here settings can be configured...</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
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
<script type="text/javascript" src="${basePath}/static/js/detect_browserv1.0.js"></script>
<!-- inline scripts related to this page -->
<script type="text/javascript">
    <#--$(function () {-->
    <#--    alert(${admin.username});-->
    <#--    console.log(${admin});-->
    <#--});-->
</script>
<!-- end: JavaScript-->
</html>
