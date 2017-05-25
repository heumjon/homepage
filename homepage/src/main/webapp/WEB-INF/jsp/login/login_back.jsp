<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>

<head>
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <title>AdminDesigns - A Responsive HTML5 Admin UI Framework</title>
    <meta name="keywords" content="HTML5 Bootstrap 3 Admin Template UI Theme" />
    <meta name="description" content="AdminDesigns - A Responsive HTML5 Admin UI Framework">
    <meta name="author" content="AdminDesigns">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Font CSS (Via CDN) -->
    <link rel='stylesheet' type='text/css' href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700'>

    <!-- Theme CSS -->
    <link rel="stylesheet" type="text/css" href="/css/theme.css">

    <!-- Admin Forms CSS -->
    <link rel="stylesheet" type="text/css" href="/css/admin-forms.css">

    <!-- Favicon -->
    <link rel="shortcut icon" href="assets/img/favicon.ico">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>

<body class="external-page sb-l-c sb-r-c" onload="fn_init();">

    <!-- Start: Main -->
    <div id="main" class="animated fadeIn">

        <!-- Start: Content-Wrapper -->
        <section id="content_wrapper">

            <!-- begin canvas animation bg -->
            <div id="canvas-wrapper">
                <canvas id="demo-canvas"></canvas>
            </div>

            <!-- Begin: Content -->
            <section id="content">

                <div class="admin-form theme-info" id="login1">
					
                    <div class="row mb15 table-layout">

                        <div class="col-xs-6 va-m pln">
                            <a href="#" title="Return to Dashboard">
                                <img src="/img/logos/logo_white.png" title="AdminDesigns Logo" class="img-responsive w250">
                            </a>
                        </div>

                        <div class="col-xs-6 text-right va-b pr5">
                            <div class="login-links">
                                <a href="/login/login.do" class="active" title="Sign In">로그인</a>
                                <span class="text-white"> | </span>
                                <a href="/login/loginRegiste.do" class="" title="Register">회원가입</a>
                            </div>

                        </div>

                    </div>

                    <div class="panel panel-info mt10 br-n">

                        <div class="panel-heading heading-border bg-white">
                            <!-- <span class="panel-title hidden">
                                <i class="fa fa-sign-in"></i>Register</span>
                            <div class="section row mn">
                                <div class="col-sm-4">
                                    <a href="#" class="button btn-social facebook span-left mr5 btn-block">
                                        <span>
                                            <i class="fa fa-facebook"></i>
                                        </span>Facebook</a>
                                </div>
                                <div class="col-sm-4">
                                    <a href="#" class="button btn-social twitter span-left mr5 btn-block">
                                        <span>
                                            <i class="fa fa-twitter"></i>
                                        </span>Twitter</a>
                                </div>
                                <div class="col-sm-4">
                                    <a href="#" class="button btn-social googleplus span-left btn-block">
                                        <span>
                                            <i class="fa fa-google-plus"></i>
                                        </span>Google+</a>
                                </div>
                            </div> -->
                        </div>

                        <!-- end .form-header section -->
                        <form id="login_form" name="login_form" method="post" action="loginCheck.do" onsubmit="return fsubmit(this);" autocomplete=off>
                            <div class="panel-body bg-light p30">
                                <div class="row">
                                    <div class="col-sm-7 pr30">

                                        <div class="section row hidden">
                                            <div class="col-md-4">
                                                <a href="#" class="button btn-social facebook span-left mr5 btn-block">
                                                    <span>
                                                        <i class="fa fa-facebook"></i>
                                                    </span>Facebook</a>
                                            </div>
                                            <div class="col-md-4">
                                                <a href="#" class="button btn-social twitter span-left mr5 btn-block">
                                                    <span>
                                                        <i class="fa fa-twitter"></i>
                                                    </span>Twitter</a>
                                            </div>
                                            <div class="col-md-4">
                                                <a href="#" class="button btn-social googleplus span-left btn-block">
                                                    <span>
                                                        <i class="fa fa-google-plus"></i>
                                                    </span>Google+</a>
                                            </div>
                                        </div>

                                        <div class="section">
                                            <label for="username" class="field-label text-muted fs18 mb10">로그인 계정</label>
                                            <input type="text" name="user_id" id="user_id" class="gui-input" placeholder="Enter username">
                                            <!-- <label for="username" class="field prepend-icon">
                                                <label for="username" class="field-icon">
                                                    <i class="fa fa-user"></i>
                                                </label>
                                            </label> -->
                                        </div>
                                        <!-- end section -->

                                        <div class="section">
                                            <label for="username" class="field-label text-muted fs18 mb10">비밀번호</label>
                                            <!-- <label for="password" class="field prepend-icon"> -->
                                                <input type="password" name="password" id="password" class="gui-input" placeholder="Enter password">
                                                <!-- <label for="password" class="field-icon">
                                                    <i class="fa fa-lock"></i>
                                                </label> -->
                                            <!-- </label> -->
                                        </div>
                                        <!-- end section -->

                                    </div>
                                    <div class="col-sm-5 br-l br-grey pl30">
                                        <h3 class="mb25"> 로그인 권한 : </h3>
                                        <p class="mb15">
                                            <span class="fa fa-check text-success pr5"></span> 무제한 이메일 스토리지</p>
                                        <p class="mb15">
                                            <span class="fa fa-check text-success pr5"></span> 무제한 사진 촬영</p>
                                        <p class="mb15">
                                            <span class="fa fa-check text-success pr5"></span> 무제한 다운로드</p>
                                        <p class="mb15">
                                            <span class="fa fa-check text-success pr5"></span> 무제한 서비스 제공 업체</p>
                                    </div>
                                </div>
                            </div>
                            <!-- end .form-body section -->
                            <div class="panel-footer clearfix p10 ph15">
                                <button type="button" id="loginBtn" class="button btn-primary mr10 pull-right">로그인</button>
                                <label class="switch ib switch-primary pull-left input-align mt10">
                                    <input type="checkbox" name="remember" id="remember" checked>
                                    <label for="remember" data-on="YES" data-off="NO"></label>
                                    <span>기억하시겠습니까?</span>
                                </label>
                            </div>
                            <!-- end .form-footer section -->
                        </form>
                    </div>
                </div>

            </section>
            <!-- End: Content -->

        </section>
        <!-- End: Content-Wrapper -->

    </div>
    <!-- End: Main -->

    <!-- BEGIN: PAGE SCRIPTS -->

    <!-- jQuery -->
    <script src="/js/jquery-3.1.1.min.js"></script>
    <script src="/js/jquery-migrate-3.0.0.min.js"></script>
    <script src="/js/jquery-ui.min.js"></script>

    <!-- CanvasBG Plugin(creates mousehover effect) -->
    <script src="/js/canvasbg.js"></script>

    <!-- Theme Javascript -->
    <script src="/js/utility.js"></script>
    <script src="/js/demo.js"></script>
    <script src="/js/main.js"></script>

    <!-- Page Javascript -->
    <script type="text/javascript">
    jQuery(document).ready(function() {

        "use strict";

        // Init Theme Core      
        Core.init();

        // Init Demo JS
        Demo.init();

        // Init CanvasBG and pass target starting location
        CanvasBG.init({
            Loc: {
                x: window.innerWidth / 2,
                y: window.innerHeight / 3.3
            },
        });
        
      	//key evant 
		$("#user_id").keypress(function(event) {
		  if (event.which == 13) {
			  if(fsubmit(login_form)) login_form.submit();
		    }
		});
      	
      	$("#loginBtn").click(function() {
      		if(fsubmit(login_form)) login_form.submit();
      	});

    });
    
    function fsubmit(frm) {
		if (frm.user_id.value == "") {
			alert("아이디를 입력하세요.");
			frm.user_id.focus();
			return false;
		}
		if (frm.password.value == "") {
			alert("비밀번호를 입력하세요.");
			frm.password.focus();
			return false;
		}
		return true;
	}
    
    function fn_init() {
		var errMsg = "${errMessage}";
		if (errMsg != null && errMsg != "") {
			alert(errMsg);
			document.login_form.adminid.focus();
			return;
		}
	}

    </script>

    <!-- END: PAGE SCRIPTS -->

</body>

</html>
