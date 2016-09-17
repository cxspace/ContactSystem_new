<%@ page import="com.cxspace.entity.Message" %>
<%@ page import="com.cxspace.bean.PageBean" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: cx
  Date: 2016/09/17
  Time: 0:37
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
    <title>留言板</title>
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
    <div class="h1 title"><b>留言板</b></div>
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

        <form method="post" action="${pageContext.request.contextPath}/AddMessageServlet">
            <div class="list list-inset">
                <label class="item item-input">
                    <textarea rows="5" placeholder="说点什么吧..." name="content"></textarea>
                </label>
            </div>
            <div class="padding">
                <button class="button button-block button-calm text-center">发表留言</button>
            </div>
            <div class="item item-text-wrap">
                <%
                    if(request.getAttribute("message")!=null)
                    {
                %>

                <h5 style="text-align: right"><%=request.getAttribute("message")%></h5>

                <%
                    }
                %>
            </div>
        </form>



        <div class="list card">

            <c:choose>
                <c:when test="${not empty requestScope.pageBean.pageData}">
                    <c:forEach var="message" items="${requestScope.pageBean.pageData}">
                        <div class="item item-text-wrap">
                            <h3>${message.name}</h3>
                            <h5>${message.write_time}</h5>
                                ${message.content}
                        </div>
                    </c:forEach>
                </c:when>
                <c:otherwise>
                    <div class="item item-text-wrap">
                        <h3>没有留言数据</h3>
                        赶快留点话吧！
                    </div>
                </c:otherwise>
            </c:choose>

            <br>

            <div class="button-bar">
                <a class="button text-left button-clear" href="${pageContext.request.contextPath}/PageMessageServlet?currentPage=${requestScope.pageBean.currentPage-1}">上一页</a>
                <a class="button-clear">
                    <%
                        PageBean<Message> messagePageBean = (PageBean<Message>) request.getAttribute("pageBean");
                        int a = messagePageBean.getCurrentPage();
                        int b = messagePageBean.getTotalPage();
                    %>
                    <%=a%>/<%=b%>
                </a>
                <a class="button text-right button-clear" href="${pageContext.request.contextPath}/PageMessageServlet?currentPage=${requestScope.pageBean.currentPage+1}">下一页</a>
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
    <a class="tab-item active" href="${pageContext.request.contextPath}/front/photoList.jsp">
        <i class="icon ion-ios-photos"></i>
        照片墙
    </a>
    <a class="tab-item" href="${pageContext.request.contextPath}/front/setting.jsp">
        <i class="icon ion-gear-a"></i>
        设置
    </a>
</div>

</body>
</html>
