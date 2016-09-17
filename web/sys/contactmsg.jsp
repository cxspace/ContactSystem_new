<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if(session.getAttribute("loginAdmin")==null)
    {
        response.sendRedirect(request.getContextPath()+"/sys/login.jsp");
    }
%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>录入信息</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Le styles -->

    <link rel="stylesheet" href="${pageContext.request.contextPath}/sys/assets/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/sys/assets/css/loader-style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/sys/assets/css/bootstrap.css">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/sys/assets/js/progress-bar/number-pb.css">


    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=QXwuA2Zi8h3huVQvqVrW2MhU"></script>

    <style type="text/css">
        canvas#canvas4 {
            position: relative;
            top: 20px;
        }
    </style>




    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <!-- Fav and touch icons -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/sys/assets/ico/minus.png">
</head>

<body>
<!-- Preloader -->
<div id="preloader">
    <div id="status">&nbsp;</div>
</div>
<!-- TOP NAVBAR -->
<nav role="navigation" class="navbar navbar-static-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button data-target="#bs-example-navbar-collapse-1" data-toggle="collapse" class="navbar-toggle" type="button">
                <span class="entypo-menu"></span>
            </button>
            <button class="navbar-toggle toggle-menu-mobile toggle-left" type="button">
                <span class="entypo-list-add"></span>
            </button>


            <div id="logo-mobile" class="visible-xs">
                <h1>WEB管理<span>v1.2</span></h1>
            </div>

        </div>


        <!-- Collect the nav links, forms, and other content for toggling -->
        <div id="bs-example-navbar-collapse-1" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">

                <li class="dropdown">

                </li>
                <li><a href="#"><i data-toggle="tooltip" data-placement="bottom" title="帮助" style="font-size:20px;" class="icon-help tooltitle"></i></a>
                </li>

            </ul>




            <ul style="margin-right:0;" class="nav navbar-nav navbar-right">
                <li>
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <img alt="" class="admin-pic img-circle" src="${pageContext.request.contextPath}/sys/assets/img/logo.jpg">欢迎您!管理员用户. <b class="caret"></b>
                    </a>
                    <ul style="margin-top:14px;" role="menu" class="dropdown-setting dropdown-menu">
                        <li>
                            <a href="${pageContext.request.contextPath}/AdminLoginOutServlet">
                                <span class="entypo-user"></span>&#160;&#160;退出登录.</a>
                        </li>


                    </ul>
                </li>
                <li>
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <span class="icon-gear"></span>&#160;&#160;设置背景色</a>
                    <ul role="menu" class="dropdown-setting dropdown-menu">

                        <li class="theme-bg">
                            <div id="button-bg"></div>
                            <div id="button-bg2"></div>
                            <div id="button-bg3"></div>
                            <div id="button-bg5"></div>
                            <div id="button-bg6"></div>
                            <div id="button-bg7"></div>
                            <div id="button-bg8"></div>
                            <div id="button-bg9"></div>
                            <div id="button-bg10"></div>
                            <div id="button-bg11"></div>
                            <div id="button-bg12"></div>
                            <div id="button-bg13"></div>
                        </li>
                    </ul>
                </li>



            </ul>

        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>

<!-- /END OF TOP NAVBAR -->

