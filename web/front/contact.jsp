<%@ page import="com.cxspace.bean.PageBean" %>
<%@ page import="com.cxspace.entity.Contact" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: cx
  Date: 2016/09/17
  Time: 1:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if(session.getAttribute("loginUser")==null)
    {
        response.sendRedirect(request.getContextPath()+"/front/login.jsp");
    }
%>
<<html ng-app="ionicApp">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1,width=device-width">
    <title>通讯录</title>
    <link href="${pageContext.request.contextPath}/front/css/ionic.css" rel="stylesheet" >
    <script src="${pageContext.request.contextPath}/front/js/ionic.bundle.js"></script>
    <script type="text/javascript">
        angular.module('ionicApp', ['ionic'])

                .controller('SlideController', function($scope) {

                    $scope.myActiveSlide = 1;

                })
    </script>


</head>
<body ng-controller="SlideController">

<div class="bar bar-header bar-positive">
    <a class="button button-icon icon ion-chevron-left" href="${pageContext.request.contextPath}/front/index.jsp"></a>
    <div class="h1 title"><b>通讯录</b></div>
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
    <ion-scroll zooming="true" direction="xy" style="width: 100%; height: 78%">

        <div class="list card">

            <c:choose>

                <c:when test="${not empty requestScope.pageBean.pageData}">
                    <c:forEach var="contact" items="${requestScope.pageBean.pageData}" varStatus="vs">
                        <div class="item item-image">
                            <img src="${pageContext.request.contextPath}/upload/${contact.pic}" alt="用户头像">
                        </div>
                        <div class="item item-text-wrap">
                            <h1>${contact.name}</h1>
                            <h2>${contact.phone}</h2>
                            <h3>录取院校:${contact.college}</h3>
                            <h3>录取专业:${contact.major}</h3>
                            <h3>所在城市：${contact.city}</h3>
                        </div>

                        <br>

                    </c:forEach>
                </c:when>
                <c:otherwise>
                    <div class="item item-text-wrap">
                        <h3>没有数据</h3>
                    </div>
                </c:otherwise>

            </c:choose>
        <%
            PageBean<Contact> contactPageBean = (PageBean<Contact>) request.getAttribute("pageBean");
            int a = contactPageBean.getCurrentPage();
            int b = contactPageBean.getTotalPage();
        %>


            <div class="button-bar">
                <a class="button text-left button-clear" href="${pageContext.request.contextPath}/PageContactServlet?currentPage=${requestScope.pageBean.currentPage-1}">上一页</a>
                <a class="button-clear">
                    <%=a%>
                    /
                    <%=b%>
                </a>
                <a class="button text-right button-clear" href="${pageContext.request.contextPath}/PageContactServlet?currentPage=${requestScope.pageBean.currentPage+1}">下一页</a>
            </div>

            <br>
            <br><br><br>

        </div>

        <br>

    </ion-scroll>
</div>

<div class="tabs tabs-icon-top tabs-color-calm">
    <a class="tab-item" href="${pageContext.request.contextPath}/front/index.jsp">
        <i class="icon ion-home"></i>
        主页
    </a>
    <a class="tab-item active" href="${pageContext.request.contextPath}/PageContactServlet">
        <i class="icon ion-ios-photos"></i>
        通讯录
    </a>
    <a class="tab-item" href="${pageContext.request.contextPath}/front/setting.jsp">
        <i class="icon ion-gear-a"></i>
        设置
    </a>
</div>

</body>
</html>