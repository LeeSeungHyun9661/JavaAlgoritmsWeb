<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Java Sorting Algorithms</title>
<!-- Bootstrap - CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<!-- Bootstrap Icons - CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<!-- Charts -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<!-- Color Mod -->
<script src="/JavaAlgorithms/resources/js/color-mode.js"></script>
<!-- amChart -->
<script src="https://cdn.amcharts.com/lib/5/index.js"></script>
<script src="https://cdn.amcharts.com/lib/5/hierarchy.js"></script>
<script src="https://cdn.amcharts.com/lib/5/themes/Animated.js"></script>

<link rel="apple-touch-icon" href="/JavaAlgorithms/resources/icon/java-touch-icon.png" sizes="180x180">
<link rel="icon" href="/JavaAlgorithms/resources/icon/java-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/JavaAlgorithms/resources/icon/java-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="https://getbootstrap.kr/docs/5.3/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="https://getbootstrap.kr/docs/5.3/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
<link rel="icon" href="/JavaAlgorithms/resources/icon/java.ico">
<meta name="theme-color" content="#712cf9">
<link href="/JavaAlgorithms/resources/css/bootstrap-icons.min.css" rel="stylesheet">
<link href="/JavaAlgorithms/resources/css/dashboard.css" rel="stylesheet">
<!-- Prism CSS -->
<link href="/JavaAlgorithms/resources/css/prism.css" rel="stylesheet" type="text/css">
<!-- Custom CSS -->
<link href="/JavaAlgorithms/resources/css/style.css" rel="stylesheet" type="text/css">
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<!-- Main DOM -->
	<div class="container-fluid">
		<div class="row">
			<jsp:include page="menu.jsp"></jsp:include>
			<!-- MainBoard -->
			<main class="col-md-9 ms-sm-auto col-lg-10 px-mds4" id="dashboard">
				<jsp:include page="${content}"></jsp:include>

			</main>
		</div>
	</div>
	<%
	if (((String) request.getAttribute("script")).length() > 0) {
	%>
	<jsp:include page="${script}"></jsp:include>
	<%
	}
	%>

	<!-- Prism JS -->
	<script src="/JavaAlgorithms/resources/js/prism.js"></script>
	<!-- Jquery -->
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script type="text/javascript" src="/JavaAlgorithms/resources/js/includeHTML.js"></script>
	<!-- Custom JS -->
	<script type="text/javascript" src="/JavaAlgorithms/resources/js/global.js"></script>
	<!-- Bootstrap - JS -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>


</body>

</html>