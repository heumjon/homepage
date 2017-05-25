<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <jsp:include page="../layout/headerStyle.jsp" flush="false"></jsp:include>
    
    <style type="text/css">
    	#top-search,#top-cart {
    		z-index : 11px;
    		float : right;
    		position: relative;
    	}
    </style>
</head>
<body class="wrap-contentsbox">
<form id="application_form" name="application_form"  >
    <jsp:include page="../layout/headerInc.jsp" flush="false"></jsp:include>
    
    <div id="first-slider">
	    <div id="carousel-example-generic" class="carousel slide carousel-fade">
	        <!-- Indicators -->
	        <ol class="carousel-indicators">
	            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
	            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
	            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
	            <li data-target="#carousel-example-generic" data-slide-to="3"></li>
	        </ol>
	        <!-- Wrapper for slides -->
	        <div class="carousel-inner" role="listbox">
	            <!-- Item 1 -->
	            <div class="item active slide1">
	                <div class="row"><div class="container">
	                    <div class="col-md-3 text-right">
	                        <img style="max-width: 200px;"  data-animation="animated zoomInLeft" src="http://s20.postimg.org/pfmmo6qj1/window_domain.png">
	                    </div>
	                    <div class="col-md-9 text-left">
	                        <h3 data-animation="animated bounceInDown">Shipbuilding Outsourcing Services Company</h3>
	                        <h4 data-animation="animated bounceInUp">Easily use stunning effects</h4>             
	                     </div>
	                </div></div>
	             </div> 
	            <!-- Item 2 -->
	            <div class="item slide2">
	                <div class="row"><div class="container">
	                    <div class="col-md-7 text-left">
	                        <h3 data-animation="animated bounceInDown"> 50 animation options A beautiful</h3>
	                        <h4 data-animation="animated bounceInUp">Create beautiful slideshows </h4>
	                     </div>
	                    <div class="col-md-5 text-right">
	                        <img style="max-width: 200px;"  data-animation="animated zoomInLeft" src="http://s20.postimg.org/sp11uneml/rack_server_unlock.png">
	                    </div>
	                </div></div>
	            </div>
	            <!-- Item 3 -->
	            <div class="item slide3">
	                <div class="row"><div class="container">
	                    <div class="col-md-7 text-left">
	                        <h3 data-animation="animated bounceInDown">Simple Bootstrap Carousel</h3>
	                        <h4 data-animation="animated bounceInUp">Bootstrap Image Carousel Slider with Animate.css</h4>
	                     </div>
	                    <div class="col-md-5 text-right">
	                        <img style="max-width: 200px;"  data-animation="animated zoomInLeft" src="http://s20.postimg.org/eq8xvxeq5/globe_network.png">
	                    </div>     
	                </div></div>
	            </div>
	            <!-- Item 4 -->
	            <div class="item slide4">
	                <div class="row"><div class="container">
	                    <div class="col-md-7 text-left">
	                        <h3 data-animation="animated bounceInDown">We are creative</h3>
	                        <h4 data-animation="animated bounceInUp">Get start your next awesome project</h4>
	                     </div>
	                    <div class="col-md-5 text-right">
	                        <img style="max-width: 200px;"  data-animation="animated zoomInLeft" src="http://s20.postimg.org/9vf8xngel/internet_speed.png">
	                    </div>  
	                </div></div>
	            </div>
	            <!-- End Item 4 -->
	    
	        </div>
	        <!-- End Wrapper for slides-->
	        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
	            <i class="fa fa-angle-left"></i><span class="sr-only">Previous</span>
	        </a>
	        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
	            <i class="fa fa-angle-right"></i><span class="sr-only">Next</span>
	        </a>
	    </div>
	</div>
    
    <!--END NAB BAR SECTION-->
    <!-- <div id="home-sec">
    	
        <div class="">
            <div class="container">
            	
                <div class="col-md-12 pad-top">
	                <div id="amazingslider-1" style="display:block;position:relative;margin:16px auto 56px;">
				        <ul class="amazingslider-slides" style="display:none;">
				            <li><img src="http://uguru-realestate-us-jun202013.businesscatalyst.com/3d-slider/images/Desktop%20wallpapers%2023%20XopoM_com%20(1).jpg" alt="Picture 1" /></li>
				            <li><img src="http://uguru-realestate-us-jun202013.businesscatalyst.com/3d-slider/images/Desktop%20wallpapers%2023%20XopoM_com%20(1).png" alt="Picture 2" /></li>
				            <li><img src="http://uguru-realestate-us-jun202013.businesscatalyst.com/3d-slider/images/Desktop%20wallpapers%2023%20XopoM_com%20(2).jpg" alt="Picture 3" /></li>
				            <li><img src="http://uguru-realestate-us-jun202013.businesscatalyst.com/3d-slider/images/Desktop%20wallpapers%2023%20XopoM_com%20(3).jpg" alt="Picture 4" /></li>
				            <li><img src="http://uguru-realestate-us-jun202013.businesscatalyst.com/3d-slider/images/Desktop%20wallpapers%2023%20XopoM_com%20(4).jpg" alt="Picture 5" /></li>
				            <li><img src="http://uguru-realestate-us-jun202013.businesscatalyst.com/3d-slider/images/Desktop%20wallpapers%2023%20XopoM_com%20(5).jpg" alt="Picture 6" /></li>
				            
				            <li><img src="http://uguru-realestate-us-jun202013.businesscatalyst.com/3d-slider/images/Desktop%20wallpapers%2023%20XopoM_com%20(7).jpg" alt="Picture 8" /></li>
				            <li><img src="http://uguru-realestate-us-jun202013.businesscatalyst.com/3d-slider/images/Desktop%20wallpapers%2023%20XopoM_com%20(8).jpg" alt="Picture 9" /></li>
				        </ul>
				    </div>
				</div>
            </div>
        </div>

    </div> -->
    <!--END HOME SECTION-->
    <section id="features-sec">
        <div class="container">
            <div class="row text-center min-set">
                <div class="col-md-12">
                    <h2><mark class="head-glow">Awesome </mark>Features </h2>
                    <hr class="sub-hr" />
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 text-center">
                    <img src="/assets/img/1.png" class="img-set" />
                    <h3>Dolor sit ametn</h3>
                    <hr />
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                 Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    </p>
                </div>
                <div class="col-md-4 text-center">
                    <img src="/assets/img/bulb-yellow.png" class="main-img" />

                </div>
                <div class="col-md-4 text-center" style="padding-top: 10px;">
                    <img src="/assets/img/2.png" class="img-set" />
                    <h3>Lorem ipsum dolo</h3>
                    <hr />
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                 Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    </p>
                </div>
            </div>

        </div>
    </section>
    <!--END FEATURES SECTION-->
    <section id="skill-sec">
        <div class="overlay">
            <div class="container">
                <div class="row ">
                    <div class="col-lg-3 col-md-3 col-sm-3 text-center ">
                        <i class="fa fa-bullseye fa-5x"></i>
                        <h4>New Technology</h4>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-3 text-center ">
                        <i class="fa fa-dollar fa-5x"></i>
                        <h4>Reduced Cost</h4>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-3 text-center ">
                        <i class="fa fa-comments-o fa-5x"></i>
                        <h4>Dedecated Support  </h4>
                    </div>

                    <div class="col-lg-3 col-md-3 col-sm-3 text-center">
                        <i class="fa fa-user fa-5x"></i>
                        <h4>Awesome Skill </h4>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <!--END SKILL SECTION-->
    <section id="advance-sec">
        <div class="container">
            <div class="row text-center min-set">
                <div class="col-md-12">
                    <h2><mark class="head-glow">Advance </mark>Options </h2>
                    <hr class="sub-hr" />
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 text-center">
                    <img src="/assets/img/4.png" class="img-set" />
                    <h3>Dolor sit ametn</h3>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                 Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    </p>
                </div>
                <div class="col-md-4 text-center">
                    <img src="/assets/img/5.png" class="img-set" />
                    <h3>Dolor sit ametn</h3>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                 Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    </p>
                </div>
                <div class="col-md-4 text-center">
                    <img src="/assets/img/3.png" class="img-set" />
                    <h3>Dolor sit ametn</h3>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                 Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    </p>
                </div>
            </div>

        </div>
    </section>
    <!--END ADVANCE SECTION-->
    <div id="just-sec" style="">
        <div class="overlay">
            + YOUR HEADLINE GOES HERE +
        </div>

    </div>
    <!--END JUST SECTION-->
    <section id="gallery-sec">


        <div class="container ">
            <div class="row text-center min-set">
                <div class="col-md-12">
                    <h2><mark class="head-glow">Gallery </mark>Section </h2>
                    <hr class="sub-hr" />
                </div>
            </div>
            <div id="port-folio">
                <div class="row ">
                    <ul id="filters">
                        <li><span class="filter active" data-filter="HTML BOOTSTRAP WORDPRESS">All </span></li>
                        <li><span class="filter">/</span></li>
                        <li><span class="filter" data-filter="HTML">HTML</span></li>
                        <li><span class="filter">/</span></li>
                        <li><span class="filter" data-filter="BOOTSTRAP">BOOTSTRAP</span></li>
                        <li><span class="filter">/</span></li>
                        <li><span class="filter" data-filter="WORDPRESS">WORDPRESS</span></li>
                    </ul>
                    <div class="col-md-4 col-sm-4">

                        <div class="portfolio-item BOOTSTRAP mix_all" data-cat="BOOTSTRAP">


                            <a class="preview" href="assets/img/portfolio/11.jpg">

                                <img src="/assets/img/portfolio/11.jpg" class="img-responsive " alt="" />
                            </a>

                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">

                        <div class="portfolio-item HTML mix_all" data-cat="HTML">


                            <a class="preview" href="assets/img/portfolio/22.jpg">

                                <img src="/assets/img/portfolio/22.jpg" class="img-responsive " alt="" />
                            </a>

                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">

                        <div class="portfolio-item WORDPRESS mix_all" data-cat="WORDPRESS">


                            <a class="preview" href="assets/img/portfolio/33.jpg">

                                <img src="/assets/img/portfolio/33.jpg" class="img-responsive " alt="" />
                            </a>

                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">

                        <div class="portfolio-item BOOTSTRAP mix_all" data-cat="BOOTSTRAP">

                            <a class="preview" href="assets/img/portfolio/44.jpg">

                                <img src="/assets/img/portfolio/44.jpg" class="img-responsive " alt="" />
                            </a>

                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">

                        <div class="portfolio-item HTML mix_all" data-cat="HTML">


                            <a class="preview" href="assets/img/portfolio/55.jpg">

                                <img src="/assets/img/portfolio/55.jpg" class="img-responsive " alt="" />
                            </a>

                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">

                        <div class="portfolio-item HTML mix_all" data-cat="HTML">

                            <a class="preview" href="assets/img/portfolio/66.jpg">

                                <img src="/assets/img/portfolio/66.jpg" class="img-responsive " alt="" />
                            </a>
                        </div>

                    </div>
                </div>


            </div>
        </div>
    </section>
    <!-- END GALLERY  SECTION -->
	<jsp:include page="../layout/footerInc.jsp" flush="false"></jsp:include>
    </form>
    
    <jsp:include page="../layout/footerStyle.jsp" flush="false"></jsp:include>
    
	<script type="text/javascript">
		
	    $(document).ready(function () {
	    	
	    	$('ul.nav li.dropdown').hover(function() {
    		  $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(800);
    		}, function() {
    		  $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(800);
    		});
	    	
	    	$("#btnSearch").click(function() {
	    		form = $('#application_form');
	    		form.attr("action", "search.do");
				form.attr("target", "_self");	
				form.attr("method", "post");	
				form.submit();
	    	});
	    	
	    });
	    
    </script>
</body>
</html>
