<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>리바이리 (ReXRe)</title>

<link rel="shortcut icon" type="image/x-icon" href="https://www.rexremall.com/favicon.ico" />
<link rel="stylesheet" type="text/css" href="https://www.rexremall.com/_data/wing_skbioland_200731_temp.css" />
<link rel="stylesheet" type="text/css" href="https://www.rexremall.com/wm_engine_SW/_engine/common/jquery/jquery-ui.min.css" />
<link rel="stylesheet" type="text/css" href="https://www.rexremall.com/wm_engine_SW/_engine/common/loading.css??202212281151" />


<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/jquery/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/jquery/jquery-ui-1.11.3.min.js"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/jquery.serializeObject.js"></script>
<script type="text/javascript" src="https://www.rexremall.com/_skin/skbioland_200731/script.js"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/lang/lang_kor.js?00000002"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/common.js?202212281151"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/shop.review.js?202212281151"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/R2Na/R2Na.js"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/smartEditor/js/HuskyEZCreator.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
	f
	var date_picker_default = {
		monthNamesShort : [ "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
				"11", "12", ],
		dayNamesMin : [ _lang_pack.data_week_sun, _lang_pack.data_week_mon,
				_lang_pack.data_week_tue, _lang_pack.data_week_wed,
				_lang_pack.data_week_thu, _lang_pack.data_week_fri,
				_lang_pack.data_week_sat, ],
		weekHeader : "Wk",
		dateFormat : "yy-mm-dd",
		autoSize : false,
		changeYear : true,
		changeMonth : true,
		showButtonPanel : true,
		currentText : _lang_pack.common_info_today + "2022-12-28",
		closeText : _lang_pack.coommon_info_close,
	};

	/* Timer */
	const use_ts_mark_1 = "Y";
	const ts_mark_1 = "일";
	const use_ts_mark_2 = "Y";
	const ts_mark_2 = " :";
	const use_ts_mark_3 = "Y";
	const ts_mark_3 = " :";
	const use_ts_mark_4 = "Y";
	const ts_mark_4 = "";
</script>

<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/sec.js"></script>
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">
	if (!wcs_add)
		var wcs_add = {};
	wcs_add["wa"] = "s_36b65d5f3061";
	if (typeof wcs != "undefined") {
		wcs.inflow("rexremall.com");
	}
</script>

<link rel="canonical" href="https://rexremall.com/" />
</head>



<body>


	<script language="javascript" src="https://xpay.uplus.co.kr/xpay/js/xpay_crossplatform.js" type="text/javascript"></script>
	<form name="pay_cFrm" action="https://www.rexremall.com/main/exec.php" target="hidden1672389533" method="post" style="display: none">
		<input type="hidden" name="exec_file" value="order/pay_cancel.php" />
		<input type="hidden" name="ono" />
		<input type="hidden" name="mode" />
	</form>
	<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/order.js?20211021"></script>
	<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/shop.prdcpn.js?20200630"></script>



	<style type="text/css">
