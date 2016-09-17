<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>错误页</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <style type="text/css">
    body {
        overflow:hidden!important;
        padding-top: 120px;
    }
    </style>
    <!-- Le styles -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/front/assets/js/jquery.min.js"></script>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/front/assets/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/front/assets/css/loader-style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/front/assets/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/front/assets/css/signin.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/front/assets/css/extra-pages.css">



    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    <!-- Fav and touch icons -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/front/assets/ico/minus.png">
</head>

<body><div id="awwwards" class="right black"><a href="#" target="_blank"></a></div>
    <!-- Preloader -->
    <div id="preloader">
        <div id="status">&nbsp;</div>
    </div>


    <div class="logo-error">
        <h1>

        </h1>
    </div>

    <!-- Main content -->
    <section class="page-error">

        <div class="error-page">
            <h2 class="headline text-info">系统出现异常!</h2>
            <div class="error-content">
                <h3><i class="fa fa-warning text-yellow"></i> 不好意思,系统出现异常!</h3>
                <p>
                    可能是服务器不稳定导致. <a class="error-link" href='${pageContext.request.contextPath}/sys/login.jsp'>返回登录页</a>
                    请与运维管理员取得联系QQ:442961832.
                </p>
            </div>
            <!-- /.error-content -->
        </div>
        <!-- /.error-page -->

    </section>








    <!--  END OF PAPER WRAP -->




    <!-- MAIN EFFECT -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/front/assets/js/preloader.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/front/assets/js/bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/front/assets/js/app.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/front/assets/js/load.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/front/assets/js/main.js"></script>


</body>

</html>
