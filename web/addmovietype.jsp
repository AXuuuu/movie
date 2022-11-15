<%--
  Created by IntelliJ IDEA.
  User: aaa
  Date: 2021/11/22
  Time: 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加电影类型</title>

    <%--css--%>
    <link rel="stylesheet" href="css/core-style.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="usercss/bootstrap.min.css">
    <link rel="stylesheet" href="usercss/animate.css">
    <link rel="stylesheet" href="usercss/style.css">

    <script charset="utf-8" src="plug/kindeditor/kindeditor-all-min.js"></script>
    　　
    <script charset="utf-8" src="plug/kindeditor/lang/zh-CN.js"></script>


    <script type="text/javascript">
        var editor;　　//全局变量
        KindEditor.ready(function (K) {
            editor = K.create('#kindedito', {
                allowImageUpload: false,
                items: [
                    'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic',
                    'underline', 'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright',
                    'insertorderedlist', 'insertunorderedlist', '|', 'emoticons', 'image', 'link']
            });
        });
    </script>

    <script type="text/javascript">
        function getText() {
            var text = editor.html();　　　　　　　　　　　　　//获取textarea文本域中的文本
            var newNode = document.createElement("p");　　//创建一个新结点
            newNode.innerHTML = text;　　　　　　　　　　　　//用text设置p结点中的文本内容
            var element = document.getElementById("show");//获取show结点，以show结点为父节点
            element.append(newNode);　　　　　　　　　　　　　//将新建的结点添加进去，相当于盒子里放盒子一样　　　　　　　　　　　　　
        }
    </script>

</head>
<body style="background:url(img/newbacktwo.jpg)">
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

<div style="background: url(img/main-bg.png)">
    <br/>
    <br/>
    <br/>
</div>



<%--添加新闻--%>
<section class="row" style="width: 100%;margin: 0 auto;background: url(img/main-bg.png)">
    <div class="col-md-12 text-center">
        <br/>
        <br/>
        <h3>添加电影类型</h3>
    </div>


    <div>
        <br/>
        <br/>
        <br/>
    </div>

    <div class="col-md-8 col-md-offset-2">
        <form action="AddMovieTypeAction.action" class="fh5co-form animate-box" data-animate-effect="fadeInRight" method="post" style="border-radius: 20px;margin-top: 20px;">
            <div class="form-group">
                <label for="id" class="sr-only">类型编号</label>
                <input type="text" class="form-control" id="id" placeholder="类型编号" name="id">
            </div>
            <div class="form-group">
                <label for="type" class="sr-only">电影类型</label>
                <input type="text" class="form-control" id="type" placeholder="电影类型" name="type">
            </div>
            <div class="form-group" style="margin-left: 45%">
                <input type="submit" value="提交" class="btn btn-primary" onclick="getText()">
            </div>
        </form>
    </div>
</section>


<div style="background: url(img/main-bg.png)">
    <br/>
    <br/>
    <br/>
</div>

<%--js--%>
<script src="js/jquery/jquery-2.2.4.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/plugins.js"></script>
<script src="js/classy-nav.min.js"></script>
<script src="js/active.js"></script>
</body>
</html>
