<%--
  Created by IntelliJ IDEA.
  User: cx
  Date: 2016/09/17
  Time: 0:24
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
    <title>照片墙</title>
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
    <div class="h1 title"><b>照片墙</b></div>
</div>

<div class="content has-header ionic-pseudo">

    <div class="list">
        <!--使用 item-avatar 来创建一个带头像的列表：-->
        <li class="item item-avatar">
            <img src="images/ic_launcher.png">
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
    <ion-scroll zooming="true" direction="xy" style="width: 100%; height: 86%">

        <div class="list card">
            <div class="item item-image">
                <img src="${pageContext.request.contextPath}/front/images/1.jpg">
            </div>
            <br>
            <div class="item item-image">
                <img src="${pageContext.request.contextPath}/front/images/2.jpg">
            </div>
            <br>
            <div class="item item-image">
                <img src="${pageContext.request.contextPath}/front/images/3.jpg">
            </div>
            <br>
            <div class="item item-image">
                <img src="${pageContext.request.contextPath}/front/images/4.jpg">
            </div>
            <br>            <div class="item item-image">
            <img src="${pageContext.request.contextPath}/front/images/5.jpg">
        </div>
            <br>
            <div class="item item-image">
                <img src="${pageContext.request.contextPath}/front/images/6.jpg">
            </div>
            <br>            <div class="item item-image">
            <img src="${pageContext.request.contextPath}/front/images/7.jpg">
        </div>
            <br>
            <div class="item item-image">
                <img src="${pageContext.request.contextPath}/front/images/8.jpg">
            </div>
            <br>            <div class="item item-image">
            <img src="${pageContext.request.contextPath}/front/images/9.jpg">
        </div>
            <br>
            <div class="item item-image">
                <img src="${pageContext.request.contextPath}/front/images/10.jpg">
            </div>
            <br>

            <div class="item item-image">
                <img src="${pageContext.request.contextPath}/front/images/11.jpg">
            </div>
            <br>
            <div class="item item-image">
                <img src="${pageContext.request.contextPath}/front/images/12.jpg">
            </div>
            <br>
            <div class="item item-image">
                <img src="${pageContext.request.contextPath}/front/images/13.jpg">
            </div>
            <br>
            <div class="item item-image">
                <img src="${pageContext.request.contextPath}/front/images/14.jpg">
            </div>
            <br>            <div class="item item-image">
            <img src="${pageContext.request.contextPath}/front/images/15.jpg">
        </div>
            <br>
            <div class="item item-image">
                <img src="${pageContext.request.contextPath}/front/images/16.jpg">
            </div>
            <br>            <div class="item item-image">
            <img src="${pageContext.request.contextPath}/front/images/17.jpg">
        </div>
            <br>
            <div class="item item-image">
                <img src="${pageContext.request.contextPath}/front/images/18.jpg">
            </div>
            <br>            <div class="item item-image">
            <img src="${pageContext.request.contextPath}/front/images/19.jpg">
        </div>
            <br>
            <div class="item item-image">
                <img src="${pageContext.request.contextPath}/front/images/20.jpg">
            </div>
            <br>

            <div class="item item-image">
                <img src="${pageContext.request.contextPath}/front/images/21.jpg">
            </div>
            <br>
            <div class="item item-image">
                <img src="${pageContext.request.contextPath}/front/images/22.jpg">
            </div>
            <br>
            <div class="item item-image">
                <img src="${pageContext.request.contextPath}/front/images/23.jpg">
            </div>
            <br>
            <div class="item item-image">
                <img src="${pageContext.request.contextPath}/front/images/24.jpg">
            </div>
            <br>            <div class="item item-image">
            <img src="${pageContext.request.contextPath}/front/images/25.jpg">
        </div>
            <br>
            <div class="item item-image">
                <img src="${pageContext.request.contextPath}/front/images/26.jpg">
            </div>

            <br>
            <div class="item item-image">
                <img src="${pageContext.request.contextPath}/front/images/28.jpg">
            </div>
            <br>            <div class="item item-image">
            <img src="${pageContext.request.contextPath}/front/images/29.jpg">
        </div>
            <br>
            <div class="item item-image">
                <img src="${pageContext.request.contextPath}/front/images/30.jpg">
            </div>
            <br>

            <div class="item item-image">
                <img src="${pageContext.request.contextPath}/front/images/31.jpg">
            </div>
            <br>
            <div class="item item-image">
                <img src="${pageContext.request.contextPath}/front/images/32.jpg">
            </div>
            <br>
            <div class="item item-image">
                <img src="${pageContext.request.contextPath}/front/images/33.jpg">
            </div>
            <br>
            <div class="item item-image">
                <img src="${pageContext.request.contextPath}/front/images/34.jpg">
            </div>
            <br>            <div class="item item-image">
            <img src="${pageContext.request.contextPath}/front/images/35.jpg">
        </div>
            <br>
            <div class="item item-image">
                <img src="${pageContext.request.contextPath}/front/images/36.jpg">
            </div>
            <br>            <div class="item item-image">
            <img src="${pageContext.request.contextPath}/front/images/37.jpg">
        </div>
            <br>
            <div class="item item-image">
                <img src="${pageContext.request.contextPath}/front/images/38.jpg">
            </div>
            <br>            <div class="item item-image">
            <img src="${pageContext.request.contextPath}/front/images/39.jpg">
        </div>
            <br>
            <div class="item item-image">
                <img src="${pageContext.request.contextPath}/front/images/40.jpg">
            </div>
            <br>

            <div class="item item-image">
                <img src="${pageContext.request.contextPath}/front/images/41.jpg">
            </div>
            <br>
            <div class="item item-image">
                <img src="${pageContext.request.contextPath}/front/images/42.jpg">
            </div>
            <br>
            <div class="item item-image">
                <img src="${pageContext.request.contextPath}/front/images/43.jpg">
            </div>
            <br>
            <div class="item item-image">
                <img src="${pageContext.request.contextPath}/front/images/44.jpg">
            </div>
            <br>            <div class="item item-image">
            <img src="${pageContext.request.contextPath}/front/images/45.jpg">
        </div>
            <br>
            <div class="item item-image">
                <img src="${pageContext.request.contextPath}/front/images/46.jpg">
            </div>


        </div>

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