<!-- SIDE MENU -->
<div id="skin-select">
    <div id="logo">
        <h1>高三（1）班通讯录后台管理系统<span>v0.1</span></h1>
    </div>

    <a id="toggle">
        <span class="entypo-menu"></span>
    </a>
    <div class="dark">
        <form action="#">
                <span>
                    <input type="text" name="search" value="" class="search rounded id_search" placeholder="搜索目录..." autofocus="">
                </span>
        </form>
    </div>

    <div class="search-hover">
        <form id="demo-2">
            <input type="search" placeholder="Search Menu..." class="id_search">
        </form>
    </div>




    <div class="skin-part">
        <div id="tree-wrap">
            <div class="side-bar">

                <ul class="topnav menu-left-nest">
                    <li>
                        <a href="#" style="border-left:0px solid!important;" class="title-menu-left">

                            <span class="widget-menu"></span>
                            <i data-toggle="tooltip" class="entypo-cog pull-right config-wrap"></i>

                        </a>
                    </li>


                    <li>
                        <a class="tooltip-tip ajax-load" href="${pageContext.request.contextPath}/sys/index.jsp" title="主页">
                            <i class="icon-view-thumb"></i>
                            <span>主页</span>

                        </a>
                    </li>

                    <li>
                        <a class="tooltip-tip ajax-load" href="${pageContext.request.contextPath}/sys/message.jsp" title="管理留言信息">
                            <i class="icon-view-thumb"></i>
                            <span>管理留言信息</span>

                        </a>
                    </li>

                    <li>
                        <a class="tooltip-tip ajax-load" href="${pageContext.request.contextPath}/sys/contactmsg.jsp" title="录入通讯信息">

                            <i class="icon-document"></i>
                            <!--                         <i class="icon-camera"></i>  -->
                            <span>录入通讯信息</span>

                        </a>
                    </li>
                </ul>






                <ul id="menu-showhide" class="topnav menu-left-nest">




                </ul>



                <div class="side-dash">


                </div>
            </div>
        </div>
    </div>
</div>
<!-- END OF SIDE MENU -->



