<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix='c' %>

<html>
<head>
    <title>Car Sell Confirmation</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">

    <!-- External CSS libraries -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/animate.min.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-submenu.css">

    <link rel="stylesheet" type="text/css" href="css/bootstrap-select.min.css">
    <link rel="stylesheet" type="text/css" href="css/magnific-popup.css">
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" type="text/css" href="fonts/linearicons/style.css">
    <link rel="stylesheet" type="text/css"  href="css/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" type="text/css"  href="css/dropzone.css">
    <link rel="stylesheet" type="text/css"  href="css/slick.css">
    <link rel="stylesheet" type="text/css"  href="css/lightbox.min.css">
    <link rel="stylesheet" type="text/css"  href="css/jnoty.css">

    <!-- Custom stylesheet -->
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" id="style_sheet" href="css/skins/red.css">

    <!-- Favicon icon -->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" >

    <!-- Google fonts -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800%7CPlayfair+Display:400,700%7CRoboto:100,300,400,400i,500,700">


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link rel="stylesheet" type="text/css" href="css/ie10-viewport-bug-workaround.css">


    <script  src="js/ie-emulation-modes-warning.js"></script>


</head>
<body>
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NX5VQP"
                  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
<div class="page_loader"></div>

<!-- Top header start -->
<%@include file="frontend/header.jsp" %>
<!-- Top header end -->

<!-- Main header start -->
<%@include file="frontend/mainheader.jsp" %>
<!-- Main header end -->

<!-- Sub banner start -->
<jsp:include page="frontend/subbanner.jsp"/>
<!-- Sub Banner end -->

<!-- Contact 2 start -->
<div class="contact-2 content-area-5">
    <div class="container">
        <!-- Main title -->
        <div class="main-title text-center">
            <h1>Thank <span>You!</span></h1>
            <p>Thank you for being with us.Your car details has been recorded successfully!</p>
        </div>
        <form action="/wheels2">
            <div class="row"> 
                   <div class="col-md-6">
                            <div class="send-btn text-center">
                              <a>  <button type="submit" class="btn btn-md button-theme">Home</button></a>
                            </div>
                        </div>
                <div class="col-lg-5">               
                    <div class="contact-info-2">
                        <div class="ci-box">
                            <div class="icon">
                                <i class="flaticon-phone"></i>
                            </div>
                            <div class="detail">
                                <h5>Phone:</h5>
                                <p>+91 9876543210</p>
                            </div>
                        </div>
                        <div class="ci-box">
                            <div class="icon">
                                <i class="flaticon-mail"></i>
                            </div>
                            <div class="detail">
                                <h5>Email:</h5>
                                <p>info@wheels.com</p>
                            </div>
                        </div>
                        <div class="ci-box">
                            <div class="icon">
                                <i class="flaticon-earth"></i>
                            </div>
                            <div class="detail">
                                <h5>Web:</h5>
                                <p>wheels.com</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<!-- Contact 2 end -->

<!-- Our team start -->
<div class="our-team content-area bg-grea-3">
    <div class="container">
        <!-- Main title -->     
        <div class="main-title">
            <h1>Executive <span>Team</span></h1>
            <p>Get in touch with our team members </p>
        </div>
        <!-- Slick slider area start -->    
        <div class="slick-slider-area clearfix">
            <div class="row slick-carousel" data-slick='{"slidesToShow": 4, "responsive":[{"breakpoint": 1024,"settings":{"slidesToShow": 2}}, {"breakpoint": 768,"settings":{"slidesToShow": 1}}]}'>
             <c:forEach var="j" items="${teamList}">               
                 <div class="slick-slide-item">
                    <div class="team-1">
                        <div class="details">
                            <h4>${j.empName }</h4>
                            <h5>${j.empDesignation }</h5>
                        </div>
                    </div>
                </div>
              </c:forEach>                     
            </div>
        </div>
    </div>
</div>
<!-- Our team end -->

<!-- Footer start -->
<%@include file="frontend/footer.jsp" %>
<!-- Footer end -->

<!-- Full Page Search -->

<!-- Car Overview Modal -->


<script src="js/jquery-2.2.0.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script  src="js/bootstrap-submenu.js"></script>
<script  src="js/rangeslider.js"></script>
<script  src="js/jquery.mb.YTPlayer.js"></script>
<script  src="js/bootstrap-select.min.js"></script>
<script  src="js/jquery.easing.1.3.js"></script>
<script  src="js/jquery.scrollUp.js"></script>
<script  src="js/jquery.mCustomScrollbar.concat.min.js"></script>
<script  src="js/dropzone.js"></script>
<script  src="js/slick.min.js"></script>
<script  src="js/jquery.filterizr.js"></script>
<script  src="js/jquery.magnific-popup.min.js"></script>
<script  src="js/jquery.countdown.js"></script>
<script  src="js/jquery.mousewheel.min.js"></script>
<script  src="js/lightgallery-all.js"></script>
<script  src="js/jnoty.js"></script>
<script  src="js/app.js"></script>

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script  src="js/ie10-viewport-bug-workaround.js"></script>
<!-- Custom javascript -->
<script  src="js/ie10-viewport-bug-workaround.js"></script>

<script  src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB0N5pbJN10Y1oYFRd0MJ_v2g8W2QT74JE"></script>
</body>
</html>
