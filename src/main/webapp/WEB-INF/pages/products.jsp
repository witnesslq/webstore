<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>网上商城</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<section>
    <div class="jumbotron">
        <div class="container">
            <h1>商品</h1>
            <p>所有商品</p>
        </div>
    </div>
</section>
<section class="container">
    <div class="row">
        <c:forEach items="${products}" var="product">
        <div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
            <div class="thumbnail">
                <img src="<c:url value="/static/images/${product.productId}.png"></c:url>" alt="image"  style = "width:100%"/>
                <div class="caption">
                    <h3>${product.name}</h3>
                    <p>${product.description}</p>
                    <p>${product.unitPrice} USD</p>
                    <p>Available ${product.unitsInStock} units in stock</p>
                    <p>
                        <a href="<spring:url value="/products/product?id=${product.productId}"/> " class="btn btn-primary">
                            <span class="glyphicon-info-sign glyphicon"/></span> Details
                        </a>
                    </p>
                </div>
            </div>

        </div>
        </c:forEach>
    </div>
</section>
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>