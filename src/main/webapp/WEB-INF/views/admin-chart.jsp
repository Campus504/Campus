<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Basic Page Info -->
<meta charset="UTF-8">
<title>Campus - 대여 통계 1</title>

<!-- Site favicon -->
<link rel="apple-touch-icon" sizes="180x180"
	href="/campus/resources/vendors/images/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="/campus/resources/vendors/images/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="/campus/resources/vendors/images/favicon-16x16.png">

<!-- Mobile Specific Metas -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap"
	rel="stylesheet">
<!-- CSS -->
<link rel="stylesheet" type="text/css"
	href="/campus/resources/vendors/styles/core.css">
<link rel="stylesheet" type="text/css"
	href="/campus/resources/vendors/styles/icon-font.min.css">
<link rel="stylesheet" type="text/css"
	href="/campus/resources/src/plugins/datatables/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" type="text/css"
	href="/campus/resources/src/plugins/datatables/css/responsive.bootstrap4.min.css">
<link rel="stylesheet" type="text/css"
	href="/campus/resources/vendors/styles/style.css">

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async
	src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());

	gtag('config', 'UA-119386393-1');
</script>
</head>
<body>
	<!--  header -->
	<jsp:include page="/WEB-INF/views/modules/adminHeader.jsp" />
	<!-- end of header -->
	<!--  sidebar -->
	<jsp:include page="/WEB-INF/views/modules/adminSidebar.jsp" />
	<!-- end of sidebar -->

	<div class="bg-white pd-20 card-box mb-30" style="position: relative;">
					<h4 class="h4 text-blue">line Chart</h4>
					<div id="chart1" style="min-height: 365px;"><div id="apexcharts16fa9f" class="apexcharts-canvas apexcharts16fa9f apexcharts-theme-light apexcharts-zoomable" style="width: 1113px; height: 350px;"><svg id="SvgjsSvg1001" width="1113" height="350" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs" class="apexcharts-svg hovering-zoom" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;"><g id="SvgjsG1003" class="apexcharts-inner apexcharts-graphical" transform="translate(38.125, 56)"><defs id="SvgjsDefs1002"><clipPath id="gridRectMask16fa9f"><rect id="SvgjsRect1031" width="1085.875" height="266.8" x="-5.5" y="-3.5" rx="0" ry="0" fill="#ffffff" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0"></rect></clipPath><clipPath id="gridRectMarkerMask16fa9f"><rect id="SvgjsRect1032" width="1084.875" height="269.8" x="-5" y="-5" rx="0" ry="0" fill="#ffffff" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0"></rect></clipPath><linearGradient id="SvgjsLinearGradient1073" x1="0" y1="1" x2="1" y2="1"><stop id="SvgjsStop1074" stop-opacity="1" stop-color="rgba(27,0,255,1)" offset="0"></stop><stop id="SvgjsStop1075" stop-opacity="1" stop-color="rgba(0,143,251,1)" offset="1"></stop><stop id="SvgjsStop1076" stop-opacity="1" stop-color="rgba(0,143,251,1)" offset="1"></stop><stop id="SvgjsStop1077" stop-opacity="1" stop-color="rgba(27,0,255,1)" offset="1"></stop></linearGradient></defs><line id="SvgjsLine1010" x1="760.4366537717601" y1="0" x2="760.4366537717601" y2="259.8" stroke="#b6b6b6" stroke-dasharray="3" class="apexcharts-xcrosshairs" x="760.4366537717601" y="0" width="1" height="259.8" fill="#b1b9c4" filter="none" fill-opacity="0.9" stroke-width="1"></line><g id="SvgjsG1079" class="apexcharts-xaxis" transform="translate(0, 0)"><g id="SvgjsG1080" class="apexcharts-xaxis-texts-g" transform="translate(0, -4)"><text id="SvgjsText1082" font-family="Helvetica, Arial, sans-serif" x="45.73936170212767" y="288.8" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1083">Feb '20</tspan><title>Feb '20</title></text><text id="SvgjsText1085" font-family="Helvetica, Arial, sans-serif" x="170.4830754352031" y="288.8" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1086">Apr '20</tspan><title>Apr '20</title></text><text id="SvgjsText1088" font-family="Helvetica, Arial, sans-serif" x="297.3058510638298" y="288.8" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1089">Jun '20</tspan><title>Jun '20</title></text><text id="SvgjsText1091" font-family="Helvetica, Arial, sans-serif" x="424.12862669245646" y="288.8" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1092">Aug '20</tspan><title>Aug '20</title></text><text id="SvgjsText1094" font-family="Helvetica, Arial, sans-serif" x="550.9514023210832" y="288.8" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1095">Oct '20</tspan><title>Oct '20</title></text><text id="SvgjsText1097" font-family="Helvetica, Arial, sans-serif" x="615.4023210831722" y="288.8" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1098">Nov '20</tspan><title>Nov '20</title></text><text id="SvgjsText1100" font-family="Helvetica, Arial, sans-serif" x="742.2250967117989" y="288.8" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="600" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1101">2021</tspan><title>2021</title></text><text id="SvgjsText1103" font-family="Helvetica, Arial, sans-serif" x="806.6760154738879" y="288.8" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1104">Feb '21</tspan><title>Feb '21</title></text><text id="SvgjsText1106" font-family="Helvetica, Arial, sans-serif" x="929.3406673114121" y="288.8" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1107">Apr '21</tspan><title>Apr '21</title></text><text id="SvgjsText1109" font-family="Helvetica, Arial, sans-serif" x="1056.1634429400387" y="288.8" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1110">Jun '21</tspan><title>Jun '21</title></text><text id="SvgjsText1112" font-family="Helvetica, Arial, sans-serif" x="1118.5352998065764" y="288.8" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1113"></tspan><title></title></text></g><line id="SvgjsLine1114" x1="0" y1="260.8" x2="1074.875" y2="260.8" stroke="#e0e0e0" stroke-dasharray="0" stroke-width="1"></line></g><g id="SvgjsG1141" class="apexcharts-grid"><g id="SvgjsG1142" class="apexcharts-gridlines-horizontal" style="display: none;"><line id="SvgjsLine1154" x1="0" y1="0" x2="1074.875" y2="0" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine1155" x1="0" y1="25.98" x2="1074.875" y2="25.98" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine1156" x1="0" y1="51.96" x2="1074.875" y2="51.96" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine1157" x1="0" y1="77.94" x2="1074.875" y2="77.94" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine1158" x1="0" y1="103.92" x2="1074.875" y2="103.92" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine1159" x1="0" y1="129.9" x2="1074.875" y2="129.9" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine1160" x1="0" y1="155.88" x2="1074.875" y2="155.88" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine1161" x1="0" y1="181.85999999999999" x2="1074.875" y2="181.85999999999999" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine1162" x1="0" y1="207.83999999999997" x2="1074.875" y2="207.83999999999997" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine1163" x1="0" y1="233.81999999999996" x2="1074.875" y2="233.81999999999996" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine1164" x1="0" y1="259.79999999999995" x2="1074.875" y2="259.79999999999995" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line></g><g id="SvgjsG1143" class="apexcharts-gridlines-vertical" style="display: none;"></g><line id="SvgjsLine1144" x1="45.73936170212767" y1="260.8" x2="45.73936170212767" y2="266.8" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1145" x1="170.4830754352031" y1="260.8" x2="170.4830754352031" y2="266.8" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1146" x1="297.3058510638298" y1="260.8" x2="297.3058510638298" y2="266.8" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1147" x1="424.12862669245646" y1="260.8" x2="424.12862669245646" y2="266.8" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1148" x1="550.9514023210832" y1="260.8" x2="550.9514023210832" y2="266.8" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1149" x1="615.4023210831722" y1="260.8" x2="615.4023210831722" y2="266.8" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1150" x1="742.2250967117989" y1="260.8" x2="742.2250967117989" y2="266.8" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1151" x1="806.6760154738879" y1="260.8" x2="806.6760154738879" y2="266.8" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1152" x1="929.3406673114121" y1="260.8" x2="929.3406673114121" y2="266.8" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1153" x1="1056.1634429400387" y1="260.8" x2="1056.1634429400387" y2="266.8" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1166" x1="0" y1="259.8" x2="1074.875" y2="259.8" stroke="transparent" stroke-dasharray="0"></line><line id="SvgjsLine1165" x1="0" y1="1" x2="0" y2="259.8" stroke="transparent" stroke-dasharray="0"></line></g><g id="SvgjsG1034" class="apexcharts-line-series apexcharts-plot-series"><g id="SvgjsG1035" class="apexcharts-series" seriesName="Likes" data:longestSeries="true" rel="1" data:realIndex="0"><path id="SvgjsPath1078" d="M0 187.056C22.55782156673114 187.056 41.89309719535784 192.252 64.45091876208897 192.252C85.55339700193423 192.252 103.64123549323017 155.88 124.74371373307544 155.88C147.30153529980657 155.88 166.63681092843328 161.076 189.19463249516443 161.076C211.02478239845263 161.076 229.73633945841394 57.156000000000006 251.56648936170214 57.156000000000006C274.12431092843326 57.156000000000006 293.45958655705994 109.116 316.0174081237911 109.116C337.8475580270793 109.116 356.55911508704065 93.528 378.38926499032885 93.528C400.94708655706 93.528 420.2823621856867 161.076 442.84018375241783 161.076C465.398005319149 161.076 484.73328094777565 145.488 507.2911025145068 145.488C529.121252417795 145.488 547.8328094777563 171.46800000000002 569.6629593810445 171.46800000000002C592.2207809477757 171.46800000000002 611.5560565764023 109.116 634.1138781431334 109.116C655.9440280464216 109.116 674.655585106383 181.86 696.4857350096712 181.86C719.0435565764024 181.86 738.378832205029 140.292 760.9366537717601 140.292C783.4944753384913 140.292 802.829750967118 161.076 825.3875725338492 161.076C845.7623791102515 161.076 863.2264990328821 119.508 883.6013056092844 119.508C906.1591271760155 119.508 925.4944028046422 197.448 948.0522243713733 197.448C969.8823742746615 197.448 988.5939313346229 171.46800000000002 1010.4240812379111 171.46800000000002C1032.9819028046422 171.46800000000002 1052.317178433269 181.86 1074.875 181.86C1074.875 181.86 1074.875 181.86 1074.875 181.86 " fill="none" fill-opacity="1" stroke="url(#SvgjsLinearGradient1073)" stroke-opacity="1" stroke-linecap="butt" stroke-width="7" stroke-dasharray="0" class="apexcharts-line" index="0" clip-path="url(#gridRectMask16fa9f)" pathTo="M 0 187.056C 22.55782156673114 187.056 41.89309719535784 192.252 64.45091876208897 192.252C 85.55339700193423 192.252 103.64123549323017 155.88 124.74371373307544 155.88C 147.30153529980657 155.88 166.63681092843328 161.076 189.19463249516443 161.076C 211.02478239845263 161.076 229.73633945841394 57.156000000000006 251.56648936170214 57.156000000000006C 274.12431092843326 57.156000000000006 293.45958655705994 109.116 316.0174081237911 109.116C 337.8475580270793 109.116 356.55911508704065 93.528 378.38926499032885 93.528C 400.94708655706 93.528 420.2823621856867 161.076 442.84018375241783 161.076C 465.398005319149 161.076 484.73328094777565 145.488 507.2911025145068 145.488C 529.121252417795 145.488 547.8328094777563 171.46800000000002 569.6629593810445 171.46800000000002C 592.2207809477757 171.46800000000002 611.5560565764023 109.116 634.1138781431334 109.116C 655.9440280464216 109.116 674.655585106383 181.86 696.4857350096712 181.86C 719.0435565764024 181.86 738.378832205029 140.292 760.9366537717601 140.292C 783.4944753384913 140.292 802.829750967118 161.076 825.3875725338492 161.076C 845.7623791102515 161.076 863.2264990328821 119.508 883.6013056092844 119.508C 906.1591271760155 119.508 925.4944028046422 197.448 948.0522243713733 197.448C 969.8823742746615 197.448 988.5939313346229 171.46800000000002 1010.4240812379111 171.46800000000002C 1032.9819028046422 171.46800000000002 1052.317178433269 181.86 1074.875 181.86" pathFrom="M -1 207.84L -1 207.84L 64.45091876208897 207.84L 124.74371373307544 207.84L 189.19463249516443 207.84L 251.56648936170214 207.84L 316.0174081237911 207.84L 378.38926499032885 207.84L 442.84018375241783 207.84L 507.2911025145068 207.84L 569.6629593810445 207.84L 634.1138781431334 207.84L 696.4857350096712 207.84L 760.9366537717601 207.84L 825.3875725338492 207.84L 883.6013056092844 207.84L 948.0522243713733 207.84L 1010.4240812379111 207.84L 1074.875 207.84"></path><g id="SvgjsG1036" class="apexcharts-series-markers-wrap"><g id="SvgjsG1038" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask16fa9f)"><circle id="SvgjsCircle1039" r="4" cx="0" cy="187.056" class="apexcharts-marker no-pointer-events w16faba" stroke="#ffffff" fill="#ffa41b" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="0" j="0" index="0" default-marker-size="4"></circle><circle id="SvgjsCircle1040" r="4" cx="64.45091876208897" cy="192.252" class="apexcharts-marker no-pointer-events w16fabb" stroke="#ffffff" fill="#ffa41b" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="1" j="1" index="0" default-marker-size="4"></circle></g><g id="SvgjsG1041" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask16fa9f)"><circle id="SvgjsCircle1042" r="4" cx="124.74371373307544" cy="155.88" class="apexcharts-marker no-pointer-events w16fabb" stroke="#ffffff" fill="#ffa41b" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="2" j="2" index="0" default-marker-size="4"></circle></g><g id="SvgjsG1043" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask16fa9f)"><circle id="SvgjsCircle1044" r="4" cx="189.19463249516443" cy="161.076" class="apexcharts-marker no-pointer-events w16fabb" stroke="#ffffff" fill="#ffa41b" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="3" j="3" index="0" default-marker-size="4"></circle></g><g id="SvgjsG1045" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask16fa9f)"><circle id="SvgjsCircle1046" r="4" cx="251.56648936170214" cy="57.156000000000006" class="apexcharts-marker no-pointer-events w16fabb" stroke="#ffffff" fill="#ffa41b" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="4" j="4" index="0" default-marker-size="4"></circle></g><g id="SvgjsG1047" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask16fa9f)"><circle id="SvgjsCircle1048" r="4" cx="316.0174081237911" cy="109.116" class="apexcharts-marker no-pointer-events w16fabb" stroke="#ffffff" fill="#ffa41b" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="5" j="5" index="0" default-marker-size="4"></circle></g><g id="SvgjsG1049" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask16fa9f)"><circle id="SvgjsCircle1050" r="4" cx="378.38926499032885" cy="93.528" class="apexcharts-marker no-pointer-events w16fabc" stroke="#ffffff" fill="#ffa41b" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="6" j="6" index="0" default-marker-size="4"></circle></g><g id="SvgjsG1051" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask16fa9f)"><circle id="SvgjsCircle1052" r="4" cx="442.84018375241783" cy="161.076" class="apexcharts-marker no-pointer-events w16fabc" stroke="#ffffff" fill="#ffa41b" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="7" j="7" index="0" default-marker-size="4"></circle></g><g id="SvgjsG1053" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask16fa9f)"><circle id="SvgjsCircle1054" r="4" cx="507.2911025145068" cy="145.488" class="apexcharts-marker no-pointer-events w16fabc" stroke="#ffffff" fill="#ffa41b" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="8" j="8" index="0" default-marker-size="4"></circle></g><g id="SvgjsG1055" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask16fa9f)"><circle id="SvgjsCircle1056" r="4" cx="569.6629593810445" cy="171.46800000000002" class="apexcharts-marker no-pointer-events w16fabc" stroke="#ffffff" fill="#ffa41b" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="9" j="9" index="0" default-marker-size="4"></circle></g><g id="SvgjsG1057" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask16fa9f)"><circle id="SvgjsCircle1058" r="4" cx="634.1138781431334" cy="109.116" class="apexcharts-marker no-pointer-events w16fabc" stroke="#ffffff" fill="#ffa41b" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="10" j="10" index="0" default-marker-size="4"></circle></g><g id="SvgjsG1059" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask16fa9f)"><circle id="SvgjsCircle1060" r="4" cx="696.4857350096712" cy="181.86" class="apexcharts-marker no-pointer-events w16fabd" stroke="#ffffff" fill="#ffa41b" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="11" j="11" index="0" default-marker-size="4"></circle></g><g id="SvgjsG1061" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask16fa9f)"><circle id="SvgjsCircle1062" r="4" cx="760.9366537717601" cy="140.292" class="apexcharts-marker no-pointer-events w16fabd" stroke="#ffffff" fill="#ffa41b" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="12" j="12" index="0" default-marker-size="4"></circle></g><g id="SvgjsG1063" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask16fa9f)"><circle id="SvgjsCircle1064" r="4" cx="825.3875725338492" cy="161.076" class="apexcharts-marker no-pointer-events w16fabd" stroke="#ffffff" fill="#ffa41b" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="13" j="13" index="0" default-marker-size="4"></circle></g><g id="SvgjsG1065" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask16fa9f)"><circle id="SvgjsCircle1066" r="4" cx="883.6013056092844" cy="119.508" class="apexcharts-marker no-pointer-events w16fabe" stroke="#ffffff" fill="#ffa41b" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="14" j="14" index="0" default-marker-size="4"></circle></g><g id="SvgjsG1067" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask16fa9f)"><circle id="SvgjsCircle1068" r="4" cx="948.0522243713733" cy="197.448" class="apexcharts-marker no-pointer-events w16fabe" stroke="#ffffff" fill="#ffa41b" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="15" j="15" index="0" default-marker-size="4"></circle></g><g id="SvgjsG1069" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask16fa9f)"><circle id="SvgjsCircle1070" r="4" cx="1010.4240812379111" cy="171.46800000000002" class="apexcharts-marker no-pointer-events w16fabe" stroke="#ffffff" fill="#ffa41b" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="16" j="16" index="0" default-marker-size="4"></circle></g><g id="SvgjsG1071" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask16fa9f)"><circle id="SvgjsCircle1072" r="4" cx="1074.875" cy="181.86" class="apexcharts-marker no-pointer-events w16fabe" stroke="#ffffff" fill="#ffa41b" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="17" j="17" index="0" default-marker-size="4"></circle></g></g></g><g id="SvgjsG1037" class="apexcharts-datalabels" data:realIndex="0"></g></g><line id="SvgjsLine1167" x1="0" y1="0" x2="1074.875" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine1168" x1="0" y1="0" x2="1074.875" y2="0" stroke-dasharray="0" stroke-width="0" class="apexcharts-ycrosshairs-hidden"></line><g id="SvgjsG1169" class="apexcharts-yaxis-annotations"></g><g id="SvgjsG1170" class="apexcharts-xaxis-annotations"></g><g id="SvgjsG1171" class="apexcharts-point-annotations"></g><rect id="SvgjsRect1172" width="0" height="0" x="0" y="0" rx="0" ry="0" fill="#fefefe" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" class="apexcharts-zoom-rect"></rect><rect id="SvgjsRect1173" width="0" height="0" x="0" y="0" rx="0" ry="0" fill="#fefefe" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" class="apexcharts-selection-rect"></rect></g><text id="SvgjsText1004" font-family="Helvetica, Arial, sans-serif" x="10" y="18.5" text-anchor="start" dominant-baseline="auto" font-size="16px" font-weight="900" fill="#666666" class="apexcharts-title-text" style="font-family: Helvetica, Arial, sans-serif; opacity: 1;">Social Media</text><rect id="SvgjsRect1009" width="0" height="0" x="0" y="0" rx="0" ry="0" fill="#fefefe" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0"></rect><g id="SvgjsG1115" class="apexcharts-yaxis" rel="0" transform="translate(20.125, 0)"><g id="SvgjsG1116" class="apexcharts-yaxis-texts-g"><text id="SvgjsText1117" font-family="Helvetica, Arial, sans-serif" x="20" y="58" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="regular" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1118">40</tspan></text><text id="SvgjsText1119" font-family="Helvetica, Arial, sans-serif" x="20" y="83.98" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="regular" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1120">35</tspan></text><text id="SvgjsText1121" font-family="Helvetica, Arial, sans-serif" x="20" y="109.96000000000001" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="regular" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1122">30</tspan></text><text id="SvgjsText1123" font-family="Helvetica, Arial, sans-serif" x="20" y="135.94" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="regular" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1124">25</tspan></text><text id="SvgjsText1125" font-family="Helvetica, Arial, sans-serif" x="20" y="161.92" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="regular" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1126">20</tspan></text><text id="SvgjsText1127" font-family="Helvetica, Arial, sans-serif" x="20" y="187.89999999999998" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="regular" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1128">15</tspan></text><text id="SvgjsText1129" font-family="Helvetica, Arial, sans-serif" x="20" y="213.87999999999997" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="regular" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1130">10</tspan></text><text id="SvgjsText1131" font-family="Helvetica, Arial, sans-serif" x="20" y="239.85999999999996" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="regular" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1132">5</tspan></text><text id="SvgjsText1133" font-family="Helvetica, Arial, sans-serif" x="20" y="265.84" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="regular" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1134">0</tspan></text><text id="SvgjsText1135" font-family="Helvetica, Arial, sans-serif" x="20" y="291.82" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="regular" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1136">-5</tspan></text><text id="SvgjsText1137" font-family="Helvetica, Arial, sans-serif" x="20" y="317.8" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="regular" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1138">-10</tspan></text></g><g id="SvgjsG1139" class="apexcharts-yaxis-title"><text id="SvgjsText1140" font-family="Helvetica, Arial, sans-serif" x="21.51220703125" y="185.9" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="900" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-title-text " style="font-family: Helvetica, Arial, sans-serif;" transform="rotate(-90 -10.8818359375 181.39999389648438)">Engagement</text></g></g></svg><div class="apexcharts-legend"></div><div class="apexcharts-tooltip apexcharts-theme-light" style="left: 692.015px; top: 143.792px;"><div class="apexcharts-tooltip-title" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px; display: flex;">10 Jan</div><div class="apexcharts-tooltip-series-group apexcharts-active" style="display: flex;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(0, 143, 251);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-label">Likes: </span><span class="apexcharts-tooltip-text-value">13</span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div></div><div class="apexcharts-xaxistooltip apexcharts-xaxistooltip-bottom apexcharts-theme-light" style="left: 764.382px; top: 317.8px;"><div class="apexcharts-xaxistooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px; min-width: 46.3594px;">10 Jan</div></div></div></div>
				<div class="resize-triggers"><div class="expand-trigger"><div style="width: 1154px; height: 441px;"></div></div><div class="contract-trigger"></div></div></div>
		  <!-- js -->
         	<jsp:include page="/WEB-INF/views/modules/adminJS.jsp" />	
          <!-- end of js -->
</body>
</html>