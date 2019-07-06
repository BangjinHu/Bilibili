<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>local</title>
    <link href="${basePath}/static/css/boostrap.min.css" rel="stylesheet">
</head>

<body>

<form role="form" class="col-md-4" action="dologin">
    <div class="form-group">
        <label for="username">用户名</label>
        <input type="text" class="form-control" id="username" name="username" placeholder="" value="3024">
    </div>
    <button type="submit" class="btn btn-default">用户登录</button>
</form>

<form role="form" class="col-md-4" action="dologin">
    <div class="form-group">
        <label for="username">用户名</label>
        <input type="text" class="form-control" id="username" name="username" placeholder="" value="2048">
    </div>
    <button type="submit" class="btn btn-default">管理员登录</button>
</form>
</body>
</html>