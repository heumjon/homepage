<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="navbar navbar-inverse navbar-static-top">
	<!-- <input type="button" value="통합검색" id="btnSearch" name="btnSearch"> -->
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/"><h4>(주) 경민산업</h4></a>
        </div>
        
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                	<a href="#" class="dropdown-toggle" data-toggle="dropdown">회사소개</a>
                	<ul class="dropdown-menu">
			            <li><a href="/test/test.do">개요</a></li>
			            <li role="separator" class="divider"></li>
			            <li><a href="/test/test1.do">연혁</a></li>
			            <li role="separator" class="divider"></li>
			            <li><a href="#">CEO 인사말</a></li>
			            <li role="separator" class="divider"></li>
			            <li><a href="#">조직구성</a></li>
			            <li role="separator" class="divider"></li>
			            <li><a href="#location-sec">찾아오시는길</a></li>
			            <li role="separator" class="divider"></li>
			          </ul>
                </li>
                <li class="dropdown">
                	<a href="#" class="dropdown-toggle" data-toggle="dropdown">사업분야</a>
                	<ul class="dropdown-menu">
			            <li><a href="#">선재산업</a></li>
			            <li role="separator" class="divider"></li>
			            <li><a href="#">자유게시판</a></li>
			            <li role="separator" class="divider"></li>
			            <li><a href="#">사진첩</a></li>
			            <li role="separator" class="divider"></li>
			          </ul>
                </li>
                <li class="dropdown">
                	<a href="#" class="dropdown-toggle" data-toggle="dropdown">제품소개</a>
                	<ul class="dropdown-menu">
			            <li><a href="#">테스트1</a></li>
			            <li role="separator" class="divider"></li>
			            <li><a href="#">테스트2</a></li>
			            <li role="separator" class="divider"></li>
			          </ul>
                </li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">알림마당</a>
					<ul class="dropdown-menu">
			            <li><a href="#">공지사항</a></li>
			            <li role="separator" class="divider"></li>
			            <li><a href="#">자유게시판</a></li>
			            <li role="separator" class="divider"></li>
			            <li><a href="#">사진첩</a></li>
			            <li role="separator" class="divider"></li>
			          </ul>
				</li>
				<li class="dropdown">
			    	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">정보마당</a>
			    	<ul class="dropdown-menu">
			            <li><a href="#">F A Q</a></li>
			            <li role="separator" class="divider"></li>
			            <li ><a href="#">Q & A</a></li>
			            <li role="separator" class="divider"></li>
			            <li><a href="#">설문조사</a></li>
			            <li role="separator" class="divider"></li>
			         </ul>
         		</li>
                <li style="display: none;"><a href="#location-sec">서비스관리</a></li>
				<li style="display: none;"><a href="#location-sec">시스템관리</a></li>
				<li><a href="/login/login.do"><p style="color: orange; font-weight: 400;">로그인</p></a></li>|
				<li style="display: ;" ><a href="#location-sec"><p style="color: orange; font-weight: 400;">회원가입</p></a></li>
            </ul>
        </div>
    </div>
</div>
<button type="button" class="btn_up_layer">위로</button>