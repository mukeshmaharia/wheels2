<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix='c' %>
<html>

<head>
    <title></title>
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



    <link rel="stylesheet" type="text/css" href="css/ie10-viewport-bug-workaround.css">

    <script  src="js/ie-emulation-modes-warning.js"></script>
</head>
<body>
<div class="page_loader"></div>

<!-- Top header start -->
<jsp:include page="frontend/header.jsp"/>
<!-- Top header end -->

<!-- Main header start -->
<%@ include file="frontend/mainheader.jsp"%>
<!-- Main header end -->

<!-- Banner start -->
<jsp:include page="frontend/banner.jsp"/>
<!-- Banner end -->

<!-- Search box 2 end -->

<!-- Featured car start -->
<div class="featured-car content-area-5">
    <div class="container">
        <!-- Main title -->
        <div class="main-title">
            <h1>Featured <span>Cars</span></h1>
            <p>The all new featured cars are here.</p>
        </div>
        <!-- Slick slider area start -->
        <div class="slick-slider-area clearfix">
            <div class="row slick-carousel" data-slick='{"slidesToShow": 3, "responsive":[{"breakpoint": 1024,"settings":{"slidesToShow": 2}}, {"breakpoint": 768,"settings":{"slidesToShow": 1}}]}'>
             <c:forEach var="i" items="${vehicleList}">
                <div class="slick-slide-item">
                    
                     <div class="car-box-3">
                           
                        <div class="car-thumbnail">
                            <a href="details?id=${i.vehicleNo }" class="car-img">
                                <div class="tag-2">Featured</div>
                                <div class="price-box">
                               
                                    <br>
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
                                <a href="details?id=${i.vehicleNo }">${ i.vehicleName}</a>
                            </h1>
                            <div class="location">
                                <a href="details?id=${i.vehicleNo }">
                                    <i class="flaticon-pin"></i>${ i.address}
                                </a>
                            </div>
                            
                                <a href="details?id=${i.vehicleNo }">
                            <ul class="facilities-list clearfix">
                                <li>${i.fuel }</li>
                                <li>${ i.kmsDriven} km</li>
                                <li>${ i.transmissionType}</li>
                                <li>${ i.type}</li>
                                <li>${ i.colour}</li>
                                <li>year ${ i.mfgYear}</li>
                            </ul>
                             </a>
                        </div>
                    </div>
                   
                </div>
                    </c:forEach>           
                
            </div>
            <div class="slick-btn">
                <div class="slick-prev slick-arrow-buton sab-4">
                    <i class="fa fa-angle-left"></i>
                </div>
                <div class="slick-next slick-arrow-buton sab-3">
                    <i class="fa fa-angle-right"></i>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Featured car end -->

<!-- Rent car start -->
<div class="featured-car content-area">
    <div class="container">
        <!-- Main title -->
        <div class="main-title">
            <h1>Latest <span>Cars</span></h1>
            <p>All new laterst cars are here.</p>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-6">
                <div class="car-box">
                    <div class="car-thumbnail">
                        <a href="https://auto.mahindra.com/suv/scorpio-n" class="car-img">
                            <div class="tag">Latest</div>
                            <img class="d-block w-100" src="img/car/scorpio.jpeg" alt="car">
                            <div class="facilities-list clearfix">
                                <ul>
                                    <li>
                                        <span><i class="flaticon-way"></i></span>14 km/l
                                    </li>
                                    <li>
                                        <span><i class="flaticon-calendar-1"></i></span>2022
                                    </li>
                                    <li>
                                        <span><i class="flaticon-manual-transmission"></i></span>Manual
                                    </li>
                                </ul>
                            </div>
                        </a>
                        
                    </div>
                    <div class="detail">
                        <h1 class="title">
                            <a href="https://auto.mahindra.com/suv/scorpio-n">Mahindra Scorpio N</a>
                        </h1>
                        <div class="location">
                            <a href="https://auto.mahindra.com/suv/scorpio-n">
                                <i class="flaticon-pin"></i>NH-65 Pali Road, Kudi, Near Toyota Showroom, Jodhpur, Rajasthan 342001
                            </a>
                        </div>
                    </div>
                    <div class="footer clearfix">
                        <div class="pull-left ratings days">
                            <p class="cartype">SUV</p>
                        </div>
                        <div class="pull-right">
                            <p class="price">Rs 14.18 Lakh onwards</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="car-box">
                    <div class="car-thumbnail">
                        <a href="https://cars.tatamotors.com/suv/safari" class="car-img">
                            <div class="tag">Latest</div>
                            <img class="d-block w-100" src="img/car/safari.jpeg" alt="car">
                            <div class="facilities-list clearfix">
                                <ul>
                                    <li>
                                        <span><i class="flaticon-way"></i></span>16.1 km/l	
                                    </li>
                                    <li>
                                        <span><i class="flaticon-calendar-1"></i></span>2022
                                    </li>
                                    <li>
                                        <span><i class="flaticon-manual-transmission"></i></span>Manual
                                    </li>
                                </ul>
                            </div>
                        </a>
                       
                    </div>
                    <div class="detail">
                        <h1 class="title">
                            <a href="https://cars.tatamotors.com/suv/safari">TATA Safari</a>
                        </h1>
                        <div class="location">
                            <a href="https://cars.tatamotors.com/suv/safari">
                                <i class="flaticon-pin"></i>A/18, TSF Plaza Aakhaliya Vikas Yojana, Pratap Nagar, Jodhpur, Rajasthan 342001
                                
                            </a>
                        </div>
                    </div>
                    <div class="footer clearfix">
                        <div class="pull-left ratings days">
                            <p class="cartype">SUV</p>
                        </div>
                        <div class="pull-right">
                            <p class="price">Rs 18.37 Lakh</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="car-box">
                    <div class="car-thumbnail">
                        <a href="https://cars.tatamotors.com/suv/nexon" class="car-img">
                            <div class="tag">Latest</div>
                            <img class="d-block w-100" src="img/car/nexon.jpeg" alt="car">
                            <div class="facilities-list clearfix">
                                <ul>
                                    <li>
                                        <span><i class="flaticon-way"></i></span>21.19 km/l Diesel
                                    </li>
                                    <li>
                                        <span><i class="flaticon-calendar-1"></i></span>2022
                                    </li>
                                    <li>
                                        <span><i class="flaticon-manual-transmission"></i></span>Manual
                                    </li>
                                </ul>
                            </div>
                        </a>
                        
                    </div>
                    <div class="detail">
                        <h1 class="title">
                            <a href="https://cars.tatamotors.com/suv/nexon">TATA Nexon</a>
                        </h1>
                        <div class="location">
                            <a href="https://cars.tatamotors.com/suv/nexon">
                                <i class="flaticon-pin"></i>A/18, TSF Plaza Aakhaliya Vikas Yojana, Pratap Nagar, Jodhpur, Rajasthan 342001
                            </a>
                        </div>
                    </div>
                    <div class="footer clearfix">
                        <div class="pull-left ratings days">
                            <p class="cartype">SUV</p>
                        </div>
                        <div class="pull-right">
                            <p class="price">Rs 7.54 Lakh onwards</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Rent car end -->


<!-- Intro section start -->
<%@ include file="frontend/intro.jsp" %>
<!-- Intro section end -->

<!-- Footer start -->
<%@ include file="frontend/footer.jsp" %>
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


</body>

</html>