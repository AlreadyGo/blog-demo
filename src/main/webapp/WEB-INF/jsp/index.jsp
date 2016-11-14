<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<html>

<head>
	<title>zh's home</title>
	<meta name="description" content="zhouhui's home" />
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Bootstrap -->
	<link href="${ctx}/css/bootstrap.min.css" rel="stylesheet">
	<link href="${ctx}/css/font-awesome.min.css" rel="stylesheet">
	<link href="${ctx}/css/templatemo_style.css" rel="stylesheet">
	<link rel="stylesheet" href="css/style.css">
	<link href="${ctx}/css/circle.css" rel="stylesheet">
	<link rel="stylesheet" href="css/nivo-slider.css">
	<link href='http://fonts.googleapis.com/css?family=Raleway:400,100,600' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="${ctx}/css/froala_editor.css">
	<link rel="stylesheet" href="${ctx}/css/froala_style.css">
	<link rel="stylesheet" href="${ctx}/css/plugins/code_view.css">
	<link rel="stylesheet" href="${ctx}/css/plugins/colors.css">
	<link rel="stylesheet" href="${ctx}/css/plugins/emoticons.css">
	<link rel="stylesheet" href="${ctx}/css/plugins/image_manager.css">
	<link rel="stylesheet" href="${ctx}/css/plugins/image.css">
	<link rel="stylesheet" href="${ctx}/css/plugins/line_breaker.css">
	<link rel="stylesheet" href="${ctx}/css/plugins/table.css">
	<link rel="stylesheet" href="${ctx}/css/plugins/char_counter.css">
	<link rel="stylesheet" href="${ctx}/css/plugins/video.css">
	<link rel="stylesheet" href="${ctx}/css/plugins/fullscreen.css">
	<link rel="stylesheet" href="${ctx}/css/plugins/file.css">
	
	
	
	
	<script src="${ctx}/js/modernizr.custom.js"></script>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
	<![endif]-->
</head>
<body>
<header>
	<div id="slider" class="nivoSlider">
		<a href="#"><img src="images/slider/img_1.jpg" alt="slide 1" /></a>
		<a href="#"><img src="images/slider/img_2.jpg" alt="slide 2" /></a>
		<a href="#"><img src="images/slider/img_3.jpg" alt="slide 3" /></a>
		<a href="#"><img src="images/slider/img_4.jpg" alt="slide 4" /></a>
	</div>
</header>

<div class="mWrapper">
	<div class="container">
		<div class="row">
			<div class="col-md-2">
				<div class="mailme">
					<a href="mailto:zh850891072@163.com"><i class="fa fa-envelope" style="display: inline"></i>zh850891072@163.com</a>
				</div>
			</div>
			<div class="col-sm-8 col-md-9">
				<nav class="mainMenu">
					<ul class="nav">
						<li><a href="#slider">主页</a></li>
						<%--<li><a href="#any">随笔</a></li>--%>
						<li><a href="#aboutMe">关于我</a></li>
						<li><a href="#leaveMsg">留言</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
</div>

<%--<div id="any" class="section1" style="margin-top: -60px">--%>
	<%--<div class="container">--%>
		<%--<div class="row">--%>
			<%--<h4>随笔</h4>--%>
			<%--<div class="article">--%>
				<%--<h2><span>关于中秋</span></h2>--%>
				<%--<div class="clr"></div>--%>
				<%--<p class="post-data"><span class="date">September 15, 2016</span> &nbsp;|&nbsp; Posted by <a href="#">Owner</a> </p>--%>
				<%--<p>祝大家中秋快乐.</p>--%>
				<%--<p class="spec"><a href="#" class="com fr">Comments (3)</a> <a href="#" class="rm fl">Read more</a></p>--%>
				<%--<div class="clr"></div>--%>
			<%--</div>--%>
			<%--<div class="article">--%>
				<%--<h2><span>关于博客</span></h2>--%>
				<%--<div class="clr"></div>--%>
				<%--<p class="post-data"><span class="date">September 15, 2016</span> &nbsp;|&nbsp; Posted by <a href="#">Owner</a> </p>--%>
				<%--<p>--%>
					<%--节前上班闲来无事,找了几个模板改了下样式,暂时只是静态页面,后续几天会陆续把后台补上.--%>
				<%--</p>--%>
				<%--<p class="spec"><a href="#" class="com fr">Comments (7)</a> <a href="#" class="rm fl">Read more</a></p>--%>
				<%--<div class="clr"></div>--%>
			<%--</div>--%>
			<%--<ul class="pager">--%>
				<%--<li><a href="#">上一页</a></li>--%>
				<%--<li><a href="#">下一页</a></li>--%>
			<%--</ul>--%>
		<%--</div>--%>
	<%--</div>--%>
<%--</div>--%>
<div id="aboutMe" class="section2" style="margin-top: -60px">
	<div class="container">
		<div class="row">
			<div class="info1">
				<h4>信息</h4>
				<div class="addr">
					<ul>
						<li><i class="fa fa-map-marker"></i>shanghai</li>
						<li><i class="fa fa-user"></i>ZhouHui</li>
						<li><i class="fa fa-envelope"></i>zh850891072@163.com</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<div id="leaveMsg" class="section3">
	<div class="container">
		<div class="row">
			<h4>留言</h4>
			<div class="article">
				<c:forEach items="${msgList}" var="msg">
					<div class="comment">
						<p><a href="#">${msg.name}</a> Says:<br />${msg.createDate}</p>
						<p>${msg.content}</p>
					</div>
				</c:forEach>
				<div style="padding-bottom: 20px;padding-top: 20px"><a href="javascript:void(0)" class="rm fl">查看全部</a></div>
				<div>
					<%--<div>--%>
						<%--<label>姓名:</label><input type="text" class="form-control" id="name">--%>
					<%--</div>--%>
					<div id="editor">
					  <textarea id='edit'>
					  </textarea>
					</div>
					<button type="button" class="btn btn-primary" id="saveButton">
						留言
					</button>
				</div>
				<%--<ul class="pager">--%>
					<%--<li><a href="#">上一页</a></li>--%>
					<%--<li><a href="#">下一页</a></li>--%>
				<%--</ul>--%>
			</div>
		</div>
	</div>
