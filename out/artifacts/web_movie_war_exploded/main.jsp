<%--
  Created by IntelliJ IDEA.
  User: Yan
  Date: 2018/10/10
  Time: 11:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>电影后台管理系统</title>

    <%--css--%>
    <link rel="stylesheet" href="css/core-style.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <!-- ##### Header Area Start ##### -->
    <header class="header_area">
        <div class="classy-nav-container breakpoint-off d-flex align-items-center justify-content-between" style="height: 40px">
            <!-- Classy Menu -->
            <nav class="classy-navbar" id="essenceNav" style="margin-left: 61% ">
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

                </div>
            </nav>

        </div>
    </header>


    <%--欢迎背景--%>
    <section class="welcome_area bg-img background-overlay" style="background-image: url(https://cdn.jsdelivr.net/gh/BNDong/Cnblogs-Theme-SimpleMemory@master/img/webp/nothome_top_bg.webp);width:100%;height: 300px;margin-top: -50px;" >
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="hero-content">
                        <h2 style="color: cyan;font-family: 幼圆">云上影院</h2>
<%--                        <a href="#" class="btn essence-btn">Hello</a>--%>
                    </div>
                </div>
            </div>
        </div>
    </section>



<section>
<%--电影展示--%>
  <div class="movise" style="margin-left: 80px">
      <div class="container" style="margin-left: 2%">
          <div class="row">
              <div class="col-12">
                  <div class="section-heading text-center">
                      <h2>热门电影</h2>
                  </div>
              </div>
          </div>
      </div>
<%--      图片一--%>
    <div class="single-product-wrapper" style="	float:left;margin-left: 20px;margin-right: 20px">
        <div class="product-img">
            <img src="img/liulangdiqiuo.jpg" alt="" style="width: 256px;height: 357px">
        </div>
        <%--片名--%>
        <div class="product-description">
            <a href="#">
                <h6>流浪地球</h6>
            </a>
            <%--观看--%>
            <div class="hover-content">
                <div class="add-to-cart-btn"style="width: 50px;">
                    <a href="liulangdiqiu.mp4" class="btn essence-btn">观看</a>
                </div>
            </div>
        </div>
    </div>

    <%--图片二    --%>
    <div class="single-product-wrapper" style="	float:left;margin-left: 20px;margin-right: 20px">
        <div class="product-img">
            <img src="img/jizhang.jpg" alt="" style="width: 256px;height: 357px">

        </div>
        <div class="product-description" >
            <a href="#">
                <h6>中国机长</h6>
            </a>
            <div class="hover-content" >
                <div class="add-to-cart-btn" style="width: 50px;">
                    <a href="#" class="btn essence-btn">观看</a>
                </div>
            </div>
        </div>
    </div>

      <%--图片三--%>
      <div class="single-product-wrapper"  style="float:left;margin-left: 20px;margin-right: 20px">
          <div class="product-img">
              <img src="img/zidan.jpg" alt="" style="width: 256px;height: 357px">
          </div>
          <div class="product-description">
              <a href="https://www.bilibili.com/bangumi/play/ss12548/?from=search&seid=15158321483250302612&spm_id_from=333.337.0.0">
                  <h6>让子弹飞</h6>
              </a>

              <div class="hover-content">
                  <div class="add-to-cart-btn" style="width: 50px">
                      <a href="https://www.bilibili.com/bangumi/play/ss12548/?from=search&seid=15158321483250302612&spm_id_from=333.337.0.0" class="btn essence-btn" >观看</a>
                  </div>
              </div>
          </div>
      </div>

      <%--图片四--%>
      <div class="single-product-wrapper"  style="float:left;margin-left: 20px;margin-right: 20px">
          <div class="product-img">
              <img src="img/dashengl.jpg" alt="" style="width: 256px;height: 357px">
          </div>
          <div class="product-description">
              <a href="#">
                  <h6>大圣归来</h6>
              </a>

              <div class="hover-content">
                  <div class="add-to-cart-btn" style="width: 50px">
                      <a href="#" class="btn essence-btn">观看</a>
                  </div>
              </div>
          </div>
      </div>

      <%--      图片5--%>
      <div class="single-product-wrapper" style="	float:left;margin-left: 20px;margin-right: 20px">
          <div class="product-img">
              <img src="img/haishanggangqinshil.jpg" alt="" style="width: 256px;height: 357px">

          </div>
          <%--片名--%>
          <div class="product-description">
              <a href="#">
                  <h6>海上钢琴家</h6>
              </a>
              <%--观看--%>
              <div class="hover-content">
                  <div class="add-to-cart-btn"style="width: 50px;">
                      <a href="video/我不是药神.mp4" class="btn essence-btn">观看</a>
                  </div>
              </div>
          </div>
      </div>

      <%--图片6    --%>
      <div class="single-product-wrapper" style="	float:left;margin-left: 20px;margin-right: 20px">
          <div class="product-img">
              <img src="img/liehuoyingxiongl.jpg" alt="" style="width: 256px;height: 357px">

          </div>
          <div class="product-description">
              <a href="#">
                  <h6>烈火英雄</h6>
              </a>
              <div class="hover-content">
                  <div class="add-to-cart-btn" style="width: 50px">
                      <a href="#" class="btn essence-btn">观看</a>
                  </div>
              </div>
          </div>
      </div>

      <%--图片7--%>
      <div class="single-product-wrapper"  style="float:left;margin-left: 20px;margin-right: 20px">
          <div class="product-img">
              <img src="img/cheshenl.jpg" alt="" style="width: 256px;height: 357px">


          </div>
          <div class="product-description">
              <a href="#">
                  <h6>极道车神</h6>
              </a>

              <div class="hover-content">
                  <div class="add-to-cart-btn" style="width: 50px">
                      <a href="#" class="btn essence-btn" >观看</a>
                  </div>
              </div>
          </div>
      </div>

      <%--图片8--%>
      <div class="single-product-wrapper"  style="float:left;margin-left: 20px;margin-right: 20px">
          <div class="product-img">
              <img src="img/jinganglangl.jpg" alt="" style="width: 256px;height: 357px">
          </div>
          <div class="product-description">
              <a href="#">
                  <h6>金刚狼</h6>
              </a>

              <div class="hover-content">
                  <div class="add-to-cart-btn" style="width: 50px">
                      <a href="#" class="btn essence-btn">观看</a>
                  </div>
              </div>
          </div>
      </div>


  </div>
</section>



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
