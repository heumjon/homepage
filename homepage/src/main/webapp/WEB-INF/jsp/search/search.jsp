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
<title>통합검색</title>
<link rel="stylesheet" type="text/css" href="/css/search/search.css" />
</head>
<body>
	<form name="search" id="search" method="post" onsubmit="return false;">
		<div id="search_top">
			<div class="nuttop">
            <ul>
				<li class="logo"><a href="./index.jsp"><h4>(주) 경민산업</h4></a></li>
				<li class="keyin">
					<input name="query" id="query" type="text" value="<%//=query%>" onKeypress="javascript:pressCheck((event),this);" autocomplete="off"/>
				</li>
				<li class="btn"><a href="#" onClick="javascript:doSearch();" title="검색"><img src="/images/btn_search2.gif" alt="검색" /></a></li>
				<li class="btndsearch"><label><input name="reChk" id="reChk" onClick="checkReSearch();" type="checkbox" /> 결과내재검색</label></li>
            </ul>
			<!-- ARK search suggest -->
			<div id="ark"></div>
           </div>
		</div>
	</form>
	
	<div class="mainwrap">
		<div id="search_leftap">
			<ul class="marginbottom20"> 
				<li class="lefttap lefttapsty<%//= collection.equals("ALL") ? "11" : "2" %> selleft2"><a href="#none" onClick="javascript:doCollection('ALL');">통합검색</a></li>

				<%-- <% for (int i = 0; i < COLLECTIONS.length; i++) {%>
					<li class="lefttap lefttapsty<%=collection.equals(COLLECTIONS[i]) ? "11" : "2" %> selleft2"><a href="#none" onClick="javascript:doCollection('<%//=COLLECTIONS[i]%>');"><%//=wnsearch.getCollectionName(COLLECTIONS[i])%></a></li>
				<% } %> --%>
			</ul>
			<ul class="searchopt">
				<li class="tit"><img src="/images/tit_lineup.gif" alt="정렬" /></li>
				<li class="cont">
					<input name="" type="radio" value="RANK" onclick="doSorting(this.value);" <%//=sort.equals("RANK") ? "checked" : ""%> />정확도순
					<span class="divi1">|</span>
					<input name="" type="radio" value="DATE" onclick="doSorting(this.value);" <%//=sort.equals("DATE") ? "checked" : ""%> />최신순
				</li>
			</ul>
			<ul class="searchopt">
				<li class="tit"><img src="/images/tit_term.gif" alt="기간" /></li>
				<li class="cont2">
					<div class="termsty">
						<ul>
							<li class="divi"><a href="#none" onClick="javascript:setDate('A');"><img id="range1" src="/images/btn_term<%//=range.equals("A") ? "12" : "1"%>.gif" alt="전체" /></a></li>
							<li class="divi"><a href="#none" onClick="javascript:setDate('D');"><img id="range2" src="/images/btn_term<%//=range.equals("D") ? "22" : "2"%>.gif" alt="오늘" /></a></li>
							<li class="divi"><a href="#none" onClick="javascript:setDate('W');"><img id="range3" src="/images/btn_term<%//=range.equals("W") ? "32" : "3"%>.gif" alt="1주" /></a></li>
							<li class="divi"><a href="#none" onClick="javascript:setDate('M');"><img id="range4" src="/images/btn_term<%//=range.equals("M") ? "42" : "4"%>.gif" alt="1달" /></a></li>
							<li class="dindate"><input name="startDate" id="startDate" type="text" value="<%//=startDate %>" readonly="true"/> ~ <input name="endDate" id="endDate" type="text" value="<%//=endDate%>" readonly="true"/></li>
							<li style="width:134px; height:16px;padding:3px 0;float:left; text-align:right;"><a href="#none" onClick="javascript:doRange();"><img src="/images/btn_apply.gif" alt="적용" /></a>
							<input type="hidden" name="range" id="range" value="<%//=range%>">
							</li>
						</ul>
					</div>
				</li>
			</ul>
			<ul class="searchopt">
				<li class="tit"><img src="/images/tit_area.gif" alt="영역" /></li>
				<li class="cont2">
					<div class="areasty">
						<ul>
							<li class="divi2"><a href="#none" onClick="doSearchField('ALL');"><img src="/images/btn_area<%//=searchField.equals("ALL") ? "12" : "11"%>.gif" alt="전체" /></a></li>
							<li class="divi"><a href="#none" onClick="doSearchField('TITLE');"><img src="/images/btn_area<%//=searchField.equals("TITLE") ? "22" : "21"%>.gif" alt="제목" /></a></li>
							<li class="divi"><a href="#none" onClick="doSearchField('CONTENT');"><img src="/images/btn_area<%//=searchField.equals("CONTENT") ? "32" : "31"%>.gif" alt="본문" /></a></li>
							<li class="divi"><a href="#none" onClick="doSearchField('WRITER');"><img src="/images/btn_area<%//=searchField.equals("WRITER") ? "42" : "41"%>.gif" alt="작성자" /></a></li>
							<li class="divi"><a href="#none" onClick="doSearchField('ATTACHCON');"><img src="/images/btn_area<%//=searchField.equals("ATTACHCON") ? "52" : "51"%>.gif" alt="첨부내용" /></a></li>
						</ul>
					</div>
				</li>
			</ul>
		</div>
	
		
		<div id="search_result">
			<%// if (totalCount > 0) { %> 
				<div class="resultall">‘ㅁㅁ’에 대한 검색결과는 <span>총<%//=numberFormat(totalCount)%>건</span>입니다.</div>
				<div id="spell"><script>getSpell('');</script></div>
				
				<!-- 게시판-->
				<%//@ include file="./result/result_bbs.jsp" %>

				<!-- e-러닝-->
				<%//@ include file="./result/result_edu.jsp" %>

				<!-- 지식-->
				<%//@ include file="./result/result_kms.jsp" %>

				<!-- 용어사전-->
				<%//@ include file="./result/result_terms.jsp" %>

				
				<!-- paginate -->
				<%-- <% if (!collection.equals("ALL") && totalCount > TOTALVIEWCOUNT) { %>			
					<div class="paginate"> 
							<%=wnsearch.getPageLinks(startCount , totalCount, 10, 10)%>
					</div>
				<% } %> --%>
				<!-- //paginate -->

			<% //} else { %>
				<div id="spell"><script>getSpell('<%//=suggestQuery%>');</script></div>
				<div class="noresult">
					<p>'<%//=query%>'</p>
				</div>
			<%// } %>
		</div>		
		<!-- right -->
		<div id="search_optional">
			<ul class="popu" id="popword">
			</ul>
			<ul class="mykeyword" id="mykeyword">
			</ul>
		</div>
	</div>	

	<div id="search_footer">
		Copyright ⓒ WISEnut, Inc., All rights Reserved.
	</div>
</div>
</body>
</html>
