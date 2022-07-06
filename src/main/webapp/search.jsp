<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix='c' %>

<html>

<head>
   
    <!-- End Google Tag Manager -->
    <title>Search Wheels</title>
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

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script  src="js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script  src="js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script  src="js/html5shiv.min.js"></script>
    <script  src="js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NX5VQP"
                  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
<div class="page_loader"></div>

<!-- Top header start -->
<jsp:include page="frontend/header.jsp"/>
</header>
<!-- Top header end -->

<!-- Main header start -->
<%@ include file="frontend/mainheader.jsp"%>
<!-- Main header end -->

<!-- Banner start -->
<div class="sub-banner overview-bgi">
    <div class="container breadcrumb-area">
        <div class="breadcrumb-areas">
            <h1>Search Results</h1>
            <ul class="breadcrumbs">
                <li><a href="/wheels2">Home</a></li>
                <li class="active">Search</li>
            </ul>
        </div>
    </div>
</div>
<!-- Banner end -->

<!-- Search box 3 start -->
<div class="search-box-3 sb-7 bg-active">
    <div class="container">
        <div class="search-area-inner">
            <div class="search-contents">
                <form method="POST" action="search">
                    <div class="row">
                        <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                            <div class="form-group">
                                <select class="selectpicker search-fields" name="brand">
                                    <option disabled="disabled" selected="selected">Brand</option>
                                     <option>Tata</option>
			                        <option>Mahindra</option>
			                        <option>Toyota</option>
			                        <option>Maruti Suzuki</option>
			      					 <option>Rang Rover</option>
			      					 <option>Discovery</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                            <div class="form-group">
                                <select class="selectpicker search-fields" name="model">
                                    <option disabled="disabled" selected="selected">Model</option>
                                    <option>Mini car</option>
			                        <option>Jeep</option>
			                        <option>XUV</option>
			                        <option>Sports Car</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                            <div class="form-group">
                                <select class="selectpicker search-fields" name="location">
                                    <option disabled="disabled" selected="selected">Location</option>
                       				 <option>Jodhpur</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                            <div class="form-group">
                                <select class="selectpicker search-fields" name="modelYear">
                                    <option disabled="disabled" selected="true">Select Year</option>
                                      <option>2016</option>
				                        <option>2017</option>
				                        <option>2018</option>
				                        <option>2019</option>
				                         <option>2020</option>
				                        <option>2021</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">                      
                        
                        <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                            <div class="form-group">
                                <button "btn btn-block button-theme btn-md">
                                    <i class="fa fa-search"></i>Search
                                </button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- Search box 3 end -->

