<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix='c' %>

<html>

<head>
   
    <title>Wheels</title>
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
   <jsp:include page="frontend/header.jsp"/>
<!-- Top header end -->

<!-- Main header start -->
<%@include file="frontend/mainheader.jsp" %>
<!-- Main header end -->

<!-- Sub banner start -->
<%@include file="frontend/subbanner.jsp" %>
<!-- Sub Banner end -->

<!-- Service center strat -->
<div class="about-car content-area-5">
    <div class="container">
        <div class="row">
            <div class="col-xl-5 col-lg-6">
                <div class="about-car-photo">
                    <div id="carDetailsSlider" class="carousel car-details-sliders slide">
                        <!-- main slider carousel items -->
                        <div class="carousel-inner">
                            <div class="active item carousel-item" data-slide-number="0">
                                <img src="img/car/car-1.jpg" class="img-fluid" alt="slider-car">
                            </div>
                            <div class="item carousel-item" data-slide-number="1">
                                <img src="img/car/car-7.jpg" class="img-fluid" alt="slider-car">
                            </div>
                            <div class="item carousel-item" data-slide-number="2">
                                <img src="img/car/car-8.jpg" class="img-fluid" alt="slider-car">
                            </div>
                        </div>
                        <!-- main slider carousel nav controls -->
                        <ul class="carousel-indicators car-properties list-inline nav nav-justified">
                            <li class="list-inline-item active">
                                <a id="carousel-selector-0" class="selected" data-slide-to="0" data-target="#carDetailsSlider">
                                    <img src="img/car/car-1.jpg" class="img-fluid" alt="small-car">
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a id="carousel-selector-1" data-slide-to="1" data-target="#carDetailsSlider">
                                    <img src="img/car/car-7.jpg" class="img-fluid" alt="small-car">
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a id="carousel-selector-2" data-slide-to="2" data-target="#carDetailsSlider">
                                    <img src="img/car/car-8.jpg" class="img-fluid" alt="small-car">
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-xl-7 col-lg-6 align-self-center">
                <div class="best-used-car">
                    <h3>Welcome to <span>Wheels </span></h3>
                    <p>
                        WHEELS is a next generation ecommerce platform for cars. We provide the best in class experience for car buyers by offering a wide assortment of certified cars that are delivered in a click of a button while sellers get the best price of their vehicles.

                        Buying a used car sometimes is not an easy task, it requires hours of browsing, multiple test drives and weeks before finding the right one. But with us, it is as simple as browsing through thousands of certified cars and reserving your favorite one. 
                        We will deliver the car to you else you can collect it from a WHEELS hub near you. 
                    </p>
                      <p>  Over the years we’ve simplified car selling! One can sell their car from their home or our branch in less than 1 hour and get the best price instantly. We also take care of ownership (RC) transfer for free.
                        
                        
                        </p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Service center end -->



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
<%@ include file="frontend/footer.jsp" %>
<!-- Footer end -->

<!-- Full Page Search -->
<div id="full-page-search">
    <button type="button" class="close">×</button>
    <form action="https://storage.googleapis.com/theme-vessel/carhouse/index.html#" class="search-header">
        <input type="search" value="" placeholder="type keyword(s) here" />
        <button type="submit" class="btn btn-sm button-theme">Search</button>
    </form>
</div>

<!-- Car Overview Modal -->
<div class="car-model-2">
    <div class="modal fade" id="carOverviewModal" tabindex="-1" role="dialog" aria-labelledby="carOverviewModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="modal-title" id="carOverviewModalLabel">
                        <h4>Explore Your Dream Car</h4>
                        <h5><i class="flaticon-pin"></i> 123 Kathal St. Tampa City,</h5>
                    </div>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row modal-raw">
                        <div class="col-lg-6 modal-left">
                            <div class="item active">
                                <img src="img/car-13.jpg" alt="best-car" class="img-fluid modalLabel-1">
                                <img src="img/car-14.jpg" alt="best-car" class="img-fluid modalLabel-2">
                                <div class="sobuz">
                                    <div class="price-box">
                                        <span class="del-2">$1050.00</span>
                                    </div>
                                    <div class="ratings-2">
                                        <span class="ratings-box">4.5/5</span>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        ( 7 Reviews )
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 modal-right">
                            <div class="modal-right-content">
                                <section>
                                    <h3>Features</h3>
                                    <div class="features">
                                        <ul class="bullets">
                                            <li>Cruise Control</li>
                                            <li>Airbags</li>
                                            <li>Air Conditioning</li>
                                            <li>Alarm System</li>
                                            <li>Audio Interface</li>
                                            <li>CDR Audio</li>
                                            <li>Seat Heating</li>
                                            <li>ParkAssist</li>
                                        </ul>
                                    </div>
                                </section>
                                <section>
                                    <h3>Overview</h3>
                                    <ul class="bullets">
                                        <li>Model</li>
                                        <li>Year</li>
                                        <li>Condition</li>
                                        <li>Price</li>
                                        <li>Audi</li>
                                        <li>2020</li>
                                        <li>Brand New</li>
                                        <li>$178,000</li>
                                    </ul>
                                </section>
                                <div class="description">
                                    <h3>Description</h3>
                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard.</p>
                                    <a href="car-details.html" class="btn btn-md btn-round btn-theme">Show Detail</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

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
</body>
</html>