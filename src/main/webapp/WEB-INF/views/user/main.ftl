<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bilibili</title>

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
<#include "user/inc/header.ftl">
<!-- end: Header -->
<div class="container-fluid content">
    <div class="row">
        <!-- start: Main Menu -->
        <#include "user/inc/menu.ftl">
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
                                <li>电院新的网络系统刚刚上线，存在不少问题，请各位同学把发现的问题反馈在西电导航3#QQ群553408197里。例如无指导老师，或者指导老师错误等。</li>
                                <li>如果遇到HTTP Status 404 错误，请登录其他系统例如教务系统、财务系统，选择彻底退出系统，再次访问 <a href="http://dyxt.xidian.edu.cn">http://dyxt.xidian.edu.cn</a> 或者更换浏览器访问。</li>
                                <li>文件上传后，指导教师审核确认过，如果还需要更改上传，请联系指导教师，把文件改为未审核，即可上传更新。</li>
                                <li><h1 class="red">问题反馈请加QQ群553408197</h1></li>
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
                            <h3 class="text-center"><strong>${student.name}</strong></h3>
                            <hr>
                            <h4><strong>基本信息</strong></h4>
                            <ul class="profile-details">
                                <li>
                                    <div><i class="fa fa-bookmark"></i> 学号</div>
                                    <!-- deal null or emtry string -->
                                    <p>${((student.sno)?length>0)?string((student.sno), "&nbsp;")}</p>
                                </li>
                                <li>
                                    <div><i class="fa fa-book"></i> 年级</div>
                                    ${((student.grade)?length>0)?string((student.grade), "&nbsp;")}
                                </li>
                                <li>
                                    <div><i class="fa fa-users"></i> 班级</div>
                                    ${((student.sclass)?length>0)?string((student.sclass), "&nbsp;")}
                                </li>
                                <li>
                                    <div><i class="fa fa-square"></i> 学院</div>
                                    ${((student.department)?length>0)?string((student.department), "&nbsp;")}
                                </li>
                                <li>
                                    <div><i class="fa fa-building-o"></i> 专业</div>
                                    ${((student.major)?length>0)?string((student.major), "&nbsp;")}
                                </li>
                                <li>
                                    <div><i class="fa fa-compass"></i> 方向</div>
                                    ${((student.field)?length>0)?string((student.field), "&nbsp;")}
                                </li>
                            </ul>
                            <hr>
                            <h4><strong>联系方式</strong></h4>
                            <ul class="profile-details">
                                <li>
                                    <div><i class="fa fa-phone"></i> 电话</div>
                                    ${((student.phone)?length>0)?string((student.phone), "&nbsp;")}
                                </li>
                                <li>
                                    <div><i class="fa fa-envelope"></i> 邮箱</div>
                                    ${((student.email)?length>0)?string((student.email), "&nbsp;")}
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

        <div class="modal fade" id="time-lack-modal" aria-hidden="true" data-backdrop="static">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">提示</h4>
                    </div>
                    <div class="modal-body">
                        <p></p>
                    </div>
                    <div class="modal-footer">
                        <a href="#" class="btn btn-primary">更新</a>
                        <a href="#" class="btn btn-primary">不更新</a>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>

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

</html>
