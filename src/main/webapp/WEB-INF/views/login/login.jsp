<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>登录</title>
    <link rel="stylesheet" href="/static/bootstrap/css/bootstrap.min.css">
    <link rel="icon" type="image/x-icon" href="/static/images/favicon.ico">
    <script src="/static/jquery.min.js"></script>
    <script src="/static/bootstrap/js/bootstrap.min.js"></script>
    <style>
        body {
            margin: 0px;
            background-color: #fff;
        }
        .login-panel {
            width: 420px;
            margin: 0px auto;
            margin-top: 200px;
        }

        .title {
            width: 400px;
            height: 50px;
            background-image: url("/static/images/login/title.png");
        }

        .login-form {
            width: 400px;
            height: 250px;
            border: 1px solid #e7e7e7;;
            -webkit-box-shadow: 0 0 50px #e7e7e7;
            -moz-box-shadow: 0 0 50px #e7e7e7;
            box-shadow: 0 0 50px #e7e7e7;
            border-radius: 5px;
            padding: 20px 40px;
            margin-top: 15px;
        }
    </style>
    <script>
        $(function () {
            setTimeout(function () {
                $("#errorDiv").animate({
                    display: "none",
                    opacity: '0',
                }, 2000);
            }, 2000)
        })
    </script>
</head>
<body>
<div class="login-panel">
    <div class="title"></div>
    <div class="login-form">
        <form action="/login" method="post">
            <div class="form-group">
                <label for="username">用户名</label>
                <input type="text" class="form-control" name="username" id="username" placeholder="">
            </div>
            <div class="form-group">
                <label for="password">密码</label>
                <input type="password" class="form-control" name="password" id="password" placeholder="">
            </div>
            <div class="checkbox text-right">
                <label>
                    <input type="checkbox" name="remember"> 记住我
                </label>
                <button type="submit" class="btn btn-info" style="width:80px;margin-left:50px;">登录</button>
            </div>
        </form>
    </div>
    <c:if test="${not empty error}">
        <div id="errorDiv" class="alert alert-danger" role="alert" style="width:350px;margin:20px 25px;">${error}</div>
    </c:if>
</div>
</body>
</html>