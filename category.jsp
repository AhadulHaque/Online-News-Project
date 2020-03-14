<%@ page import="dao.NewsDao" %>
<%@ page import="entity.News" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en"><!-- Mirrored from news365htmllatest.bdtask.com/Demo/DemoNews365/category-style-two.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 04 Mar 2020 19:05:52 GMT --><head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" href="images/fev-icon.png">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>newspaper</title>
    <!-- google fonts -->
    <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i|Ubuntu:300,300i,400,400i,500,500i,700,700i" rel="stylesheet">
    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Scrollbar css -->
    <link rel="stylesheet" type="text/css" href="css/jquery.mCustomScrollbar.css">
    <!-- Owl Carousel css -->
    <link rel="stylesheet" type="text/css" href="owl-carousel/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="owl-carousel/owl.theme.css">
    <link rel="stylesheet" type="text/css" href="owl-carousel/owl.transitions.css">
    <!-- youtube css -->
    <link rel="stylesheet" type="text/css" href="css/RYPP.css">
    <!-- jquery-ui css -->
    <link rel="stylesheet" href="css/jquery-ui.css">
    <!-- animate -->
    <link rel="stylesheet" href="css/animate.min.css">
    <!-- fonts css -->
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/Pe-icon-7-stroke.css">
    <link rel="stylesheet" type="text/css" href="css/flaticon.css">
    <!-- custom css -->
    <link rel="stylesheet" href="css/style.css">
</head>

