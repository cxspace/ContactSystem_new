<%--
  Created by IntelliJ IDEA.
  User: cx
  Date: 2016/09/17
  Time: 1:55
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
    <title>修改头像</title>
    <link href="${pageContext.request.contextPath}/front/css/ionic.css" rel="stylesheet" >
    <script src="${pageContext.request.contextPath}/front/js/ionic.bundle.js"></script>


</head>
<body ng-controller="SlideController">

<div class="bar bar-header bar-positive">
    <a class="button button-icon icon ion-chevron-left" href="${pageContext.request.contextPath}/front/setting.jsp"></a>
    <div class="h1 title"><b>修改头像</b></div>
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

    <form method="post" action="${pageContext.request.contextPath}/updateContactPicServlet" enctype="multipart/form-data">
        <div class="list list-inset">

            <label class="item item-text-wrap">
                请选择一张小于0.5M的头像
            </label>
            <label class="item item-input item-stacked-label">
                <input type="file" placeholder="选择头像..." name="file">
            </label>
        <label class="item item-text-wrap">
            <%
                if (request.getAttribute("message")!=null)
                {
            %>
            <h5>上传ok!</h5>
            <%
                }
            %>
        </label>
        </div>
        <div class="padding">
            <button class="button button-block button-positive" type="submit">上传头像</button>
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
