<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<!-- 상단 -->
<script type="text/javascript">
	function goPost(crsfname, crsfvalue) {
		let f = document.createElement('form');
		let obj;
		obj = document.createElement('input');
		obj.setAttribute('type', 'hidden');
		obj.setAttribute('name', crsfname);
		obj.setAttribute('value', crsfvalue);

		f.appendChild(obj);
		f.setAttribute('method', 'post');
		f.setAttribute('action', '/security/logout');
		document.body.appendChild(f);
		f.submit();
	}
</script>
<script src="${pageContext.request.contextPath }/resources/js/security.js"></script>


<div id="sub_hd" class="">
	<div class="header">
		<div class="gnb">
			<div class="inner">
				<h1>
					<a href="/"><img src="https://www.rexremall.com/_skin/skbioland_200731/img/logo/logo_rexre.png" alt="클린 &amp; 비건 뷰티 브랜드 리바이리 " /></a>
				</h1>
				<div class="lnb">
					<span class="all" onclick="toggle_view('all_cate', this);">all</span>
					<ul class="category">
						<li><a href="${contextPath}/product/productNewBest?pageNum=1&amount=9">NEW&amp;BEST</a></li>
						<li class="viewsub product"><a href="${contextPath}/product/productList?pageNum=1&amount=9">PRODUCT</a>
							<div class="list">
								<ul class="mid_depth">
									<li><a href="${contextPath}/product/productCategory?productCategory=마스크팩&pageNum=1&amount=9">마스크팩</a></li>
									<li><a href="${contextPath}/product/productCategory?productCategory=스킨케어&pageNum=1&amount=9">스킨케어</a></li>
								</ul>
							</div></li>
						<li class="viewsub event"><a href="/board/?db=gallery_1&amp;cate=17">EVENT</a>
							<ul class="list">
								<li><a href="/board/?db=gallery_1&amp;cate=17">진행중 이벤트</a></li>
								<li><a href="/board/?db=gallery_1&amp;cate=18">종료된 이벤트</a></li>
								<li><a href="/board/?db=basic_3">당첨자발표</a></li>
							</ul></li>
						<li class="viewsub community"><a href="${contextPath}/board/list">COMMUNITY</a> <!-- <ul class="list">
                                 <li><a href="/board/?db=basic_4">공지사항</a></li>
                                 <li><a href="/board/?db=gallery_2">미디어</a></li>
                                 <li><a href="/content/content.php?cont=benefit">회원혜택</a></li>
                                 <li><a href="/board/?db=basic_2">쇼핑FAQ</a></li>
                                 <li><a href="/mypage/counsel_list.php">1:1문의</a></li>
                              </ul> --></li>
						<li class="viewsub brand"><a href="/content/content.php?cont=brand_n">BRAND</a>
							<ul class="list">
								<li><a href="/content/content.php?cont=brand_n">Brand Story</a></li>
								<li><a href="/content/content.php?cont=bi">BI</a></li>
							</ul></li>
					</ul>
				</div>
				<ul class="menu">
					<!-- gnb 로그인 메뉴부분에 사용됩니다. 삭제시 문제가 발생할 수 있습니다. -->
					<sec:authorize access="isAnonymous()">
						<li class="txt"><a href="/security/login">LOGIN</a></li>
						<li class="txt"><a href="/security/join">JOIN</a></li>
					</sec:authorize>
					<sec:authorize access="isAuthenticated()">
						<li class="txt first"><a href="/mypage/mypage.php"><sec:authentication property="principal.member.userName" />님</a></li>
						<li class="txt"><a href="javascript:goPost('${_csrf.parameterName}','${_csrf.token }')">LOGOUT</a></li>
						<!-- //gnb 로그인 메뉴부분에 사용됩니다. 삭제시 문제가 발생할 수 있습니다. -->
						<li class="viewsub"><a href="/security/mypage">MYPAGE</a>

						<li><a href="/shop/cart" class="cart">장바구니 <span class="ea_cart front_cart_rows quick_cart_cnt"> </span><span class="balloon">장바구니</span>
						</a></li>
					</sec:authorize>
					<!-- //gnb 로그인 메뉴부분에 사용됩니다. 삭제시 문제가 발생할 수 있습니다. -->
					<li><a href="#" onclick="toggle_view('box_search',this)" class="search">검색 <span class="balloon">통합검색</span></a></li>
				</ul>
			</div>
			<div id="all_cate" class="all_cate">
				<div class="inner">
					<dl class="product">
						<dt>
							<a href="/shop/big_section.php?cno1=1012">PRODUCT</a>
						</dt>
						<dd>
							<ul class="mid_depth">
								<li><a href="https://www.rexremall.com/shop/big_section.php?cno1=1020">마스크팩</a></li>
								<li><a href="https://www.rexremall.com/shop/big_section.php?cno1=1021">스킨케어</a></li>
							</ul>
						</dd>
					</dl>
					<dl class="event">
						<dt>
							<a href="/board/?db=gallery_1&amp;cate=17">EVENT</a>
						</dt>
						<dd>
							<a href="/board/?db=gallery_1&amp;cate=17">진행중인 이벤트</a>
						</dd>
						<dd>
							<a href="/board/?db=gallery_1&amp;cate=18">종료된 이벤트</a>
						</dd>
						<dd>
							<a href="/board/?db=basic_3">당첨자발표</a>
						</dd>
					</dl>
					<dl class="community">
						<dt>
							<a href="${contextPath}/board/list">COMMUNITY</a>
						</dt>
						<!--   <dd>
                              <a href="/board/?db=basic_4">공지사항</a>
                           </dd>
                           <dd>
                              <a href="/board/?db=gallery_2">미디어</a>
                           </dd>
                           <dd><a href="/content/content.php?cont=benefit">회원혜택</a></dd>
                           <dd>
                              <a href="/board/?db=basic_2">쇼핑FAQ</a>
                           </dd>
                           <dd>
                              <a href="/mypage/counsel_list.php">1:1문의</a>
                           </dd> -->
					</dl>
					<dl class="brand">
						<dt>
							<a href="/content/content.php?cont=brand_n">BRAND</a>
						</dt>
						<dd>
							<a href="/content/content.php?cont=brand_n">브랜드 스토리</a>
						</dd>
						<dd>
							<a href="/content/content.php?cont=bi">BI</a>
						</dd>
					</dl>
					<div class="banner"></div>
				</div>
			</div>
			<div id="box_search" class="box_search">
				<span class="close" onclick="toggle_view('box_search');"></span>
				<!-- 검색 -->
				<form method="get" id="seachForm" action="/product/productSearch">
					<div class="box">
						<input type="text" name="searchWord" value="" class="form_input block basic_search" placeholder="검색어 입력" />
						<input type="image" src="https://www.rexremall.com/_skin/skbioland_200731/img/button/hd_search2.png" alt="검색" class="btn" />
					</div>
				</form>

				<!-- 검색끝 -->
				
			</div>
		</div>
	</div>
	<div class="header hyaluron">
		<div class="gnb">
			<div class="inner">
				<h1>
					<a href="/content/content.php?cont=hyaluronaz"><img src="https://www.rexremall.com/_skin/skbioland_200731/img/logo/logo_hyaluronaz.png" alt="클린 &amp; 비건 뷰티 브랜드 리바이리 " /></a>
				</h1>
				<div class="lnb">
					<ul id="az_menu" class="category">
						<li data-menuanchor="buy"><a href="/content/content.php?cont=hyaluronaz#buy">PRODUCT</a></li>
						<li data-menuanchor="brand"><a href="/content/content.php?cont=hyaluronaz#brand">BRAND</a></li>
						<li class="viewsub event"><a href="/board/?db=gallery_1&amp;cate=17">EVENT</a>
							<ul class="list">
								<li><a href="/board/?db=gallery_1&amp;cate=17">진행중인 이벤트</a></li>
								<li><a href="/board/?db=gallery_1&amp;cate=18">종료된 이벤트</a></li>
								<li><a href="/board/?db=basic_3">당첨자발표</a></li>
							</ul></li>
						<li class="viewsub community"><a href="/board/?db=basic_4">COMMUNITY</a>
							<ul class="list">
								<li><a href="/board/?db=basic_4">공지사항</a></li>
								<li><a href="/board/?db=gallery_2">미디어</a></li>
								<!--<li><a href="/content/content.php?cont=benefit">회원혜택</a></li>-->
								<li><a href="/board/?db=basic_2">쇼핑FAQ</a></li>
								<li><a href="/mypage/counsel_list.php">1:1문의</a></li>
							</ul></li>
					</ul>
				</div>
				<ul class="menu">
					<!-- gnb 로그인 메뉴부분에 사용됩니다. 삭제시 문제가 발생할 수 있습니다. -->
					<li class="txt first"><a href="/mypage/mypage.php">박성환님(Silver회원)</a></li>
					<li class="txt"><a href="https://www.rexremall.com/main/exec.php?exec_file=member/logout.exe.php">LOGOUT</a></li>
					<!-- //gnb 로그인 메뉴부분에 사용됩니다. 삭제시 문제가 발생할 수 있습니다. -->
					<li class="viewsub"><a href="/mypage/mypage.php">MYPAGE</a>
						<ul class="list">
							<li><a href="/shop/orederlist">주문 조회</a></li>
							<li><a href="/mypage/coupon_down_list.php">쿠폰현황</a></li>
							<li><a href="/mypage/wish_list.php">위시리스트</a></li>
							<li><a href="/member/edit_step1.php">정보수정</a></li>
							<li><a href="/shop/product_review_list.php">상품후기</a></li>
							<li><a href="/mypage/counsel_list.php">1:1문의</a></li>
							<li><a href="/board/?db=basic_2">쇼핑 FAQ</a></li>
						</ul></li>
					<li><a href="/shop/cart" class="cart">장바구니 <span class="ea_cart front_cart_rows quick_cart_cnt"> </span><span class="balloon">장바구니</span>
					</a></li>
					<li><a href="#" onclick="toggle_view('box_search2',this)" class="search">검색 <span class="balloon">통합검색</span></a></li>
				</ul>
			</div>
			<div id="box_search2" class="box_search">
				<span class="close" onclick="toggle_view('box_search2');"></span>
				<form method="get" action="https://www.rexremall.com/shop/search_result.php">
					<div class="box">
						<input type="text" name="search_str" value="" class="form_input block basic_search" placeholder="검색어 입력" />
						<input type="image" src="https://www.rexremall.com/_skin/skbioland_200731/img/button/hd_search2.png" alt="검색" class="btn" />
					</div>
				</form>
				<div class="hot_keyword">
					<h5>인기검색어</h5>
					<ul class="list">
						<li><a href="/shop/search_result.php?search_str=마스크팩"># 마스크팩</a></li>
						<li><a href="/shop/search_result.php?search_str=바이오파밍"># 바이오파밍</a></li>
						<li><a href="/shop/search_result.php?search_str=히알루론"># 히알루론</a></li>
						<li><a href="/shop/search_result.php?search_str=앰플"># 앰플</a></li>
						<li><a href="/shop/search_result.php?search_str=미네랄앰플"># 미네랄앰플</a></li>
						<li><a href="/shop/search_result.php?search_str=주름개선"># 주름개선</a></li>
						<li><a href="/shop/search_result.php?search_str=세라마이드"># 세라마이드</a></li>
						<li><a href="/shop/search_result.php?search_str=펩타이드"># 펩타이드</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //상단 -->