</div>

<div id="back-top" class="gotop text-center">
	<a href="#">Back to top</a>
</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- <script src="https://code.jquery.com/jquery.js"></script> -->
<script src="${ctx}/js/jquery-1.10.2.min.js"></script>
<script src="${ctx}/js/froala_editor.min.js"></script>
<script src="${ctx}/js/bootstrap.min.js"></script>
<script src="${ctx}/js/jquery.cycle2.min.js"></script>
<script src="${ctx}/js/jquery.cycle2.carousel.min.js"></script>
<script src="${ctx}/js/jquery.nivo.slider.pack.js"></script>
<script>$.fn.cycle.defaults.autoSelector = '.slideshow';</script>
<script src="${ctx}/js/jquery.cookie.js"></script>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.3.0/codemirror.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.3.0/mode/xml/xml.min.js"></script>
<script type="text/javascript" src="${ctx}/js/froala_editor.min.js" ></script>
<script type="text/javascript" src="${ctx}/js/plugins/align.min.js"></script>
<script type="text/javascript" src="${ctx}/js/plugins/code_beautifier.min.js"></script>
<script type="text/javascript" src="${ctx}/js/plugins/code_view.min.js"></script>
<script type="text/javascript" src="${ctx}/js/plugins/colors.min.js"></script>
<script type="text/javascript" src="${ctx}/js/plugins/draggable.min.js"></script>
<script type="text/javascript" src="${ctx}/js/plugins/emoticons.min.js"></script>
<script type="text/javascript" src="${ctx}/js/plugins/font_size.min.js"></script>
<script type="text/javascript" src="${ctx}/js/plugins/font_family.min.js"></script>
<script type="text/javascript" src="${ctx}/js/plugins/image.min.js"></script>
<script type="text/javascript" src="${ctx}/js/plugins/file.min.js"></script>
<script type="text/javascript" src="${ctx}/js/plugins/image_manager.min.js"></script>
<script type="text/javascript" src="${ctx}/js/plugins/line_breaker.min.js"></script>
<script type="text/javascript" src="${ctx}/js/plugins/link.min.js"></script>
<script type="text/javascript" src="${ctx}/js/plugins/lists.min.js"></script>
<script type="text/javascript" src="${ctx}/js/plugins/paragraph_format.min.js"></script>
<script type="text/javascript" src="${ctx}/js/plugins/paragraph_style.min.js"></script>
<script type="text/javascript" src="${ctx}/js/plugins/video.min.js"></script>
<script type="text/javascript" src="${ctx}/js/plugins/table.min.js"></script>
<script type="text/javascript" src="${ctx}/js/plugins/url.min.js"></script>
<script type="text/javascript" src="${ctx}/js/plugins/entities.min.js"></script>
<script type="text/javascript" src="${ctx}/js/plugins/char_counter.min.js"></script>
<script type="text/javascript" src="${ctx}/js/plugins/inline_style.min.js"></script>
<script type="text/javascript" src="${ctx}/js/plugins/save.min.js"></script>
<script type="text/javascript" src="${ctx}/js/plugins/fullscreen.min.js"></script>
<script type="text/javascript" src="${ctx}/js/plugins/quote.min.js"></script>
<script type="text/javascript" src="${ctx}/js/languages/ro.js"></script>


<script type="text/javascript">
	$(window).load(function() {
		$('#slider').nivoSlider({
			prevText: '',
			nextText: '',
			controlNav: false
		});
	});
</script>
<script>
	$(document).ready(function(){
		$('#edit').froalaEditor({
			enter: $.FroalaEditor.ENTER_BR,
			height:200,
			saveParam: 'content',
			saveURL: 'saveMsg',
			saveMethod: 'POST',
			codeMirror:	false,
			saveInterval: 250000,
			saveParams: {
				name: '路人'
			}
		}) .on('froalaEditor.save.before', function (e, editor) {

		}).on('froalaEditor.save.after', function (e, editor, response) {
			location.reload();
		}).on('froalaEditor.save.error', function (e, editor, error) {

		});
		$('#saveButton').click (function () {
			$('#edit').froalaEditor('save.save')
		})
		// hide #back-top first
		$("#back-top").hide();
		// fade in #back-top
		$(window).scroll(function () {
			if ($(this).scrollTop() > 100) {
				$('#back-top').fadeIn();
			} else {
				$('#back-top').fadeOut();
			}
		});

		// scroll body to 0px on click
		$('#back-top a').click(function () {
			$('body,html').animate({
				scrollTop: 0
			}, 800);
			return false;
		});
		$('a[href*=#]:not([href=#])').click(function() {
			if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
				var target = $(this.hash);
				target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
				if (target.length) {
					$('html,body').animate({
						scrollTop: target.offset().top
					}, 1000);
					return false;
				}
			}
		});
	});
</script>

<script type="text/javascript" src="${ctx}/js/lib/jquery.mousewheel-3.0.6.pack.js"></script>

<script src="${ctx}/js/stickUp.min.js" type="text/javascript"></script>
<script type="text/javascript">
	//initiating jQuery
	jQuery(function($) {
		$(document).ready( function() {
			//enabling stickUp on the '.navbar-wrapper' class
			$('.mWrapper').stickUp();
		});
	});
</script>
</body>
</html>