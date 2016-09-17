<%--
  Created by IntelliJ IDEA.
  User: cx
  Date: 2016/09/17
  Time: 2:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if(session.getAttribute("loginUser")==null)
    {
        response.sendRedirect(request.getContextPath()+"/front/login.jsp");
    }
%>
<html ng-app="ionicApp">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1,width=device-width">
    <title>发送建议</title>
    <link href="${pageContext.request.contextPath}/front/css/ionic.css" rel="stylesheet" >
    <script src="${pageContext.request.contextPath}/front/js/ionic.bundle.js"></script>


</head>
<body ng-controller="SlideController">

<div class="bar bar-header bar-positive">
    <a class="button button-icon icon ion-chevron-left" href="${pageContext.request.contextPath}/front/setting.jsp"></a>
    <div class="h1 title"><b>发送建议</b></div>
</div>

<div class="content has-header ionic-pseudo">

    <div class="list">
        <!--使用 item-avatar 来创建一个带头像的列表：-->
        <li class="item item-avatar">
            <img src="${pageContext.request.contextPath}/front/images/ic_launcher.png">
            <h2>当前用户</h2>
            <p>
                    <%
                            if(session.getAttribute("loginUser")!=null)
                            {
                        %>
            <h5>当前帐号</h5>
            <h5><%=session.getAttribute("loginUser")%>

            </h5>
            <%
                }
            %>
            </p>
        </li>
    </div>

    <form method="post" action="${pageContext.request.contextPath}/AddSuggestServlet">
        <div class="list list-inset">
            <label class="item item-input item-stacked-label">
                <span class="input-label">姓名</span>
                <input type="text" placeholder="请输入..." name="name">
            </label>
            <label class="item item-input item-stacked-label">
                <span class="input-label">邮箱</span>
                <input type="email" placeholder="请输入..." name="email">
            </label>
            <label class="item item-input item-stacked-label">
                <span class="input-label">建议</span>
                <textarea rows="5" placeholder="请输入..." name="content"></textarea>
            </label>
            <label class="item item-text-wrap">
                <%
                    if (request.getAttribute("suggestMessage")!=null)
                    {
                %>

                <h5><%=request.getAttribute("suggestMessage")%></h5>

                <%
                    }
                %>
            </label>
        </div>
        <div class="padding">
            <button class="button button-block button-positive" type="submit">发送</button>
        </div>

    </form>


</div>

<div class="tabs tabs-icon-top tabs-color-calm">
    <a class="tab-item" href="${pageContext.request.contextPath}/front/index.jsp">
        <i class="icon ion-home"></i>
        主页
    </a>
    <a class="tab-item" href="${pageContext.request.contextPath}/PageContactServlet">
        <i class="icon ion-person-stalker"></i>
        通讯录
    </a>
    <a class="tab-item active" href="${pageContext.request.contextPath}/front/setting.jsp">
        <i class="icon ion-gear-a"></i>
        设置
    </a>
</div>

</body>
</html>
