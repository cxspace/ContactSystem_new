<%--
  Created by IntelliJ IDEA.
  User: cx
  Date: 2016/09/16
  Time: 19:05
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
    <title>主页</title>
    <link href="${pageContext.request.contextPath}/front/css/ionic.css" rel="stylesheet" >
    <script src="${pageContext.request.contextPath}/front/js/ionic.bundle.js"></script>
    <script type="text/javascript">
        angular.module('ionicApp', ['ionic'])

                .controller('SlideController', function($scope) {

                    $scope.myActiveSlide = 1;

                })
    </script>
    <style type="text/css">
        .slider {
            height: 100%;
        }
        .slider-slide {
            color: #5e9ab8;
            background-color: #fff; text-align: center;
            font-family: "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif; font-weight: 300; }
        .index1 {
            background-image: url("${pageContext.request.contextPath}/front/images/index_1.jpg");
            width: 100%;
            height: 100%;
        }

        .index2 {

            background-image: url("${pageContext.request.contextPath}/front/images/index_2.jpg");
            width: 100%;
            height: 100%;

        }

        .index3 {

            background-image: url("${pageContext.request.contextPath}/front/images/index_3.jpg");
            width: 100%;
            height: 100%;

        }
        .box{
            height:100%;
        }
        .box h3{
            position:relative; top:40%; transform:translateY(-50%);
        }
    </style>
</head>
<body ng-controller="SlideController">

<div class="bar bar-header bar-positive">
    <div class="h1 title"><b>主页</b></div>
</div>

<div class="content has-header ionic-pseudo">

    <div class="list">
        <!--使用 item-avatar 来创建一个带头像的列表：-->
        <li class="item item-avatar">
            <img src="${pageContext.request.contextPath}/front/images/ic_launcher.png">
            <h2>高三(1)班</h2>
            <p>web通讯录</p>
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
    <ion-scroll zooming="true" direction="xy" style="width: 100%; height: 86%">

        <ion-slide-box active-slide="myActiveSlide" style="width: 100%;height: 300px">
            <ion-slide>
                <div class="box index1">
                    <h3 style="color: #ffffff">那年夏天</h3>
                    <p style="color: #ffffff; position:relative; top:45%; transform:translateY(-50%);">很多年后，我们把这个夏天叫做“那年夏天”，但是那年夏天，我们曾笑得很美，很绚烂。</p>
                </div>
            </ion-slide>
            <ion-slide>
                <div class="box index2">
                    <h3 style="color: #ffffff">有你有我</h3>
                    <p style="color: #ffffff ; position:relative; top:45%; transform:translateY(-50%);">不管未来有多长久，请记住成长的路上有你有我；不管经历多少个春夏秋冬，请铭记共度的青春年华。
                        亲爱的朋友，愿你绽放最绚丽的笑容，给明天画出最美丽的梦。</p>
                </div>
            </ion-slide>
            <ion-slide>
                <div class="box index3">
                    <h3 style="color: #ffffff">似水年华</h3>
                    <p style="color: #ffffff; position:relative; top:45%; transform:translateY(-50%);">
                        离开不是离别，是启航，是去追寻我们美丽的梦想！哪怕眼含不舍，我们也要笑着上路。多年以后，
                        当我们再回首，一定还会记得，那初夏的雨中，也曾有你我的笑脸，那和煦的阳光下，也曾映照着你我如水的年华！</p>
                </div>
            </ion-slide>
        </ion-slide-box>
        <br>
        <br>

        <div class="list">
            <!--使用 item-avatar 来创建一个带头像的列表：-->
            <a class="item item-avatar" href="${pageContext.request.contextPath}/front/map.jsp">
                <img src="${pageContext.request.contextPath}/front/images/MapLogo.png">
                <h2>查看通讯地图</h2>
                <p>点击标记的红色点,即可查看相应的通讯信息</p>
            </a>

            <!--使用 item-avatar 来创建一个带头像的列表：-->
            <a class="item item-avatar" href="${pageContext.request.contextPath}/front/photoList.jsp">
                <img src="${pageContext.request.contextPath}/front/images/index_3.jpg">
                <h2>查看照片墙</h2>
                <p>那些熟悉的笑脸,一点都没有变</p>
            </a>
            <!--使用 item-avatar 来创建一个带头像的列表：-->
            <a class="item item-avatar" href="${pageContext.request.contextPath}/PageMessageServlet">
                <img src="${pageContext.request.contextPath}/front/images/messageLogo.jpg">
                <h2>查看留言板</h2>
                <p>看看大家都说了什么吧</p>
            </a>
        </div>
        <br>
        <br><br>
        <br>
        <br><br>

    </ion-scroll>
</div>

<div class="tabs tabs-icon-top tabs-color-calm">
    <a class="tab-item active" href="${pageContext.request.contextPath}/front/index.jsp">
        <i class="icon ion-home"></i>
        主页
    </a>
    <a class="tab-item" href="${pageContext.request.contextPath}/PageContactServlet">
        <i class="icon ion-person-stalker"></i>
        通讯录
    </a>
    <a class="tab-item" href="${pageContext.request.contextPath}/front/setting.jsp">
        <i class="icon ion-gear-a"></i>
        设置
    </a>
</div>

</body>
</html>
