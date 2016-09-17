<%--
  Created by IntelliJ IDEA.
  User: cxspace
  Date: 16-7-27
  Time: 下午4:28
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>添加系统管理员</title>
  </head>
  <body>
     <form method="post" action="${pageContext.request.contextPath}/AddAdminServlet">

       <input type="text" name="username">
       <br/>
       <input type="password" name="password">
       <br/>
       <input type="submit" value="确认提交">
     </form>
  </body>
</html>