<!-- Featured car start -->
<div class="featured-car content-area">
    <div class="container">
        <!-- Main title -->
        <div class="main-title">
            <h1>Here's your <span>Cars</span></h1>
            <p>Get your dream cars here!</p>
        </div>
        <div class="row">
          <c:forEach var="i" items="${searchList}">        
            <div class="col-lg-4 col-md-6">
                <div class="car-box">
                    <div class="car-thumbnail">
                        <a href="car-details.html" class="car-img">
                            <div class="tag">For Sale</div>
                            <img class="d-block w-100" src=${i.filePath }  alt="car">
                            <div class="facilities-list clearfix">
                                <ul>
                                    <li>
                                        <span><i class="flaticon-way"></i></span>${i.kmsDriven })
                                    </li>
                                    <li>
                                        <span><i class="flaticon-calendar-1"></i></span>${i.mfgYear }
                                    </li>
                                    <li>
                                        <span><i class="flaticon-manual-transmission"></i></span>${i.transmissionType }
                                    </li>
                                </ul>
                            </div>
                        </a>
                        <div class="carbox-overlap-wrapper">
                            <div class="overlap-box">
                                <div class="overlap-btns-area">
                                    <a class="overlap-btn" data-toggle="modal" data-target="#carOverviewModal">
                                        <i class="fa fa-eye-slash"></i>
                                    </a>
                                    <div class="car-magnify-gallery">
                                        <a href="img/car/car-1.jpg" class="overlap-btn" data-sub-html="<h4>Lamborghini Huracán</h4><p>A beautiful Sunrise this morning taken En-route to Keswick not one as planned but I'm extremely happy....</p>">
                                            <i class="fa fa-expand"></i>
                                            <img class="hidden" src="img/car/car-1.jpg" alt="hidden-img">
                                        </a>
                                        <a href="img/car/car-2.jpg" class="hidden" data-sub-html="<h4>Lexus GS Red Car</h4><p>A beautiful Sunrise this morning taken En-route to Keswick not one as planned but I'm extremely happy....</p>">
                                            <img class="hidden" src="img/car/car-2.jpg" alt="hidden-img">
                                        </a>
                                        <a href="img/car/car-3.jpg" class="hidden" data-sub-html="<h4>2015 Porsche Cayenne</h4><p>A beautiful Sunrise this morning taken En-route to Keswick not one as planned but I'm extremely happy....</p>">
                                            <img class="hidden" src="img/car/car-3.jpg" alt="hidden-img">
                                        </a>
                                        <a href="img/car/car-4.jpg" class="hidden" data-sub-html="<h4>Toyota Corolla</h4><p>A beautiful Sunrise this morning taken En-route to Keswick not one as planned but I'm extremely happy....</p>">
                                            <img class="hidden" src="img/car/car-4.jpg" alt="hidden-img">
                                        </a>
                                        <a href="img/car/car-5.jpg" class="hidden" data-sub-html="<h4>Toyota Prius Specs</h4><p>A beautiful Sunrise this morning taken En-route to Keswick not one as planned but I'm extremely happy....</p>">
                                            <img class="hidden" src="img/car/car-5.jpg" alt="hidden-img">
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="detail">
                        <h1 class="title">
                            <a href="car-details.html">${i.keyword }</a>
                        </h1>
                        <div class="location">
                            <a href="car-details.html">
                                <i class="flaticon-pin"></i>${i.location }
                            </a>
                        </div>
                    </div>
                    <div class="footer clearfix">
                        <div class="pull-left ratings days">
                            <p class="cartype">${i.type }</p>
                        </div>
                        <div class="pull-left ratings days">
                            <p class="cartype">${i.model }</p>
                        </div>
                        <div class="pull-right">
                            <p class="price">${i.askingPrice }</p>
                        </div>
                    </div>
                </div>
            </div>
           </c:forEach>         
        </div>
    </div>
</div>
<!-- Featured car end -->
<!-- Footer start -->
<footer class="footer">
    
    <div class="sub-footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <p class="copy">© 2022___Wheels.com___All Rights Reserved.</p>
                </div>
              
            </div>
        </div>
    </div>
</footer>
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
                <c:forEach var="j" items="${searchList}">  
                <div class="modal-header">
                    <div class="modal-title" id="carOverviewModalLabel">
                        <h4>Explore Your Dream Car</h4>
                        <h5><i class="flaticon-pin"></i> ${j.location}</h5>
                    </div>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row modal-raw">
                        <div class="col-lg-6 modal-left">
                            <div class="item active">
                                <img src=${j.filePath } alt="best-car" class="img-fluid modalLabel-1">
                                <img src=${j.filePath } alt="best-car" class="img-fluid modalLabel-2">
                                <div class="sobuz">
                                    <div class="price-box" style="padding-bottom: 5px;">
                                        <span class="del-2">${j.askingPrice }</span>
                                    </div>
                                    <div class="ratings-2">
                                       <a href="car-details.html" class="btn btn-md btn-round btn-theme">${j.model }</a>
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
                                        <li>${j.keyword}</li>
                                        <li>${j.mfgYear }</li>
                                        <li>Used car</li>
                                        <li>${j.askingPrice }</li>
                                    </ul>
                                </section>
                                <div class="description">
                                    <h3>Description</h3>
                                    <p>Here is your dream car.</p>
                                    <a href="details" class="btn btn-md btn-round btn-theme">Show Detail</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </c:forEach>  
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