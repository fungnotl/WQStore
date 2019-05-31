<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>

	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>商品详情</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" type="text/css" />
		<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/js/bootstrap.min.js" type="text/javascript"></script>
		<!-- 引入自定义css文件 style.css -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css" />

		<style>
			body {
				margin-top: 20px;
				margin: 0 auto;
			}
			
			.carousel-inner .item img {
				width: 100%;
				height: 300px;
			}
		</style>
	</head>

	<body>

		
		<%@include file="header.jsp" %>


		<div class="container">
			<div class="row">
				<div style="border: 1px solid #e4e4e4;width:930px;margin-bottom:10px;margin:0 auto;padding:10px;margin-bottom:10px;">
					<a href="${pageContext.request.contextPath }/index">首页&nbsp;&nbsp;&gt;</a>
					<%--手机数码/电脑办公... --%>
					<a href="${pageContext.request.contextPath }/product?currpage=1&cid=${category.cid}">${category.cname }&nbsp;&nbsp;&gt;</a>
					
				</div>

				<div style="margin:0 auto;width:950px;">
					<div class="col-md-6">
						<img style="opacity: 1;width:400px;height:350px;" title="" class="medium" src="${pageContext.request.contextPath}/${product.pimage}">
					</div>

					<div class="col-md-6">
						<%-- 商品名字 --%>
						<div><strong>${product.pname }</strong></div>
						<div style="border-bottom: 1px dotted #dddddd;width:350px;margin:10px 0 10px 0;">
							<%-- 商品id --%>
							<div>${product.pid }</div>
						</div>
														<%--shop_price --%>                                            <%--market_price --%>
						<div style="margin:10px 0 10px 0;">亿家价: <strong style="color:#ef0101;">￥：${product.shop_price }元/份</strong> 参 考 价： <del>￥${product.market_price }元/份</del>
						</div>

						<div style="margin:10px 0 10px 0;">促销: <a target="_blank" title="限时抢购 (2014-07-30 ~ 2015-01-01)" style="background-color: #f07373;">限时抢购</a> </div>

						<div style="padding:10px;border:1px solid #e7dbb1;width:330px;margin:15px 0 10px 0;;background-color: #fffee6;">
							<form method="post" action="${pageContext.request.contextPath }/cart?pid=${product.pid}&method=add">
								<div style="border-bottom: 1px solid #faeac7;margin-top:20px;padding-left: 10px;">购买数量:
									<input id="quantity" name="count" value="1" maxlength="4" size="10" type="text"> 
								</div>
	
								<div style="margin:20px 0 10px 0;;text-align: center;">
									<a href="cart.htm">
										<input style="background: url('${pageContext.request.contextPath}/./images/product.gif') no-repeat scroll 0 -600px rgba(0, 0, 0, 0);height:36px;width:127px;" value="加入购物车" type="submit">
									</a>
								</div>
							</form>
							
						</div>
					</div>
				</div>
				<div class="clear"></div>
				<div style="width:950px;margin:0 auto;">
					<div style="background-color:#d3d3d3;width:930px;padding:10px 10px;margin:10px 0 10px 0;">
						<strong>商品介绍</strong>
						<%-- pdesc --%>
						<span>${product.pdesc }</span>
					</div>

			</div>
		</div>

		<%@include file="footer.jsp" %>

	</body>

</html>