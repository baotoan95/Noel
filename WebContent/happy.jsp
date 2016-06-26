<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<link rel="stylesheet" href="resources/css/style.css" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type="text/javascript" src="resources/js/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/snowstorm.js"></script>
<script type="text/javascript" src="resources/js/type.js"></script>

<script>
	//Disable right click script
	function clickIE() {if (document.all) {(message);return false;}}
	function clickNS(e) {
		if(document.layers||(document.getElementById&&!document.all)) {
			if (e.which==2||e.which==3) {(message);return false;}}}
			if (document.layers) {
				document.captureEvents(Event.MOUSEDOWN);
				document.onmousedown=clickNS;
			} else{
				document.onmouseup=clickNS;
				document.oncontextmenu=clickIE;
			}
	document.oncontextmenu = new Function("return false");
	// Marquee title
	var txt = "(¯`·.º-:¦:-Merry Chrismast And Happy New Year-:¦:-º.·´¯)";
	var espera = 200;
	var refresco = null;
	function rotulo_title() {
		document.title = txt;
		txt = txt.substring(1, txt.length) + txt.charAt(0);
		refresco = setTimeout("rotulo_title()", espera);
	}
	rotulo_title();

	$(document).ready(function() {
		$(window).resize(function() {
			$('#wrapper').css({
				"height" : this.innerHeight,
				"width" : this.innerWidth
			});
			$('canvas').css({
				"height" : this.innerHeight,
				"width" : this.innerWidth
			});
		});
	});
	
</script>
</head>
<body>
	<div id="wrapper" class="gird">
		<!-- Hiding library elements in the DOM is fun -->
		<aside id="library" style="display: none">
			<img src="resources/images/big-glow.png" id="big-glow" /> 
			<img src="resources/images/small-glow.png" id="small-glow" />
		</aside>
		<marquee>
			<img src="resources/images/g.gif" /> 
			<img src="resources/images/i.gif" /> 
			<img src="resources/images/a.gif" />
			<img src="resources/images/n.gif" /> 
			<img src="resources/images/g.gif" /> 
			<img src="resources/images/s.gif" />
			<img src="resources/images/i.gif" /> 
			<img src="resources/images/n.gif" /> 
			<img src="resources/images/h.gif" />
			<img src="resources/images/a.gif" /> 
			<img src="resources/images/n.gif" /> 
			<img src="resources/images/l.gif" />
			<img src="resources/images/a.gif" /> 
			<img src="resources/images/n.gif" /> 
			<img src="resources/images/h.gif" />
		</marquee>
		<div id="head">
			<img id="left" src="resources/images/top-left.png"> 
			<img id="right" src="resources/images/top-right.png">
		</div>

		<font size="${empty requestScope.font_size ? '4' : requestScope.font_size}"><div id="typo"></div></font>
		<input id="content" type="hidden" value="${requestScope.content }">
		<script type="text/javascript">
			typeBT($('#content').val() === "" ? "default" : $('#content').val());
		</script>

		<div id="santa"></div>
		<div id="santa2"></div>
		<div id="santa3"></div>
		<div id="home"></div>
		<div id="angle1"></div>
		<div id="angle2"></div>
		<div id="tree"></div>
		<div id="tree2"></div>
		<div id="ground"><a href="https://www.facebook.com/dialog/oauth?client_id=771854016252671&redirect_uri=http://xmnhappy.tk/Noel/CallbackServlet&state=123456789&scope=public_profile,email">Sửa nội dung</a></div>
		
		<object width="1" height="1">  <param name="movie" value="${empty requestScope.ms_link ? 'http://www.nhaccuatui.com/mh/auto/I2jtpWcn3M' : requestScope.ms_link }">  <param name="quality" value="high">  <param name="wmode" value="transparent">  <param name="allowscriptaccess" value="always"> <param name="allowfullscreen" value="true"> <param name="flashvars" value="autostart=true">  <embed src="${empty requestScope.ms_link ? 'http://www.nhaccuatui.com/mh/auto/I2jtpWcn3M' : requestScope.ms_link }" flashvars="target=blank&amp;autostart=true" allowscriptaccess="always" allowfullscreen="true" quality="high" wmode="transparent" type="application/x-shockwave-flash" width="1" height="1"></object>
		<iframe src="${empty requestScope.ms_link ? 'http://www.nhaccuatui.com/mh/auto/I2jtpWcn3M' : requestScope.ms_link }" width="0" height="0" frameborder="0" allowfullscreen></iframe>
	</div>

	
	<script src="resources/js/requestanimframe.js"></script>
	<script src="resources/js/fireworks.js"></script>
	<script type="text/javascript" src="resources/js/santa.js"></script>

</body>
</html>