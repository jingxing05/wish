<%@ page import="wish.Wish"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'wish.label', default: 'Wish')}" />
<title>
	${session.newlyweds}大婚祝福
</title>
</head>
<body>
	<div class="container-fluid">
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<div class="row-fluid">
			<!--Sidebar content-->
			<div class="span3">
				<div class="alert alert-error ">
					<a href="#"> <img alt="${session.newlyweds}"
						class='img-polaroid'
						src="${resource(dir: 'images', file: '3.jpg')}">
					</a>
					<address>
					<strong>时间:&nbsp;
						<g:longDate format='yyyy-MM-dd'>
							${session.newlyweds.weddingtime}
						</g:longDate>
					</strong><br>
					<b>地址:&nbsp;${session.newlyweds.address}</b><br>
					<b>更多:&nbsp;${session.newlyweds.memo}</b>
					</address>
				</div>
			</div>
			<div class="span9" id='wishespanel'>
				<div class="row-fluid">
					<g:each status="i" var="wish" in="${wishInstanceList}">
						<div
							class="alert ${ (i % 2) == 0 ? 'alert-error' : 'alert-info' } span3">
							<p>
								<strong> ${wish.fromwho}
								</strong>&nbsp;祝&nbsp;
								${wish.toname}
							</p>
							<h3>
								${wish.wish}
							</h3>
							<p>
								<g:longDate format='yy-MM-dd hh:mm'>
									${wish.dateCreated}
								</g:longDate>
								&nbsp;第&nbsp;
								${wish.id}
								&nbsp;位
							</p>
						</div>
					</g:each>
				</div>
			</div>
		</div>
	</div>
	<%--	<script src="${resource(dir: 'js', file: 'jquery.masonry.min.js')}"></script>--%>
	<%--	<script type="text/javascript">--%>
	<%--		$(function() {--%>
<%----%>
<%--			$('#wishespanel').masonry({--%>
<%--				itemSelector : '.span3',--%>
<%--				columnWidth: function( containerWidth ) {--%>
<%--				    return containerWidth / 5;--%>
<%--				  }--%>
<%--				isAnimated : true--%>
<%--			});--%>
<%----%>
<%--		});--%>
	<%--	</script>--%>
</body>
</html>
