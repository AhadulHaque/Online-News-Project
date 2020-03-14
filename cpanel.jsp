<%@ page import="dao.NewsDao" %>
<%@ page import="java.util.List" %>
<%@ page import="entity.News" %>
<%@ page import="dao.SubscriberDao" %>
<%@ page import="entity.Subscriber" %><%--
  Created by IntelliJ IDEA.
  User: naim
  Date: 3/11/2020
  Time: 10:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    try{

            if(request.getSession().getAttribute("login_user")==null){
                %>
                  <script>
                      window.location = 'login.jsp';
                  </script>
               <%
            }else{
                String email = request.getSession().getAttribute("login_user").toString();
                System.out.println("# Email : "+email);
            }
           }catch (Exception e){
               e.printStackTrace();
               %>
                <script>
                    window.location = 'login.jsp';
                </script>
                <%
            }
%>

<html lang="en"><head></head><body><!-- Mirrored from news365htmllatest.bdtask.com/Demo/DemoNews365/category-style-two.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 04 Mar 2020 19:05:52 GMT -->
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



<div class="se-pre-con" style="display: none;"></div>

<section class="block-inner">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <h1>Admin Panel</h1>

            </div>
        </div>
    </div>
</section>
<div class="container">

    <!-- pagination -->

    <%
        NewsDao newsDao = new NewsDao();
        List<News> newsList = newsDao.findAllRows();
    %>


    <div class="row">
        <div class="col-sm-10">
            <h5>News List :</h5>
        </div>
        <div class="col-sm-2" style="float: right">
            <button    style="float: right" class="btn btn-primary" data-toggle="modal" data-target="#myModal"
                       onclick="addNews()" >Add News </button>
        </div>
    </div>


    <table style="margin-top:25px" class="table table-bordered">

        <thead>
            <tr>
                <th> #Sl No. </th>
                <th> Image </th>
                <th> Title </th>
                <th> Description </th>
                <th> Date </th>
                <th> Type </th>
                <th> Views </th>
                <th> Action </th>
            </tr>
        </thead>
        <tbody>

           <%
               for(int i=0; i<newsList.size(); i++){
                   News news = newsList.get(i);
                   %>
                      <tr>
                          <td><%=i%></td>
                          <td>
                              <img style="width: 30px; height: 30px;" src="${pageContext.request.contextPath}/images/upload/<%=news.getImage()%>">
                          </td>
                          <td><%=news.getTitle()%></td>
                          <td><%=news.getDescription()%></td>
                          <td><%=news.getPublishedDate()%></td>
                          <td><%=news.getType()%></td>
                          <td><%=news.getTotalView()%></td>
                          <td>
                              <%--<a href="javascript:void(0)">Edit</a>--%>
                              <form action="/add" method="post">
                                  <input type="hidden" value="DELETE" name="request_type">
                                  <input type="hidden" value="<%=news.getId()%>" name="id">
                                  <button type="submit" >Delete</button>
                              </form>

                          </td>
                      </tr>
                   <%
               }
           %>


        </tbody>



    </table>





    <h5 style="margin-top:30px">Subscriber List:</h5>
    <table style="margin-top:25px" class="table table-bordered">
        <thead>
           <tr>
               <th>#SL No.</th>
               <th>Email Address</th>
           </tr>
        </thead>
        <tbody>
          <%
              SubscriberDao subscriberDao = new SubscriberDao();
              List<Subscriber> subscribers = subscriberDao.findAllSubscriber();

              for (int i=0;i<subscribers.size();i++){
                  Subscriber subscriber = subscribers.get(i);
                  %>
                    <tr>
                        <td><%=(i+1)%></td>
                        <td><%=subscriber.getEmail()%></td>
                    </tr>
                 <%
              }
          %>
        </tbody>

    </table>






    <!-- The Modal -->
    <div class="modal fade" id="myModal">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Add news</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body">



                    <form action="/add" method="post" enctype="multipart/form-data">



                        <div class="form-group">



                            <input type="hidden" value="ADD" name="request_type">
                            <label for="title">Title:</label>
                            <input type="text" name="title" id="title" class="form-control " placeholder="Enter news title.">
                            <br/>


                            <label for="sel1">Select news type (select one):</label>
                            <select class="form-control" id="sel1" name="type">
                                <option>INTERNATIONAL</option>
                                <option>FASHION</option>
                                <option>POLITICS</option>
                                <option>TRAVEL</option>
                                <option>FOOD</option>
                                <option>TECHNOLOGY</option>
                            </select>
                            <br>


                            <label accept="image/**" for="file">Image:</label>
                            <input type="file" name="image" id="file" class="form-control " placeholder="Enter news title.">
                            <br/>

                            <label for="desc">Description:</label>
                            <textarea name="description" class="form-control" rows="5" id="desc" placeholder="Enter description about news"></textarea>

                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>



                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                </div>

            </div>
        </div>
    </div>






</div>
<!-- footer Area
    ============================================ -->


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



<!-- Mirrored from news365htmllatest.bdtask.com/Demo/DemoNews365/category-style-two.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 04 Mar 2020 19:05:52 GMT -->

<div id="toTop" class="btn btn-info" style="display: none;"><span class="fa fa-dot-circle-o top"></span><br>TOP</div>
<div id="toTop" class="btn btn-info"><span class="fa fa-dot-circle-o top"></span><br>TOP</div></body></html>