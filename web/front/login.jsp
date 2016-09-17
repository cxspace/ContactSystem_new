<%--
  Created by IntelliJ IDEA.
  User: cx
  Date: 2016/09/16
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html ng-app="ionicApp">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no, width=device-width">
    <title>用户登录</title>
    <link href="${pageContext.request.contextPath}/front/css/ionic.css" rel="stylesheet" >
    <script src="${pageContext.request.contextPath}/front/js/ionic.bundle.js"></script>
</head>
<body>

<div class="bar bar-header bar-positive">
    <div class="h1 title"><b>高三(1)班通讯录系统</b></div>
</div>

<!--使用 input-label 将标签放置于输入框 input 的左侧。-->

<br>
<br>

<div class="content has-header">

    <form method="post" action="${pageContext.request.contextPath}/UserLoginServlet">
        <div class="list">
            <label class="item item-input item-stacked-label">
                <span class="input-label">用户名:</span>
                <input type="text" name="phone" placeholder="请输入...">
            </label>
            <label class="item item-input item-stacked-label">
                <span class="input-label">密码:</span>
                <input type="password" name="password" placeholder="请输入...">
            </label>

        </div>
        <div class="padding">
            <button class="button button-block button-positive" type="submit">登录</button>
        </div>

    </form>

    <ul class="list">

        <li class="item">

    <%
        if(request.getAttribute("message")!=null)
        {
    %>
         <%=request.getAttribute("message")%>
    <%
        }
    %>
        </li>

        </ul>
</div>

<div class="bar bar-footer bar-positive">
    <div class="h1 title">CopyRight@2016.护理专家工作室</div>
</div>

</body>
</html>