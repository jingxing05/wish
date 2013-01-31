<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>${session.newlyweds}大婚祝福</title>
<meta name="description"
	content="${session.newlyweds}大婚祝福墙">
<meta name="keywords"
	content="${session.newlyweds},祝福墙">
<meta name="author" content="庆峰">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon"
	href="${resource(dir: 'images', file: 'favicon.ico')}"
	type="image/x-icon">
<link rel="apple-touch-icon"
	href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
<link rel="apple-touch-icon" sizes="114x114"
	href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">

<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
<r:require modules="bootstrap" />
<link rel="stylesheet" href="${resource(dir: 'css', file: 'wish.css')}" type="text/css">
<g:layoutHead />
<r:layoutResources />
</head>
<body>

	<g:render template="/layouts/header" />
	<g:layoutBody /> 
	<g:render template="/layouts/footer" /> 
	<g:javascript library="application" />
	<r:layoutResources />
</body>
</html>
