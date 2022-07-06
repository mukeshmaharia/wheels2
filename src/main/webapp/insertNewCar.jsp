<!DOCTYPE html>
<html lang="zxx">
<head>
    <!-- Google Tag Manager -->
    <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
            new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
        j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
        '../../../www.googletagmanager.com/gtm5445.html?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','GTM-NX5VQP');</script>
    <!-- End Google Tag Manager -->
    <title>Sell_on_Wheels</title>
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
    <script>
    function validate(){	
		  alert("Do you want to submit your car details");
		}
	}
</script>

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
<%@ include file="frontend/header.jsp" %>
<%@ include file="frontend/mainheader.jsp" %>
<%@ include file="frontend/subbanner.jsp" %>
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NX5VQP"
                  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
<div class="page_loader"></div>

<!-- Contact section start -->
<div class="contact-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <div class="form-section">
                    <div class="logo-2">
                            <img src="img/logos/black-logo1.png" alt="logo">
                    </div>
                    <h3>Enter car details</h3>
                    <form action="insertNewCar" method="POST" enctype="multipart/form-data" name="insertNewCar" onsubmit="return validate()">
                        <div class="form-group form-box">
                            <input type="text" name="ownersName" class="input-text" placeholder="Owner's Name" required>
                            <i class="fa fa-user"></i>
                        </div>
                         <div class="form-group form-box">
                            <input type="text" name="ownersMobileNo" class="input-text" placeholder="Owner's Mobile Number " required>
                            <i class="fa fa-user"></i>
                        </div>
                        <div class="form-group form-box">
                            <input type="text" name="address" class="input-text" placeholder="Owner's Address" required>
                            <i class="fa fa-user"></i>
                        </div>
                         <div class="form-group form-box">
                            <input type="email" name="email" class="input-text" placeholder="Owner's Email Address" required>
                            <i class="flaticon-mail"></i>
                        </div>
                        <div class="form-group form-box">
                            <input type="text" name="vehicleNo" class="input-text" placeholder="Vehicle Number" required>
                            <i class="fa fa-user"></i>
                        </div>  
                         <div class="form-group form-box">
                            <input type="text" name="vehicleName" class="input-text" placeholder="Vehicle Name" required>
                            <i class="fa fa-user"></i>
                        </div>
                                     
                             <div class="form-group form-box">
                            <input type="text" name="mfgYear" class="input-text" placeholder="Model Year" required>
                            <i class="fa fa-user"></i>
                        </div>
                          <div class="form-group">
                    <select class="form-control search-fields" name="brand" required>
                        <option selected="true" disabled="disabled">Brand</option>
                        <option>Tata</option>
                        <option>Mahindra</option>
                        <option>Toyota</option>
                        <option>Maruti Suzuki</option>
      					 <option>Rang Rover</option>
      					 <option>Discovery</option>
                    </select>
                </div>	
                        <div class="form-group">
                        <select class="form-control search-fields" name="type" required>
                        <option selected="true" disabled="disabled">Model</option>
                        <option>Mini car</option>
                        <option>Jeep</option>
                        <option>XUV</option>
                        <option>Sports Car</option>
                    </select>
                    </div>   
                     <div class="form-group">
                    <select class="form-control search-fields" name="fuel" required>
                        <option selected="true" disabled="disabled">Transmission Type</option>
                        <option>Petrol</option>
                        <option>Diesel</option>
                        <option>Electric</option>
                    </select>
                </div>  
                 <div class="form-group">
                    <select class="form-control search-fields" name="transmissionType" required>
                        <option selected="true" disabled="disabled">Type</option>
                        <option>Automatic</option>
                        <option>Manual</option>
                    </select>
                </div>  
                     <div class="form-group form-box">
                            <input type="text" name="colour" class="input-text" placeholder="colour" required>
                            <i class="fa fa-user"></i>
                        </div>       
                        <div class="form-group form-box">
                            <input type="text" name="kmsDriven" class="input-text" placeholder="KMs Driven" required>
                            <i class="fa fa-user"></i>
                        </div>
                       
                        <div class="form-group form-box">
                            <input type="text" name="askingPrice" class="input-text" placeholder="Asking Price" required>
                            <i class="fa fa-user"></i>
                        </div>
                         <div class="input-group mb-3">
 						<input type="file" class="form-control" id="vehicleImage" name="vehicleImage">
  						<label class="input-group-text" for="inputGroupFile02">Upload Car's photo</label>
						</div>  
                        <div class="form-group mb-0 clearfix">
                            <button type="submit" class="btn-md btn-theme float-left">Submit your car details</button>
                        </div>
                        
                        <div class="clearfix"></div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Contact section end -->



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