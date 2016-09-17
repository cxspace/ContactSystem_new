<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>登录管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/sys/assets/js/jquery.min.js"></script>

   <!--  <link rel="stylesheet" href="assets/css/style.css"> -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/sys/assets/css/loader-style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/sys/assets/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/sys/assets/css/signin.css">






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
    
    <div class="container">



        <div class="" id="login-wrapper">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div id="logo-login">
                        <h1>高三(1)班通讯录管理系统
                            <span>v0.1</span>
                        </h1>
                    </div>
                </div>

            </div>

            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="account-box"> 
                        <form role="form" action="${pageContext.request.contextPath}/AdminLoginServlet" method="post">
                            <div class="form-group">
                                <!--a href="#" class="pull-right label-forgot">Forgot email?</a-->
                                <label for="inputUsername">用户名</label>
                                <input type="text" id="inputUsername" name="phone" class="form-control">
                            </div>
                            <div class="form-group">
                                <!--a href="#" class="pull-right label-forgot">Forgot password?</a-->
                                <label for="inputPassword">密码</label>
                                <input type="password" id="inputPassword" name="password" class="form-control">
                            </div>


                            <button class="btn btn btn-primary pull-right" type="submit">
                                登 录
                            </button>

                            <%
                               if (session.getAttribute("message")!=null)
                               {
                            %>

                              <h5 style="text-decoration-color: #8a1f11"> <%=session.getAttribute("message")%> </h5>

                            <%
                                }
                            %>


                        </form>
                        <a class="forgotLnk" href="index.jsp"></a>
                        <!--div class="or-box">
                          
                            <center><span class="text-center login-with">Login or <b>Sign Up</b></span></center>
                            <div class="row">
                                <div class="col-md-6 row-block">
                                    <a href="index.jsp" class="btn btn-facebook btn-block">
                                        <span class="entypo-facebook space-icon"></span>Facebook</a>
                                </div>
                                <div class="col-md-6 row-block">
                                    <a href="index.jsp" class="btn btn-twitter btn-block">
                                        <span class="entypo-twitter space-icon"></span>Twitter</a>
                                        
                                </div>

                            </div>
                            <div style="margin-top:25px" class="row">
                                <div class="col-md-6 row-block">
                                    <a href="index.jsp" class="btn btn-google btn-block"><span class="entypo-gplus space-icon"></span>Google +</a>
                                </div>
                                <div class="col-md-6 row-block">
                                    <a href="index.jsp" class="btn btn-instagram btn-block"><span class="entypo-instagrem space-icon"></span>Instagram</a>
                                </div>

                            </div>
                        </div>
                        <hr>
                        <div class="row-block">
                            <div class="row">
                                <div class="col-md-12 row-block">
                                    <a href="index.jsp" class="btn btn-primary btn-block">Create New Account</a>
                                </div>
                            </div>
                        </div-->
                        <div class="row-block">
	                        <div class="row">
		                    </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

 		<p>&nbsp;</p>
        <div style="text-align:center;margin:0 auto;">
            <h6 style="color:#fff;">Copyright(C)2016 护理专家工作室<br />
				</h6>
        </div>

    </div>

    <!--  END OF PAPER WRAP -->




    <!-- MAIN EFFECT -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/sys/assets/js/preloader.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/sys/assets/js/bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/sys/assets/js/app.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/sys/assets/js/load.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/sys/assets/js/main.js"></script>

     <script type="text/javascript" src="${pageContext.request.contextPath}/sys/assets/js/map/gmap3.js"></script>





</body>

</html>
