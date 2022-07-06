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
<%@include file="frontend/header.jsp" %>
<!-- Top header end -->

<!-- Main header start -->
<jsp:include page="frontend/mainheader.jsp"/>
<!-- Main header end -->

<!-- Sub banner start -->
<jsp:include page="frontend/subbanner.jsp"/>
<!-- Sub Banner end -->


<!-- Featured car start -->
<div class="featured-car content-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-12">                
                <div class="row">         
                    <c:forEach var="i" items="${vehicleList}">                
                    <div class="col-lg-6 col-md-6">                                 
                        <div class="car-box-3">
                            <div class="car-thumbnail">
                                <a href="car-details.html" class="car-img">
                                    <div class="tag">for sale</div>
                                    <div class="price-box">
                                        <span>${i.askingPrice}</span>
                                    </div>
                                    <img class="d-block w-100" src=${i.filePath } alt="car">
                                </a>
                                <div class="carbox-overlap-wrapper">
                                    <div class="overlap-box">
                                        <div class="overlap-btns-area">
                                            <div class="car-magnify-gallery">
                                                <a href=${i.filePath } class="overlap-btn">
                                                    <i class="fa fa-expand"></i>
                                                    <img class="hidden" src=${i.filePath }>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="detail">
                                <h1 class="title">
                                    <a href="car-details.html">${ i.vehicleName}</a>
                                </h1>
                                <div class="location">
                                    <a href="car-details.html">
                                        <i class="flaticon-pin"></i>${ i.address}
                                    </a>
                                </div>
                                <ul class="facilities-list clearfix">
                                    <li>${i.fuel }</li>
                                    <li>${ i.kmsDriven} km</li>
                                    <li>${ i.transmissionType}</li>
                                    <li>${ i.type}</li>
                                    <li>${ i.colour}</li>
                                    <li>year ${ i.mfgYear}</li>
                                </ul>
                            </div>
                        </div>                       
                    </div>
                      </c:forEach>    
                </div>
                <!-- Page navigation start -->
                <div class="pagination-box p-box-2 text-center">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination">
                            <li class="page-item">
                                <a class="page-link" href="#"><i class="fa fa-angle-left"></i></a>
                            </li>
                            <li class="page-item"><a class="page-link active" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item">
                                <a class="page-link" href="#"><i class="fa fa-angle-right"></i></a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
            <div class="col-lg-4 col-md-12">
                <div class="sidebar-right">
                    <!-- Advanced search start -->
                    <div class="widget advanced-search2">
                        <h3 class="sidebar-title">Search your desire car</h3>
                        <form action="search" method="GET">
                            <div class="form-group">
                    <input type="text" name="keyword" placeholder="Search by name" class="form-control">
                </div>
                <div class="form-group">
                    <select class="form-control search-fields" name="brand">
                        <option selected="true" disabled="disabled" required>Brand</option>
                        <option>Tata</option>
                        <option>Mahindra</option>
                        <option>Toyota</option>
                        <option>Maruti Suzuki</option>
      					 <option>Rang Rover</option>
      					 <option>Discovery</option>
                    </select>
                </div>
                <div class="form-group">
                    <select class="form-control search-fields" name="model">
                        <option selected="true" disabled="disabled" required>Model</option>
                        <option>Mini car</option>
                        <option>Jeep</option>
                        <option>XUV</option>
                        <option>Sports Car</option>
                    </select>
                </div>
                <div class="form-group">
                    <select class="form-control search-fields" name="location">
                        <option selected="true" disabled="disabled" required>Location</option>
                        <option>Jodhpur</option>
                    </select>
                </div>
                <div class="form-group">
                    <select class="form-control search-fields" name="modelYear">
                        <option selected="true" disabled="disabled" required>Year</option>
                        <option>2016</option>
                        <option>2017</option>
                        <option>2018</option>
                        <option>2019</option>
                        <option>2020</option>
                        <option>2021</option>
                    </select>
                </div>
                
                <div class="form-group">
                    <button class="btn btn-block button-theme btn-md">
                        <i class="fa fa-search"></i> Search
                    </button>
                </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Featured car end -->

<%@include file="frontend/intro.jsp" %>
<!-- Footer start -->
<%@include file="frontend/footer.jsp" %>
<!-- Footer end -->

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