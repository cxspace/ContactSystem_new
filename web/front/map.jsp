<%--
  Created by IntelliJ IDEA.
  User: cx
  Date: 2016/09/17
  Time: 0:20
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
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=QXwuA2Zi8h3huVQvqVrW2MhU"></script>
</head>
<body>

<div class="bar bar-header bar-positive">
    <a class="button button-icon icon ion-chevron-left" href="${pageContext.request.contextPath}/front/index.jsp"></a>
    <div class="h1 title"><b>通讯地图</b></div>
</div>
<div id="allmap" style="height:100%;width: 100%"></div>

</body>
</html>

<script type="text/javascript">

    /*
     // 百度地图API功能
     var map = new BMap.Map("allmap");
     map.enableScrollWheelZoom(true);


     //郝美玲,姜泽钜,马驰骋,饶隽,胡正宇,邦欣悦,章唯 对应南昌大学

     var point = new BMap.Point(115.818619,28.671641);
     var marker = new BMap.Marker(point);  // 创建标注
     marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
     map.addOverlay(marker);              // 将标注添加到地图中

     //设置中心点
     map.centerAndZoom(point, 5);

     var opts = {
     width : 200,     // 信息窗口宽度
     height: 100,     // 信息窗口高度
     title : "南昌大学" , // 信息窗口标题
     enableMessage:true,//设置允许信息窗发送短息
     message:"#"
     }

     var infoWindow = new BMap.InfoWindow("郝美玲,姜泽钜,马驰骋,饶隽,胡正宇,邦欣悦,章唯", opts);  // 创建信息窗口对象
     marker.addEventListener("click", function(){
     map.openInfoWindow(infoWindow,point); //开启信息窗口
     });

     */

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
        [114.8955090000,25.8074110000,"胡鹏飞-赣南师范大学"],
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

    //熊嘉

    /*
     var point1 = new BMap.Point(115.818619,28.671641);
     var marker1 = new BMap.Marker(point1);  // 创建标注
     map.addOverlay(marker1);// 将标注添加到地图中
     */

    /*
     var opt1 = {
     width : 200,     // 信息窗口宽度
     height: 100,     // 信息窗口高度
     title : "中国传媒大学" , // 信息窗口标题
     enableMessage:true,//设置允许信息窗发送短息
     message:"#"
     }

     var infoWindow1 = new BMap.InfoWindow("熊嘉", opt1);  // 创建信息窗口对象
     marker.addEventListener("click", function(){
     map.openInfoWindow(infoWindow1,point1); //开启信息窗口
     });

     */


</script>
