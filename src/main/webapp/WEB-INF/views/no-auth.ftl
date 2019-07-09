<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Proton - Admin Template</title>


    <!-- Favicon and touch icons -->
    <link rel="shortcut icon" href="${basePath}/static/ico/favicon.ico" type="image/x-icon" />

    <!-- Css files -->
    <link href="${basePath}/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="${basePath}/static/css/jquery.mmenu.css" rel="stylesheet">
    <link href="${basePath}/static/css/font-awesome.min.css" rel="stylesheet">
    <link href="${basePath}/static/css/style.min.css" rel="stylesheet">
    <link href="${basePath}/static/css/add-ons.min.css" rel="stylesheet">
    <style>
        footer {
            display: none;
        }
    </style>
</head>
</head>

<body>
<div class="container-fluid content">
    <div class="row">
        <div id="content" class="col-sm-12 full">

            <div class="row box-error">

                <div class="col-lg-12 col-md-12 col-xs-12">
                    <div class="text-center">
                        <h1>403</h1>
                        <h2>
                            用户未登录，请登录！
                        </h2>
                        <#--<p>You need to login first to see this page.</p>-->
                        <a href="javascript: history.go(-1)">
                            <button class="btn btn-default"><span class="fa fa-chevron-left"> 返 回</span></button>
                        </a>
                        <a href="http://dyxt.xidian.edu.cn">
                            <button class="btn btn-default"><span class="fa fa-lock"> 登 录</span></button>
                        </a>
                        <a href="#">
                            <button class="btn btn-default"><span class="fa fa-envelope"> 联系管理员</span></button>
                        </a>
                    </div>

                </div><!--/col-->

            </div><!--/row-->

        </div><!--/content-->

    </div><!--/row-->


    <div id="usage-blank">
        <ul>
            <li>
                <div class="title">Memory</div>
                <div class="bar">
                    <div class="progress">
                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width: 25%"></div>
                    </div>
                </div>
                <div class="desc">2GB of 8GB</div>
            </li>
            <li>
                <div class="title">HDD</div>
                <div class="bar">
                    <div class="progress">
                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%"></div>
                    </div>
                </div>
                <div class="desc">750GB of 1TB</div>
            </li>
            <li>
                <div class="title">SSD</div>
                <div class="bar">
                    <div class="progress">
                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%"></div>
                    </div>
                </div>
                <div class="desc">300GB of 1TB</div>
            </li>
            <li>
                <div class="title">Bandwidth</div>
                <div class="bar">
                    <div class="progress">
                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%"></div>
                    </div>
                </div>
                <div class="desc">50TB of 50TB</div>
            </li>
        </ul>
    </div>

</div><!--/container-->


<!-- start: JavaScript-->
<!--[if !IE]>-->

<script src="${basePath}/static/js/jquery-2.1.1.min.js"></script>

<!--<![endif]-->

<!--[if IE]>

<script src="${basePath}/static/js/jquery-1.11.1.min.js"></script>

<![endif]-->

<!--[if !IE]>-->

<script type="text/javascript">
    window.jQuery || document.write("<script src='${basePath}/static/js/jquery-2.1.1.min.js'>"+"<"+"/script>");
</script>

<!--<![endif]-->

<!--[if IE]>

<script type="text/javascript">
    window.jQuery || document.write("<script src='${basePath}/static/js/jquery-1.11.1.min.js'>"+"<"+"/script>");
</script>

<![endif]-->
<script src="${basePath}/static/js/jquery-migrate-1.2.1.min.js"></script>
<script src="${basePath}/static/js/bootstrap.min.js"></script>


<!-- theme scripts -->
<script src="${basePath}/static/js/SmoothScroll.js"></script>
<script src="${basePath}/static/js/jquery.mmenu.min.js"></script>
<script src="${basePath}/static/js/core.min.js"></script>

<!-- end: JavaScript-->

</body>
</html>