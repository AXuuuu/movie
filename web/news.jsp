<%@ page import="java.util.List" %>
<%@ page import="movie.entity.News" %>
<%@ page import="movie.newsdao.LookDao" %>
<%@ page import="movie.newsdao.LookDaoImpl" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Yan
  Date: 2018/10/8
  Time: 9:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>电影后台管理系统</title>

    <%--css--%>
    <link rel="stylesheet" href="css/core-style.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/button.css">

    <style type="text/css">
        .card {
            cursor: pointer;
            margin-top: 10px;
            margin-left: 300px;
            width: 600px;
            height: auto;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            text-align: center;
            transition: all 0.25s;
        }

        .card:hover {
            margin-top: 10px;
            box-shadow: 5px 8px 5px #778899;
        }

        .header {
            border-left: 5px solid #4d4d4d;
            /*background-color: #2e6da4;*/
            margin: 0 auto;
            padding: 5px;
            margin-left: 0px;
            height: 70px;
        }

        .body {
            padding: 5px;
        }

        .card img {
            width: 100%;
        }
    </style>


    <script>
        function tzlinks() {
            var url = document.getElementById('frelinks').href;
            window.location.href = url;
        }
    </script>



</head>
<%--<body style="background:url(${request.pageContext.contextPath}img/bingwallpaper.jpg);)">--%>
<body  style="width: 100%;margin: 0 auto;background: url(img/newbacktwo.jpg);background-repeat: repeat-y;background-size: 100%;margin-top: -60PX">
    <!-- ##### Header Area Start ##### -->
    <header class="header_area">
        <div class="classy-nav-container breakpoint-off d-flex align-items-center justify-content-between" style="height: 40px">


            <!-- Classy Menu -->
            <nav class="classy-navbar" id="essenceNav" style="margin-left: 61%">
                <!-- Navbar Toggler -->
                <div class="classy-navbar-toggler">
                    <span class="navbarToggler"><span></span><span></span><span></span></span>
                </div>
                <!-- Menu -->
                <div class="classy-menu">
                    <!-- close btn -->
                    <div class="classycloseIcon">
                        <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                    </div>
                    <!-- Nav Start -->
                    <div class="classynav">
                        <ul>
                            <li><a href="main.jsp">主页</a></li>
                            <li><a href="news.jsp">新闻</a>
                                <ul class="dropdown">
                                    <li><a href="addNews.jsp">添加新闻</a></li>
                                    <li><a href="updateNews.jsp">修改新闻</a></li>
                                    <li><a href="deleteNews.jsp">删除新闻</a></li>
                                </ul>
                            </li>
                            <li><a href="newstype.jsp">新闻类型</a>
                                <ul class="dropdown">
                                    <li><a href="addnewstype.jsp">添加类型</a></li>
                                    <li><a href="updatenewstype.jsp">修改类型</a></li>
                                    <li><a href="deletenewstype.jsp">删除类型</a></li>
                                </ul>
                            </li>
                            <li><a href="movie.jsp">电影</a>
                                <ul class="dropdown">
                                    <li><a href="addMovie.jsp">添加电影</a></li>
                                    <li><a href="updateMovie.jsp">修改电影</a></li>
                                    <li><a href="deleteMovie.jsp">删除电影</a></li>
                                </ul>
                            </li>

                            <li><a href="movietype.jsp">电影类型</a>
                                <ul class="dropdown">
                                    <li><a href="addmovietype.jsp">添加类型</a></li>
                                    <li><a href="updatemovietype.jsp">修改类型</a></li>
                                    <li><a href="deletemovietype.jsp">删除类型</a></li>
                                </ul>
                            </li>
                            <li><a href="login.jsp">退出</a></li>
                        </ul>
                    </div>
                    <!-- Nav End -->
                </div>
            </nav>


        </div>
    </header>


    <div>
        <br/>
        <br/>
        <br/>
    </div>



    <section class="row" style="width: 1210px;margin: 0 auto;">
        <div class="col-md-12 text-center">
            <h3>新闻</h3>
        </div>
        <div>
            <br/>
            <br/>
            <br/>
        </div>
        <%
            LookDao lookDao = new LookDaoImpl();
            List<News> list=lookDao.look();
            for (News news : list) {
        %>
        <div class="card" onclick="tzlinks()">
            <div class="header">
                <p id="title" name="title" style="font-size: 25px;color: #696969;display:block;height: 25px;margin-left: 20px"><%=news.getTitle()%>
                </p>
            </div>
            <div class="body">
                <hr/>
                <p><%=news.getContent()%>
                </p>
            </div>
        </div>
<%--        <div>--%>
<%--            <br/>--%>
<%--            <br/>--%>
<%--            <br/>--%>
<%--            <br/>--%>
<%--        </div>--%>

        <%
            }
        %>
<%--        <div>--%>
<%--            <br/>--%>
<%--            <br/>--%>
<%--            <br/>--%>
<%--            <br/>--%>
<%--        </div>--%>
    </section>
<%--底部黑框--%>
    <footer class="footer_area clearfix" style="width: 100%;height: 80px;margin-top: 90%;display: flex" >
        <div class="container">
        </div>
    </footer>
    <%--js--%>
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/classy-nav.min.js"></script>
    <script src="js/active.js"></script>
</body>
</html>