<!--
#skin_shop_order_big_div {
	width: 100%;
}
-->
</style>
	<div id="skin_shop_order_big_div">
		<script src="https://www.rexremall.com/_skin/skbioland_200731/img/../slick.min.js"></script>
		<link rel="stylesheet" type="text/css" href="https://www.rexremall.com/_skin/skbioland_200731/img/../slick.css" />
		<link rel="stylesheet" type="text/css" href="https://www.rexremall.com/_skin/skbioland_200731/img/../animate.css" />
		<i id="crema-login-username" style="display: none">95parksh</i> <i id="crema-login-name" style="display: none">박성환</i>
		<div id="wrapper">

			<!--상단 -->
			<%@ include file="/WEB-INF/views/include/header.jsp"%>
			<!--//상단 -->

			<!-- 중앙 -->
			<div id="cnt">
				<div class="cntbody">

					<h2 class="subtitle">주문서</h2>

					<ul id="order_step" class="order_step">
						<li>
							<p class="number">01</p>
							<p class="txt">장바구니</p>
						</li>
						<li class="active">
							<p class="number">02</p>
							<p class="txt">주문/결제</p>
						</li>
						<li>
							<p class="number">03</p>
							<p class="txt">주문완료</p>
						</li>
					</ul>


					<div id="order">
						<form name="ordFrm" method="post" action="https://www.rexremall.com/main/exec.php" target="hidden1672389533" onsubmit="return checkOrdFrm(this)" style="margin: 0px">
							<input type="hidden" name="mail_send" value="Y" />
							<input type="hidden" name="exec_file" value="order/order.exe.php" />
							<input type="hidden" name="ono" value="" />
							<input type="hidden" name="cart_selected" value="" />
							<input type="hidden" name="currency_decimal" value="0" />
							<input type="hidden" name="sbscr" value="N" />

							<!-- 주문상품정보 -->

							<table class="tbl_col prd">
								<caption class="hidden">주문상품</caption>
								<colgroup>
									<col style="width: 100px" />
									<col />
									<col style="width: 18%" />
									<col style="width: 10%" />
									<col style="width: 10%" />
									<col style="width: 10%" />
									<col style="width: 10%" />
								</colgroup>
								<thead>
									<tr>
										<th scope="col" colspan="2">상품명</th>
										<th scope="col"></th>
										<th scope="col">금액</th>
										<th scope="col">수량</th>
										<th scope="col">총 금액</th>
										<th scope="col"></th>
									</tr>
								</thead>
								<tbody>



									<c:forEach var="cartItem" items="${cartItems}" varStatus="status">
										<tr class="checked" id="itemNum${status.count}">
											<td class="img"><a href="#"><img src="${cartItem.IMAGE_PATH}" width="57" height="70" barder="0" /></a></td>
											<td class="name tal"><a href="#">${cartItem.PRODUCT_NAME}</a></td>
											<td class="tal">
												<div></div>
											</td>
											<td class="prc">
												<p class="orgitemPrice">
													<strong><fmt:formatNumber value="${cartItem.PRODUCT_PRICE}" pattern="#,###" type="number" /></strong>원
												</p>
											</td>
											<td class="qty">${cartItem.CART_QUANTITY}</td>
											<td class="prc itemPrice" id="itemPrice${status.count}"><strong><fmt:formatNumber value="${cartItem.PRODUCT_PRICE * cartItem.CART_QUANTITY}" pattern="#,###" type="number" /></strong>원</td>
											<td class="prc"></td>
										</tr>

									</c:forEach>



								</tbody>
							</table>
							<!-- //주문상품정보 -->
							<div class="ord_info">
								<div class="area_left">


									<h3 class="title">주문자 입력</h3>
									<table class="tbl_order">
										<caption class="hidden">주문자 입력</caption>
										<colgroup>
											<col style="width: 18%" />
											<col />
										</colgroup>
										<tbody>
											<tr>
												<th scope="row"><label for="order_buyer_name">주문하시는 분</label></th>
												<td><input type="text" name="buyer_name" value="<sec:authentication property="principal.member.userName"/>" id="order_buyer_name" class="form_input" isplaceholderinited="true" /></td>
											</tr>
											<tr>
												<th scope="row"><label for="buyer_phone">전화번호</label></th>
												<td><input type="text" name="buyer_phone" id="buyer_phone" value="<sec:authentication property="principal.member.member_phone"/>" class="form_input remove_dash" isplaceholderinited="true" /></td>
											</tr>
											<tr>
												<th scope="row"><label for="buyer_cell">휴대전화번호</label></th>
												<td><input type="text" name="buyer_cell" id="buyer_cell" value="<sec:authentication property="principal.member.member_phone"/>" class="form_input remove_dash" isplaceholderinited="true" /> <input type="checkbox" name="sms" id="sms" value="Y" checked="" /> <label for="sms" class="msg">주문관련 SMS를 수신합니다.</label></td>
											</tr>
											<tr>
												<th scope="row"><label for="order_buyer_email">이메일</label></th>
												<td><input type="text" name="buyer_email" value="<sec:authentication property="principal.member.member_email"/>" id="order_buyer_email" class="form_input mail3" isplaceholderinited="true" /></td>
											</tr>

										</tbody>
									</table>
									<div class="title_delivery">
										<h3 class="title">배송지 정보</h3>

										<label class="msg"><input type="checkbox" name="save_addr" value="Y" /> 현재 배송지 정보를 회원정보로 저장</label>
									</div>
									<table class="tbl_order">
										<caption class="hidden">배송지 정보</caption>
										<colgroup>
											<col style="width: 18%" />
											<col />
										</colgroup>
										<tbody>
											<tr>
												<th scope="row">기존 배송지</th>
												<td><select name="old_addr_sel" onchange="putOldAddressee(this,''); useMilage(document.ordFrm,3);">
														<option value="">:: 새로운주소 입력 ::</option>
														<option selected="" value="<sec:authentication property="principal.member.userName"/>
														<wisamall><wisamall><sec:authentication property="principal.member.member_phone"/>
														<wisamall><sec:authentication property="principal.member.member_postNum"/>
														<wisamall><sec:authentication property="principal.member.member_address1"/>
														<wisamall><sec:authentication property="principal.member.member_address2"/>"><sec:authentication property="principal.member.userName"/> : <sec:authentication property="principal.member.member_address1"/> <sec:authentication property="principal.member.member_address2"/></option>
												</select> <label class="msg"><input type="checkbox" name="copy_info" onclick="copyInfo(this.form)" /> 주문인 정보와 동일</label></td>
											</tr>
											<tr>
												<th scope="row"><label for="order_addressee_name">받으시는 분</label></th>
												<td><input type="text" name="addressee_name" value="" id="order_addressee_name" class="form_input" isplaceholderinited="true" /></td>
											</tr>
											<tr>
												<th scope="row"><label for="addressee_phone">전화번호</label></th>
												<td><input type="text" name="addressee_phone" id="addressee_phone" class="form_input remove_dash" isplaceholderinited="true" /></td>
											</tr>
											<tr>
												<th scope="row"><label for="addressee_cell">휴대전화번호</label></th>
												<td><input type="text" name="addressee_cell" id="addressee_cell" class="form_input remove_dash" isplaceholderinited="true" /></td>
											</tr>
											<tr>
												<th scope="row"><label for="order_addressee_zip">주소</label></th>
												<td class="address">
													<p class="zip">
														<input type="text" name="addressee_zip" value="" id="order_addressee_zip" class="form_input input_zipcode" readonly="" onclick="zipSearch('ordFrm','addressee_zip','addressee_addr1','addressee_addr2')" isplaceholderinited="true" />
														<span class="box_btn white"><a href="javascript:;" onclick="findAddr()"> 우편번호 찾기</a></span>
													</p>
													<p>
														<input type="text" id="addressee_addr1" name="addressee_addr1" value="" class="form_input" readonly="" onclick="zipSearch('ordFrm','addressee_zip','addressee_addr1','addressee_addr2')" isplaceholderinited="true" />
														<input type="text" id="addressee_addr2" name="addressee_addr2" value="" class="form_input" isplaceholderinited="true" />
													</p>
												</td>
											</tr>
											<tr>
												<th scope="row"><label for="order_dlv_memo">배송시요청사항</label></th>
												<td><textarea type="text" name="dlv_memo" value="" id="order_dlv_memo" class="form_input block" isplaceholderinited="true"></textarea></td>
											</tr>
											<!-- ADDINFO_DONE -->
										</tbody>
									</table>
								</div>
								<div class="area_right">
									<div class="inner">
										<div class="box">
											<h3 class="title first">결제 정보</h3>
											<table class="tbl_order2">
												<caption class="hidden">결제 가격정보</caption>
												<colgroup>
													<col style="width: 60%" />
													<col />
												</colgroup>
												<tbody>
													<tr>
														<th scope="row">상품합계 금액</th>
														<td><span class="before_price"> </span> 원</td>
													</tr>
													<tr>
														<th scope="row">배송료</th>
														<td>(+) <span class="delivery_prc2"></span> 원
														</td>
													</tr>
												</tbody>
											</table>
											<table class="tbl_order2 sale">
												<caption class="hidden">결제 할인정보</caption>
												<colgroup>
													<col style="width: 50%" />
													<col />
												</colgroup>
												<tbody>
													<tr class="total order_area_total_sale_prc" style="display: none">
														<th scope="row">할인 금액 합계 <a class="i_info p_cursor" onclick="$('#discount_info').toggle()"></a>
														</th>
														<td>(-) <span class="total_sale_prc">0</span>원
															<div id="discount_info" class="view_info">
																<div class="order_area_event_prc" style="display: none">
																	이벤트 할인금액<br /> <span class="order_saleinfo_event_prc">0</span>원
																</div>
																<div class="order_area_timesale" style="display: none">
																	타임세일금액<br /> <span class="order_saleinfo_timesale">0</span>원
																</div>
																<div class="order_area_member_prc" style="display: none">
																	회원할인금액<br /> <span class="order_saleinfo_member_prc">0</span>원
																</div>
																<div class="order_area_cpn_prc" style="display: none">
																	쿠폰할인금액<br /> <span class="order_saleinfo_cpn_prc">0</span>원
																</div>
																<div class="order_area_prd_prc" style="display: none">
																	상품금액별할인금액<br /> <span class="order_saleinfo_prd_prc">0</span>원
																</div>
																<div class="order_area_prdcpn_prc" style="display: none">
																	상품별쿠폰 할인금액<br /> <span class="order_saleinfo_prdcpn_prc">0</span>원
																</div>
															</div>
														</td>
													</tr>
													<tr class="use_milage_field total_sale" style="display: none">
														<th scope="row">적립금 사용</th>
														<td>(-) <span class="use_milage_prc">0</span>원
														</td>
													</tr>
													<tr class="use_emoney_field total_sale" style="display: none">
														<th scope="row">예치금 사용</th>
														<td>(-) <span class="use_emoney_prc">0</span>원
														</td>
													</tr>
												</tbody>
											</table>
											<table class="tbl_order2">
												<caption class="hidden">결제정보</caption>
												<colgroup>
													<col style="width: 60%" />
													<col />
												</colgroup>
												<tbody>

													<tr>
														<th scope="row">총 결제 금액</th>
														<td><strong><span class="order_info_sale_prc"></span> 원</strong></td>
													</tr>
												</tbody>
											</table>
											<h3 class="title line">결제수단</h3>
											<div class="method">
												<div class="">
													<label class="pay_label"><input type="radio" name="pay_type" id="pay_type1" value="신용카드" checked="" onclick="useMilage(this.form,3)" /> 신용카드</label>
												</div>
												<div class="">
													<label><input type="radio" name="pay_type" id="pay_type5" value="실시간 계좌이체" onclick="useMilage(this.form,3)" /> 실시간 계좌이체</label>
												</div>
												<div class="">
													<label class="pay_label"><input type="radio" name="pay_type" id="pay_type4" value="에스크로 가상계좌" onclick="useMilage(this.form,3)" /> 에스크로 가상계좌</label>
													<div class="msg_pay" style="padding-left: 15px; color: rgb(51, 102, 153); display: none;">- 안전한 거래를 위해 현금결제시 구매안전 서비스를 제공하고 있습니다.</div>
												</div>
												<div class="">
													<label class="pay_label"><input type="radio" name="pay_type" id="pay_type2" value="무통장입금" onclick="useMilage(this.form,3)" /> 무통장입금</label>
													<div class="msg_pay" style="display: none">
														<span id="bank_list_span"><select name="bank">
																<option value="">:: 입금은행 선택::</option>
																<option value="12">기업은행 462-002629-01-017 (주)현대바이오랜드</option>
														</select></span><span class="bank_name">입금자명 : </span>
														<input type="text" name="bank_name" value="" class="input form_input block" size="8" maxlength="30" placeholder="입금자명" :="" />
														<div id="cash_reg" style="padding-left: 15px">
															- <span style="color: #336699">현금영수증 신청 (핸드폰번호/사업자번호/현금영수증카드번호)</span>
															<input name="cash_reg_num" type="text" size="15" maxlength="20" class="input form_input block" onkeyup="press_han(this)" disabled="" isplaceholderinited="true" />
														</div>
													</div>
												</div>
												<input type="hidden" name="order_full_milage" value="0" />
											</div>
											<p class="order_cancel_msg">
												* 주문신청 후 <strong class="point_color">2</strong>일 이내에 입금 확인이 되지 않으면 자동취소 됩니다.
											</p>
											<div id="order1">
												<span class="box_btn huge block"><a href="javascript:orderComplete();">주문하기</a></span>
											</div>
										</div>
										<div id="order2">
											<p class="total_info">
												총 결제 금액 <strong><span class="order_info_sale_prc"></span></strong>원 결제를 합니다.
											</p>
											<p class="msg">'결제하기' 버튼을 누르면 결제창으로 연결됩니다.</p>
											<span class="box_btn w150 large"><input type="submit" value="결제하기" /></span> <span class="box_btn w150 large white"><a href="javascript:confirmOrder(); scroll_page();">취소</a></span>
										</div>
									</div>
								</div>
							</div>


						</form>
						<script type="text/javascript">
							var prdprc_sale = "";
							var prdprc_sale_ptype = "1";
							var prdprc_sale_add = "2";
						</script>
					</div>

				</div>
			</div>
			<!-- //중앙끝 -->

			<!-- 하단 -->
			<%@ include file="/WEB-INF/views/include/footer.jsp"%>
			<!-- //하단끝 -->



			<form class="orderForm" action="/shop/oredercomplete" method="post">

				<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">

				<input type="hidden" name="order_name" id="order_name">
				<input type="hidden" name="ORDER_PHONE" id="ORDER_PHONE">
				<input type="hidden" name="order_postnum" id="order_postnum">
				<input type="hidden" name="order_adress1" id="order_adress1">
				<input type="hidden" name="order_adress2" id="order_adress2">
				<input type="hidden" name="order_ask" id="order_ask">
				<input type="hidden" name="order_payment" id="order_payment">
				<input type="hidden" name="items_price" id="items_price">
				<input type="hidden" name="deliver_price" id="deliver_price">

				<c:forEach var="cartItem" items="${cartItems}" varStatus="status">

					<input type="hidden" name="product_id" value="${cartItem.PRODUCT_ID}">
					<input type="hidden" name="product_Quntity" value="${cartItem.CART_QUANTITY}">

				</c:forEach>

			</form>





		</div>

		<script type="text/javascript">
			// 인기검색어 폰트사이즈 제어
			$(document).ready(function() {
				$(".header").each(function(idx) {
					if ($(this).find(".hot_keyword .list li").length > 8) {
						$(this).find(".hot_keyword .list").addClass("small");
					}
				});
			});

			function orderComplete() {

				console.log($('#order_addressee_name').val());
				console.log($('#addressee_cell').val());
				console.log($('#order_addressee_zip').val());
				console.log($('#addressee_addr1').val());
				console.log($('#addressee_addr2').val());
				console.log($('#order_dlv_memo').val());
				console.log($('input[name="pay_type"]:checked').val());

				$('.orderForm').find('#order_name').val(
						$('#order_addressee_name').val());
				$('.orderForm').find('#ORDER_PHONE').val(
						$('#addressee_cell').val());
				$('.orderForm').find('#order_postnum').val(
						$('#order_addressee_zip').val());
				$('.orderForm').find('#order_adress1').val(
						$('#addressee_addr1').val());
				$('.orderForm').find('#order_adress2').val(
						$('#addressee_addr2').val());
				$('.orderForm').find('#order_ask').val(
						$('#order_dlv_memo').val());
				$('.orderForm').find('#order_payment').val(
						$('input[name="pay_type"]:checked').val());

				$('.orderForm').submit();

			}
		</script>
	</div>
	<script type="text/javascript" defer="defer">
		$(document).ready(function() {

			total_price_calc();

		});

		function intToWon(s) {

			return s.toLocaleString() + '원';
		}

		function wonToInt(s) {
			return parseInt(s.substr(0, s.length - 1).replaceAll(',', ''));
		}

		function total_price_calc() {

			let final_price = 0; // 최종적으로 결제해야하는 가격 
			let deliveryfee = 0; // 배송비
			let og_price = 0;

			var checkArr = new Array();
			var PriceNum = new Array();

			$("td[id^=itemPrice]").each(function(index, item) {

				let origin = wonToInt($("#itemPrice" + (index + 1)).text());

				final_price += parseInt(origin);

				console.log(final_price);

			});

			/* 최종 가격 */

			//배송비
			let delivery = 0;

			if (final_price < 150000) {

				$(".before_price").text(final_price.toLocaleString());

				delivery = 4000;
				final_price += delivery;

				$(".delivery_prc2").text(delivery.toLocaleString());
				$(".order_info_sale_prc").text(final_price.toLocaleString());

				$('.orderForm').find('#items_price').val(delivery);
				$('.orderForm').find('#deliver_price').val(final_price);

			} else {
				$(".before_price").text(final_price.toLocaleString());
				$(".delivery_prc2").text(0);
				$(".order_info_sale_prc").text(final_price.toLocaleString());

				$('.orderForm').find('#items_price').val(final_price);
				$('.orderForm').find('#deliver_price').val(delivery);
			}

			console.log(final_price);

		}

		function findAddr() {
			new daum.Postcode(
					{
						oncomplete : function(data) {

							console.log(data);

							// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
							// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var roadAddr = data.roadAddress; // 도로명 주소 변수
							var jibunAddr = data.jibunAddress; // 지번 주소 변수

							console.log(roadAddr);
							console.log(jibunAddr);
							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById('order_addressee_zip').value = data.zonecode;
							if (roadAddr !== '') {
								document.getElementById("addressee_addr1").value = roadAddr;
							} else if (jibunAddr !== '') {
								document.getElementById("addressee_addr1").value = jibunAddr;
							}
						}
					}).open();
		}
	</script>


	</script>
	<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/auto_scroll.js" defer="defer"></script>
	<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>

	<span itemscope="" itemtype="http://schema.org/Organization">
		<link itemprop="url" href="https://www.rexremall.com" /> <a itemprop="sameAs" href="https://www.facebook.com/officialrexre/"></a> <a itemprop="sameAs" href="https://pf.kakao.com/_xjFMxbT"></a> <a itemprop="sameAs" href="https://www.instagram.com/rexre.official"></a>
	</span>

	<div id="mbris_bounce_section" style="height: 0px; z-index: 100000; visibility: hidden; overflow: hidden">
		<iframe scrolling="no" id="iframe_mbris_bounce_section" style="width: 100%; height: 0px; border: none; opacity: 0"></iframe>
	</div>

</body>

</html>