<body>





    <div class="se-pre-con" style="display: none;"></div>
    <header>
        <!-- Mobile Menu Start -->
        <div class="mobile-menu-area navbar-fixed-top hidden-sm hidden-md hidden-lg">
            <nav class="mobile-menu mCustomScrollbar _mCS_1 mCS-autoHide mCS_no_scrollbar" id="mobile-menu" style="overflow: visible;"><div id="mCSB_1" class="mCustomScrollBox mCS-minimal mCSB_vertical mCSB_outside" style="max-height: none;" tabindex="0"><div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
                <div class="sidebar-nav">
                    <ul class="nav side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                        <button class="btn mobile-menu-btn" type="button">
                                            <i class="fa fa-search"></i>
                                        </button>
                                    </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        <li><a href="index.html">Home</a></li>
                        <li>
                            <a href="#">All pages<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level collapse">
                                <li>
                                    <a href="#">Home <span class="fa arrow"></span></a>
                                    <ul class="nav nav-third-level collapse">
                                        <li><a href="home-style-one.html">Home style one</a> </li>
                                        <li><a href="home-style-two.html">Home style two</a></li>
                                        <li><a href="home-style-three.html">Home style three</a></li>
                                        <li><a href="home-style-four.html">Home style four</a></li>
                                        <li><a href="home-style-five.html">Home style five</a></li>
                                    </ul>
                                    <!-- /.nav-third-level -->
                                </li>
                                <li>
                                    <a href="#">Categories <span class="fa arrow"></span></a>
                                    <ul class="nav nav-third-level collapse">
                                        <li><a href="category-style-one.html">Category style one</a> </li>
                                        <li><a href="category-style-two.html">Category style two</a></li>
                                        <li><a href="category-style-three.html">Category style three</a></li>
                                    </ul>
                                    <!-- /.nav-third-level -->
                                </li>
                                <li>
                                    <a href="#">Archive <span class="fa arrow"></span></a>
                                    <ul class="nav nav-third-level collapse">
                                        <li><a href="archive-one.html">Archive style one</a> </li>
                                        <li><a href="archive-two.html">Archive style two</a></li>
                                    </ul>
                                    <!-- /.nav-third-level -->
                                </li>
                                <li>
                                    <a href="#">News <span class="fa arrow"></span></a>
                                    <ul class="nav nav-third-level collapse">
                                        <li><a href="details-style-one.html">News post one</a> </li>
                                        <li><a href="details-style-two.html">News post two</a></li>
                                        <li><a href="details-style-three.html">News post three</a></li>
                                    </ul>
                                    <!-- /.nav-third-level -->
                                </li>
                                <li>
                                    <a href="#">Contact <span class="fa arrow"></span></a>
                                    <ul class="nav nav-third-level collapse">
                                        <li><a href="contact-style-one.html">Contact style one</a> </li>
                                        <li><a href="contact-style-two.html">Contact style two</a></li>
                                    </ul>
                                    <!-- /.nav-third-level -->
                                </li>
                                <li><a href="login%26registration.html">Login &amp; Registration</a></li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li><a href="#">International</a></li>
                        <li><a href="#">Fashion</a></li>
                        <li><a href="#">Travel</a></li>
                        <li><a href="#">Food</a></li>
                        <li><a href="#">Technology</a></li>
                        <li><a href="#">Lifestyle</a></li>
                        <li>
                            <a href="#">Contact<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level collapse">
                                <li><a href="contact-style-one.html">Contact style one</a> </li>
                                <li><a href="contact-style-two.html">Contact style two</a></li>
                            </ul>
                        </li>
                        <!-- social icon -->
                        <li>
                            <div class="social">
                                <ul>
                                    <li><a href="#" class="facebook"><i class="fa  fa-facebook"></i> </a></li>
                                    <li><a href="#" class="twitter"><i class="fa  fa-twitter"></i></a></li>
                                    <li><a href="#" class="google"><i class="fa  fa-google-plus"></i></a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </div></div><div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-minimal mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 50px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 50px;"></div></div><div class="mCSB_draggerRail"></div></div></div></nav>
            <div class="container">
                <div class="top_header_icon">
                    <span class="top_header_icon_wrap">
                            <a target="_blank" href="#" title="Twitter"><i class="fa fa-twitter"></i></a>
                        </span>
                    <span class="top_header_icon_wrap">
                            <a target="_blank" href="#" title="Facebook"><i class="fa fa-facebook"></i></a>
                        </span>
                    <span class="top_header_icon_wrap">
                            <a target="_blank" href="#" title="Google"><i class="fa fa-google-plus"></i></a>
                        </span>
                    <span class="top_header_icon_wrap">
                            <a target="_blank" href="#" title="Vimeo"><i class="fa fa-vimeo"></i></a>
                        </span>
                    <span class="top_header_icon_wrap">
                            <a target="_blank" href="#" title="Pintereset"><i class="fa fa-pinterest-p"></i></a>
                        </span>
                </div>
                <div id="showLeft" class="nav-icon">
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </div>
        </div>
        <!-- Mobile Menu End -->
        <!-- top header -->

        <div class="top_banner_wrap">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-md-4 col-sm-4">
                        <div class="header-logo">
                            <!-- logo -->
                            <a href="home-style-one.html">
                                <img class="td-retina-data img-responsive" src="images/logo.png" alt="">
                            </a>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- navber -->
        <div class="container hidden-xs">
            <nav class="navbar">
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="/" class="category01">HOME</a></li>
                        <li><a href="category.jsp?type=INTERNATIONAL" class="category03" >INTERNATIONAL </a></li>
                        <li><a href="category.jsp?type=POLITICS" class="category03" >POLITICS </a></li>
                        <li><a href="category.jsp?type=FASHION" class="category04">FASHION</a></li>
                        <li><a href="category.jsp?type=TRAVEL" class="category05">TRAVEL</a></li>
                        <li><a href="category.jsp?type=FOOD" class="category06">FOOD</a></li>
                        <li><a href="category.jsp?type=TECHNOLOGY" class="category07">TECHNOLOGY</a></li>
                        <li><a href="about.jsp" class="category08">ABOUT US</a></li>
                        <li><a href="contact.jsp" class="category09" >CONTACT</a></li>
                    </ul>
                </div>
                <!-- navbar-collapse -->
            </nav>
        </div>
    </header>


    <%
        String type = request.getParameter("type").toString();
        //type = type.substring(1, type.length()-1);
        System.out.println("#Type : "+type);

        NewsDao newsDao = new NewsDao();
        List<News> newsList = (List<News>) newsDao.findNewsByType(type);
        System.out.println("# "+newsList.toString());


    %>

    <section class="block-inner">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <h1><%=type%> NEWS</h1>
                    <div class="breadcrumbs">
                        <ul>
                            <li><i class="pe-7s-home"></i> <a href="home-style-one.html" title="">Home</a></li>
                            <li><a href="#" title=""><%=type%></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="container">
        <div class="row">
            <div class="col-sm-8">
                <!--Post list-->

                <%

                    for(News n : newsList){
                        %>

                        <div class="post-style2 wow fadeIn" data-wow-duration="1s">
                            <a href="javascript:void(0)"><img style="width: 250px; height: 205px" src="images/upload/<%=n.getImage()%>" alt=""></a>
                            <div class="post-style2-detail">
                                <h3><a href="news.jsp?id=<%=n.getId()%>" title=""><%=n.getTitle()%></a></h3>
                                <div class="date">
                                    <ul>
                                        <%--<li><img src="<%=n.getImage()%>" class="img-responsive" alt=""></li>--%>
                                        <li>By <a title="" href="javascript:void(0)"><span>Admin</span></a> --</li>
                                        <li><a title="" href="#"><%=n.getPublishedDate()%></a> --</li>
                                        <li><a title="" href="#"><span><%=n.getTotalView()%> Views</span></a></li>
                                    </ul>
                                </div>
                                <p style="max-height: 60px"><%=n.getDescription()%>...</p>
                                <a href="news.jsp?id=<%=n.getId()%>" type="button" class="btn btn-style">Read more</a>
                            </div>
                        </div>

                        <%
                    }

                %>

                <!--Post list-->

            </div>


            <aside class="col-sm-4 left-padding">

                <div class="input-group search-area">
                    <!-- search area -->
                    <!-- search area -->
                    <input type="email" id="email" required class="form-control" placeholder="Subscribe to us by email..." name="q">
                    <div class="input-group-btn">
                        <button id="subscribe" class="btn btn-search" type="submit"><i class="fa fa-send" aria-hidden="true"></i></button>
                    </div>
                </div>
                <!-- social icon -->



                <!-- /.social icon -->


                <%

                    List<News> populerNewsList = newsDao.findPopulerNews();

                %>

                <div class="tab-inner">
                    <ul class="tabs active">
                        <li  class="current"><a href="#">MOST VIEWED</a></li>
                    </ul>
                    <hr>
                    <!-- tabs -->
                    <div class="tab_content">
                        <div class="tab-item-inner">

                            <%
                                for(News news : populerNewsList){
                            %>

                            <div class="box-item wow fadeIn" data-wow-duration="1s" data-wow-delay="0.3s">
                                <div class="img-thumb">
                                    <a href="news.jsp?id=<%=news.getId()%>" rel="bookmark"><img class="entry-thumb"
                                                                    src="images/upload/<%=news.getImage()%>" alt="" height="80" width="90"></a>
                                </div>
                                <div class="item-details">
                                    <h6 class="sub-category-title bg-color-4">
                                        <a href="news.jsp?id=<%=news.getId()%>"><%=news.getType()%></a>
                                    </h6>
                                    <h3 class="td-module-title"><a href="news.jsp?id=<%=news.getId()%>"><%=news.getTitle()%></a></h3>
                                    <div class="post-editor-date">
                                        <!-- post date -->
                                        <div class="post-date">
                                            <i class="pe-7s-clock"></i> <%=news.getPublishedDate()%>
                                        </div>
                                        <!-- post comment -->
                                        <div class="post-author-comment"><i class="pe-7s-comment"></i> <%=news.getTotalView()%> </div>
                                    </div>
                                </div>
                            </div>




                            <%
                                }
                            %>


                        </div>

                    </div>
                    <!-- / tab_content -->
                </div>



                <!-- / tab -->

            </aside>
        </div>
        <!-- pagination -->

    </div>
    <!-- footer Area
        ============================================ -->
    <footer>
        <div class="container">

            <hr>
            <div class="row">
                <div class="col-sm-3">
                    <div class="footer-box footer-logo-address">
                        <!-- address  -->
                        <img src="images/footer-logo.png" class="img-responsive" alt="">
                        <address>
                            14L.E Goulburn St, Sydney 2000NSW
                            <br> Tell: 01922296392
                            <br> Email: bdtask@gmail.com
                        </address>
                    </div>
                    <!-- /.address  -->
                </div>
                <div class="col-sm-3">
                    <div class="footer-box">
                        <h3 class="category-headding">categories</h3>
                        <div class="headding-border bg-color-4"></div>
                        <ul>
                            <li><i class="fa fa-dot-circle-o"></i><a href="#">Newsletter</a></li>
                            <li><i class="fa fa-dot-circle-o"></i><a href="#">Pressroom</a></li>
                            <li><i class="fa fa-dot-circle-o"></i><a href="#">Advertise online</a></li>
                            <li><i class="fa fa-dot-circle-o"></i><a href="#">Language</a></li>
                            <li><i class="fa fa-dot-circle-o"></i><a href="#">Being Part</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="footer-box">
                        <h3 class="category-headding">POPULAR CATEGORY</h3>
                        <div class="headding-border bg-color-5"></div>
                        <ul>
                            <li><i class="fa fa-dot-circle-o"></i><a href="#">Digital Edition</a></li>
                            <li><i class="fa fa-dot-circle-o"></i><a href="#">Site Map</a></li>
                            <li><i class="fa fa-dot-circle-o"></i><a href="#">About Ads</a></li>
                            <li><i class="fa fa-dot-circle-o"></i><a href="#">Give a Gift</a></li>
                            <li><i class="fa fa-dot-circle-o"></i><a href="#">About Us</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="footer-box">
                        <h3 class="category-headding ">POPULAR CATEGORY</h3>
                        <div class="headding-border"></div>
                        <ul>
                            <li><i class="fa fa-dot-circle-o"></i><a href="#">Newsletter</a></li>
                            <li><i class="fa fa-dot-circle-o"></i><a href="#">Pressroom</a></li>
                            <li><i class="fa fa-dot-circle-o"></i><a href="#">Advertise online</a></li>
                            <li><i class="fa fa-dot-circle-o"></i><a href="#">Language</a></li>
                            <li><i class="fa fa-dot-circle-o"></i><a href="#">Being Part</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- /.sub footer -->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <!-- Metis Menu Plugin JavaScript -->
    <script type="text/javascript" src="js/metisMenu.min.js"></script>
    <!-- Scrollbar js -->
    <script type="text/javascript" src="js/jquery.mCustomScrollbar.concat.min.js"></script>
    <!-- animate js -->
    <script type="text/javascript" src="js/wow.min.js"></script>
    <!-- Newstricker js -->
    <script type="text/javascript" src="js/jquery.newsTicker.js"></script>
    <!--  classify JavaScript -->
    <script type="text/javascript" src="js/classie.js"></script>
    <!-- owl carousel js -->
    <script type="text/javascript" src="owl-carousel/owl.carousel.js"></script>
    <!-- youtube js -->
    <script type="text/javascript" src="js/RYPP.js"></script>
    <!-- jquery ui js -->
    <script type="text/javascript" src="js/jquery-ui.js"></script>
    <!-- form -->
    <script type="text/javascript" src="js/form-classie.js"></script>
    <!-- custom js -->
    <script type="text/javascript" src="js/custom.js"></script>


    <script>
        $(document).ready(function () {
            //  alert("hello.............");
            $("#subscribe").click(function () {

                var email = $("#email").val();
                if(validateEmail(email)){
                    $.post("subscriber",{email:email}, function (data,status) {
                        alert("Message : "+data);
                    });
                }else{
                    alert("Invalid email address.")
                }

            });
        });

        function validateEmail(email) {
            var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
            return re.test(String(email).toLowerCase());
        }

    </script>


<!-- Mirrored from news365htmllatest.bdtask.com/Demo/DemoNews365/category-style-two.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 04 Mar 2020 19:05:52 GMT -->

<div id="toTop" class="btn btn-info" style="display: block;"><span class="fa fa-dot-circle-o top"></span><br>TOP</div></body></html>
