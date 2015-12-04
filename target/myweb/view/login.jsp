<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%String path = request.getContextPath();%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <!-- Bootstrap框架必需配置 -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <!-- Bootstrap 样式 -->
    <link href="<%=path%>/libs/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap 表单验证 -->
    <link href="<%=path%>/libs/formValidator/bootstrapValidator.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <form id="loginForm" style="margin:100px auto;max-width: 300px" method="post" action="<%=path%>/login/check.do">
        <div class="form-group">
            <label class="control-label">USERNAME:</label>
            <input type="text" class="form-control " name="username" placeholder="Input username..." autofocus>
        </div>
        <div class="form-group">
            <label class="control-label">PSSWORD:</label>
            <input type="password" class="form-control " name="password" placeholder="Input password...">
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary" style=" width:60%;float: left">LOGIN</button>
            <button type="button" class="btn btn-info" style="float: right" onclick="register();">REGISTER</button>
        </div>
    </form>
</div>
<!-- jquery core -->
<script src="<%=path%>/libs/jquery/jquery-1.11.3.min.js"></script>
<!-- Bootstrap core -->
<script src="<%=path%>/libs/bootstrap/js/bootstrap.min.js"></script>
<!-- Bootstrap 表单验证 -->
<script src="<%=path%>/libs/formValidator/bootstrapValidator.js"></script>
<!-- javascript functions -->
<script type="text/javascript">
    $(document).ready(function () {
        initValidate();
    });
    function initValidate() {
        $('#loginForm').
                bootstrapValidator({
                    message: 'This value is not valid',
                    feedbackIcons: {
                        valid: 'glyphicon glyphicon-ok',
                        invalid: 'glyphicon glyphicon-remove',
                        validating: 'glyphicon glyphicon-refresh'
                    },
                    fields: {
                        username: {
                            message: 'The username is not valid',
                            validators: {
                                notEmpty: {
                                    message: 'The username is required and can\'t be empty'
                                },
                                stringLength: {
                                    min: 6,
                                    max: 30,
                                    message: 'The username must be more than 6 and less than 30 characters long'
                                },
                                regexp: {
                                    regexp: /^[a-zA-Z0-9_\.]+$/,
                                    message: 'The username can only consist of alphabetical, number, dot and underscore'
                                }
                            }
                        },
                        password: {
                            validators: {
                                notEmpty: {
                                    message: 'The password is required and can\'t be empty'
                                }
                            }
                        }
                    }
                })
                .on('success.form.bv', function (e) {
                    e.preventDefault();
                    var $form = $(e.target);
                    var bv = $form.data('bootstrapValidator');
                    $.post($form.attr('action'), $form.serialize(), function (result) {
                        alert(result.msg + "  " + result.status);
                    }, 'json');
                });
    }
    function register() {
        window.location.href = "<%=path%>/view/register.jsp";
    }
</script>
</body>
</html>