<!--  PAPER WRAP -->
<div class="wrap-fluid">
    <div class="container-fluid paper-wrap bevel tlbr">


        <!-- CONTENT -->
        <!--TITLE -->
        <div class="row">
            <div id="paper-top">
                <div class="col-lg-3">
                    <h2 class="tittle-content-header">
                        <i class="icon-window"></i>

                    </h2>

                </div>

                <div class="col-lg-7">
                    <div class="devider-vertical visible-lg"></div>
                    <div class="tittle-middle-header">

                        <div class="alert">
                            <button type="button" class="close" data-dismiss="alert"></button>

                        </div>


                    </div>

                </div>
                <div class="col-lg-2">
                    <div class="devider-vertical visible-lg"></div>



                </div>
            </div>
        </div>
        <!--/ TITLE -->

        <!-- BREADCRUMB -->
        <ul id="breadcrumb">
            <li>
                <span class="entypo-home"></span>
            </li>
            <li><i class="fa fa-lg fa-angle-right"></i>
            </li>
            <li><a href="#" title="Sample page 1">主页</a>
            </li>
            <li><i class="fa fa-lg fa-angle-right"></i>
            </li>
            <li><a href="#" title="Sample page 1">上传联系人信息</a>
            </li>


        </ul>

        <!-- END OF BREADCRUMB -->



        <div id="paper-middle">

            <div style="height:100%;width: 100%;background-color:white" >

                <br>
                <br>
                <br>

                <div class="form_center">
                    <form role="form" enctype="multipart/form-data" method="post" action="${pageContext.request.contextPath}/AddContactMessageServlet">
                        <div class="form-group">
                            <label for="exampleInputEmail1">姓名：</label>
                            <input type="text" placeholder="输入姓名" id="exampleInputEmail1" class="form-control" name="name">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">录取院校：</label>
                            <input type="text" placeholder="输入院校名" id="exampleInputPassword1" class="form-control" name="college">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword2">录取专业：</label>
                            <input type="text" placeholder="输入录取专业" id="exampleInputPassword2" class="form-control" name="major">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword3">所在城市：</label>
                            <input type="text" placeholder="输入所在城市" id="exampleInputPassword3" class="form-control" name="city">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword4">联系电话：</label>
                            <input type="number" placeholder="输入联系电话" id="exampleInputPassword4" class="form-control" name="phone">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputFile">选择一张小于<font>0.5M</font>的照片</label>
                            <input type="file" id="exampleInputFile" name="file">
                            <p class="help-block">提交一张联系人的头像</p>
                        </div>

                        <button class="btn btn-info" type="submit">确认提交</button>

                        <%
                           if (session.getAttribute("loggingMes")!=null)
                           {
                        %>

                         <%=session.getAttribute("loggingMes")%>

                        <%
                            }
                        %>
                    </form>
                </div>

            </div>


            <h1>&nbsp;&nbsp;&nbsp;网站运行状态</h1>
            <!--
                <div id="mapContainer"></div>
            -->

        </div>


        <br>



        <div class="content-wrap">


            <div class="row">


                <div class="col-lg-6">


                    <div class="chart-wrap">


                        <div class="chart-dash">


                            <div id="placeholder" style="width:100%;height:200px;">

                            </div>

                            <h3> 网站运行状态</h3>
                        </div>


                    </div>


                </div>




                <!-- FOOTER -->
                <div class="footer-space"></div>
                <div id="footer">
                    <div class="devider-footer-left"></div>
                    <div class="time">
                        <p id="spanDate">
                        <p id="clock">
                    </div>
                    <div class="copyright">
                        <span class="entypo-heart"></span> <a href="#" title="网页模板" target="_blank">护理专家工作室</a> All Rights Reserved</div>
                    <div class="devider-footer"></div>


                </div>
                <!-- / END OF FOOTER -->


            </div>
        </div>
    </div>

    <!-- END OF RIGHT SLIDER CONTENT-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/sys/assets/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/sys/assets/js/progress-bar/src/jquery.velocity.min.js"></script>
    <script src="${pageContext.request.contextPath}/sys/assets/js/progress-bar/number-pb.js"></script>
    <script src="${pageContext.request.contextPath}/sys/assets/js/progress-bar/progress-app.js"></script>



    <!-- MAIN EFFECT -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/sys/assets/js/preloader.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/sys/assets/js/bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/sys/assets/js/app.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/sys/assets/js/load.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/sys/assets/js/main.js"></script>




    <!-- GAGE -->


    <script type="text/javascript" src="${pageContext.request.contextPath}/sys/assets/js/chart/jquery.flot.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/sys/assets/js/chart/jquery.flot.resize.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/sys/assets/js/chart/realTime.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/sys/assets/js/speed/canvasgauge-coustom.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/sys/assets/js/countdown/jquery.countdown.js"></script>



    <script src="${pageContext.request.contextPath}/sys/assets/js/jhere-custom.js"></script>

    <script>
        var gauge4 = new Gauge("canvas4", {
            'mode': 'needle',
            'range': {
                'min': 0,
                'max': 90
            }
        });
        gauge4.draw(Math.floor(Math.random() * 90));
        var run = setInterval(function() {
            gauge4.draw(Math.floor(Math.random() * 90));
        }, 3500);
    </script>


    <script type="text/javascript">
        /* Javascript
         *
         * See http://jhere.net/docs.html for full documentation
         */
        $(window).on('load', function() {
            $('#mapContainer').jHERE({
                center: [52.500556, 13.398889],
                type: 'smart',
                zoom: 10
            }).jHERE('marker', [52.500556, 13.338889], {
                icon: '${pageContext.request.contextPath}/sys/assets/img/marker.png',
                anchor: {
                    x: 12,
                    y: 32
                },
                click: function() {
                    alert('Hallo from Berlin!');
                }
            })
                    .jHERE('route', [52.711, 13.011], [52.514, 13.453], {
                        color: '#FFA200',
                        marker: {
                            fill: '#86c440',
                            text: '#'
                        }
                    });
        });
    </script>
    <script type="text/javascript">
        var output, started, duration, desired;

        // Constants
        duration = 5000;
        desired = '50';

        // Initial setup
        output = $('#speed');
        started = new Date().getTime();

        // Animate!
        animationTimer = setInterval(function() {
            // If the value is what we want, stop animating
            // or if the duration has been exceeded, stop animating
            if (output.text().trim() === desired || new Date().getTime() - started > duration) {
                console.log('animating');
                // Generate a random string to use for the next animation step
                output.text('' + Math.floor(Math.random() * 60)

                );

            } else {
                console.log('animating');
                // Generate a random string to use for the next animation step
                output.text('' + Math.floor(Math.random() * 120)

                );
            }
        }, 5000);
    </script>
    <script type="text/javascript">
        $('#getting-started').countdown('2015/01/01', function(event) {
            $(this).html(event.strftime(

                    '<span>%M</span>' + '<span class="start-min">:</span>' + '<span class="start-min">%S</span>'));
        });
    </script>

    <div style="text-align:center;">

        <p><a href="#" target="_blank" title="模板之家">护理专家</a>  <a href="#" title="网页模板" target="_blank">copyRight</a></p>
    </div>

</body>

</html>





