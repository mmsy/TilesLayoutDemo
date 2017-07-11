<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title><tiles:insertAttribute name="title" ignore="true"/></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="stylesheet" href="/static/bootstrap/css/bootstrap.min.css">
    <link rel="icon" type="image/x-icon" href="/static/images/favicon.ico">
    <script src="/static/jquery.min.js"></script>
    <script src="/static/bootstrap/js/bootstrap.min.js"></script>
    <script src="/static/vue.min.js"></script>
</head>
<body>
    <div class="header">
        <tiles:insertAttribute name="header" />
    </div>
    <div>
        <tiles:insertAttribute name="body" />
    </div>
</body>
</html>
