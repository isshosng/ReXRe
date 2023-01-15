<!-- /*********************************
 * @function : 마이페이지
 * @author : ILWOO JO
 * @Date : Jan 2. 2023.
 *********************************/ -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>리바이리 (ReXRe)</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- 부트스트랩 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/security.css">
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/security.css">
 --%>
<%--  <script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script> --%>
<script src="${pageContext.request.contextPath }/resources/js/security.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/common.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/member.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="https://www.rexremall.com/favicon.ico">
<link rel="stylesheet" type="text/css" href="https://www.rexremall.com/_data/wing_skbioland_200731_temp.css">
<link rel="stylesheet" type="text/css" href="https://www.rexremall.com/wm_engine_SW/_engine/common/jquery/jquery-ui.min.css">
<link rel="stylesheet" type="text/css" href="https://www.rexremall.com/wm_engine_SW/_engine/common/loading.css??202212301453">
<script async="" defer="" src="https://cdn.megadata.co.kr/dist/prod/enp_tracker_self_hosted.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script async="" defer="" src="https://cdn.megadata.co.kr/dist/prod/enp_mbris.min.js"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/jquery.serializeObject.js"></script>
<script type="text/javascript" src="https://www.rexremall.com/_skin/skbioland_200731/script.js"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/lang/lang_kor.js?00000002"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/shop.review.js?202212301453"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/R2Na/R2Na.js"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/smartEditor/js/HuskyEZCreator.js"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/sec.js"></script>
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
</head>
<body>
	<script src="https://www.rexremall.com/_skin/skbioland_200731/img/../slick.min.js"></script>
	<link rel="stylesheet" type="text/css" href="https://www.rexremall.com/_skin/skbioland_200731/img/../slick.css">
	<link rel="stylesheet" type="text/css" href="https://www.rexremall.com/_skin/skbioland_200731/img/../animate.css">
	<div id="wrapper">
		<%@include file="../include/header.jsp"%>
		<!-- 중앙 -->
		<div id="cnt">
			<div class="cntbody">
				<h2 class="subtitle">마이페이지</h2>
				<div id="mypage_menu">
					<ul>
						<li>
							<dl>
								<dt>주문관리</dt>
								<dd>
									<a href="/mypage/order_list.php">주문/배송조회</a>
								</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt>상품관리</dt>
								<dd>
									<a href="/shop/cart.php">장바구니</a>
								</dd>
								<dd>
									<a href="/shop/click_prd.php">최근 본 상품</a>
								</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt>나의 활동</dt>
								<dd>
									<a href="/mypage/review_list.php">상품후기</a>
								</dd>
								<dd>
									<a href="/mypage/qna_list.php">상품 Q/A</a>
								</dd>
								<dd>
									<a href="/mypage/counsel_list.php">1:1 문의</a>
								</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt>나의 정보</dt>
								<dd>
									<a href="./pwmodi">개인정보 수정</a>
								</dd>
								<dd>
									<a href="./memberout">회원 탈퇴</a>
								</dd>
							</dl>
						</li>
					</ul>
				</div>
				<div id="mypage">
					<div class="my_info">
						<div class="grade">
							<p>
								<span><sec:authentication property="principal.member.userName" /></span> 님
							</p>
						</div>
						<ul class="shopping">
							<li><a href="/mypage/order_list.php">
									<p class="title">주문조회</p>
									<p class="count">
										<strong>${fn:length(orderlist)}</strong> 건
									</p>
							</a></li>
						</ul>
						<ul class="btn">
							<li class="counsel"><a href="/mypage/counsel_list.php">1:1 문의</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //중앙 -->
	<!-- 하단 -->
	<%@include file="../include/footer.jsp"%>
	<!-- //하단 -->
	</div>
	</div>
	<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/auto_scroll.js" defer='defer'></script>
</body>
</html>