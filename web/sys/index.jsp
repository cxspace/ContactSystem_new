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
    <title>主页</title>
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
                   <h1>高一三班通讯录后台管理<span>v1.2</span></h1>
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
                            <span>通讯地图
                            </span>
                        </h2>

                    </div>

                    <div class="col-lg-7">
                        <div class="devider-vertical visible-lg"></div>
                        <div class="tittle-middle-header">

                            <div class="alert">
                                <button type="button" class="close" data-dismiss="alert"></button>
                                <span class="tittle-alert entypo-info-circled"></span>
                                 &nbsp;拖拽移动地图
                                <strong></strong>&nbsp;&nbsp;滚动鼠标,放大缩小.
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
                <li><a href="#" title="Sample page 1">通讯地图</a>
                </li>


            </ul>

            <!-- END OF BREADCRUMB -->






            <div id="paper-middle">

                <div id="allmap" style="height:500px;width: 100%"></div>


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
    <!--  END OF PAPER WRAP -->

    <!-- RIGHT SLIDER CONTENT -->

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
</div>
</body>

</html>

<script type="text/javascript">

    // 百度地图API功能
    map = new BMap.Map("allmap");
    map.enableScrollWheelZoom(true);
    map.centerAndZoom(new BMap.Point(115.876555,28.628748), 5);
    var data_info = [[115.818619,28.671641,"郝美玲,姜泽钜,马驰骋,饶隽,胡正宇,邦欣悦,章唯-南昌大学"],
        [116.562372,39.921471,"熊嘉-中国传媒大学"],
        [121.3558880000,30.7269320000,"邹涵-上海师范大学"],
        [115.7600450000,28.6196610000,"贾艳-江西科技师范大学理工学院"],
        [102.7243440000,25.0888110000,"罗敏-云南财经大学"],
        [114.9355580000,25.8608130000,"史燕妮-江西理工大学"],
        [117.2052540000,34.2261880000,"刘莹-中国矿业大学"],
        [116.3965610000,27.9679170000,"王文菁-南昌大学"],
        [121.4565230000,37.4939920000,"熊瑛-山东工商学院"],
        [115.7627120000,28.6697250000,"涂志珍,刘森良-江西警察学院"],
        [115.8124070000,28.7282230000,"程艳-南昌师范学院"],
        [115.8393150000,28.7682040000,"胡艳,尚宣辰,万紫秋-江西农业大学"],
        [113.5442720000,22.3555930000,"张铭轩-北京师范大学珠海分校"],
        [120.4867650000,36.1209700000,"屈宏宇-青岛大学"],
        [113.5578760000,34.8364720000,"王博宇忻-河南工业大学"],
        [114.8955090000,25.8074110000,"胡鹏飞-赣南师范学院"],
        [114.4175490000,30.5158430000,"刘旭东-华中科技大学"],
        [114.3581370000,30.5253310000,"蔡子明-武汉理工大学"],
        [121.4314480000,31.1491710000,"张超,胡超-华东理工大学"],
        [115.8186190000,28.6716410000,"熊昊宇,黄泽康,万子丰,周茜雅-华东交通大学"],
        [116.6903400000,39.5435200000,"周铭楷-中国人民武装警察部队学院"],
        [115.8610350000,28.7488320000,"万乾良-江西财经大学"],
        [117.1911550000,29.2801340000,"李小兵-景德镇学院"],
        [119.5284560000,39.9122970000,"陈聪-燕山大学"],
        [116.0178910000,29.6845700000,"刘兵武-九江学院"],
        [115.8350440000,28.6570310000,"丁鹏鲲-南昌航空大学"],
        [115.9511620000,28.6805410000,"陈梓柯-南昌大学科学技术学院"],
        [115.8447810000,28.7427730000,"晏佳欣-江西科技师范大学"],
        [112.9320030000,28.2106470000,"夏书婷-湖南财政经济学院"],
        [121.4005370000,31.3222370000,"陈志坚-上海大学"],
        [113.6584250000,34.7944510000,"黄镒铂-铁道警察学院"],
        [117.2620990000,31.8507720000,"吴雅波-安徽大学"],
        [115.9298470000,28.6818100000,"万袁毓玮-江西师范大学"],
    ];

    var opts = {
        width : 250,     // 信息窗口宽度
        height: 80,     // 信息窗口高度
        title : "信息窗口" , // 信息窗口标题
        enableMessage:true//设置允许信息窗发送短息
    };
    for(var i=0;i<data_info.length;i++){
        var marker = new BMap.Marker(new BMap.Point(data_info[i][0],data_info[i][1]));  // 创建标注
        marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
        var content = data_info[i][2];
        map.addOverlay(marker);               // 将标注添加到地图中
        addClickHandler(content,marker);
    }
    function addClickHandler(content,marker){
        marker.addEventListener("click",function(e){
            openInfo(content,e)}
        );
    }
    function openInfo(content,e){
        var p = e.target;
        var point = new BMap.Point(p.getPosition().lng, p.getPosition().lat);
        var infoWindow = new BMap.InfoWindow(content,opts);  // 创建信息窗口对象
        map.openInfoWindow(infoWindow,point); //开启信息窗口
    }
</script>




