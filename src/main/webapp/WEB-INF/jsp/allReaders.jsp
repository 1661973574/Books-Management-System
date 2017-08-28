<%@ page import="com.book.domain.ReaderInfo" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: 君行天下
  Date: 2017/7/26
  Time: 19:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>全部读者</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<c:if test="${!empty info}">
    <script>alert("${info}");window.location.href="allreaders.html"</script>
</c:if>
<nav  style="position:fixed;z-index: 999;width: 100%" class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="admin_main.html">图书管理系统</a>
        </div>
        <div class="collapse navbar-collapse" >
            <ul class="nav navbar-nav navbar-left">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        图书管理
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="allbooks.html">全部图书</a></li>
                        <li class="divider"></li>
                        <li><a href="book_add.html">增加图书</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        读者管理
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="allreaders.html">全部读者</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        借还管理
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#">jmeter</a></li>
                        <li><a href="#">EJB</a></li>
                        <li><a href="#">Jasper Report</a></li>
                    </ul>
                </li>
                <li >
                    <a href="admin_repasswd.html" >
                        密码修改
                    </a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="login.html"><span class="glyphicon glyphicon-user"></span>&nbsp;${admin.adminId}，已登录</a></li>
                <li><a href="login.html"><span class="glyphicon glyphicon-log-in"></span>&nbsp;退出</a></li>
            </ul>
        </div>
    </div>
</nav>
<table class="table table-hover" style="position:relative;top: 80px">
    <thead>
    <tr>
        <th>读者号</th>
        <th>姓名</th>
        <th>性别</th>
        <th>生日</th>
        <th>地址</th>
        <th>电话</th>
        <th>删除</th>
        <th>修改</th>
    </tr>
    </thead>
    <tbody>
    <%
        ArrayList<ReaderInfo> readers=(ArrayList<ReaderInfo>)session.getAttribute("allReaders");
        for(int i=0;i<readers.size();i++){
            ReaderInfo reader=readers.get(i);
    %>
    <tr>
        <td><%= reader.getReaderId() %></td>
        <td><%= reader.getName() %></td>
        <td><%= reader.getSex() %></td>
        <td><%= reader.getBirth() %></td>
        <td><%= reader.getAddress() %></td>
        <td><%= reader.getTelcode() %></td>
        <td><a href="reader_delete.html?readerId=<%= reader.getReaderId()  %>">删除</a></td>
        <td><a href="reader_update.html?readerId=<%= reader.getReaderId()  %>">修改</a></td>
    </tr>
    <%
        }
    %>
    </tbody>
</table>

</body>
</html>
