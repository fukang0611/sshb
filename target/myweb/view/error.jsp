<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%String path = request.getContextPath();%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Error!</title>
    <!-- Bootstrap -->
    <link href="<%=path%>/libs/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- 登陆页面样式 -->
    <link href="<%=path%>/libs/bootstrap/css/signin.css" rel="stylesheet">
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="<%=path%>/libs/jquery-ui/jquery-ui.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<%=path%>/libs/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <div class="alert alert-danger">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        <strong>Error</strong> Soory , something must be mistakes.
    </div>
</div>
</body>
</html>
