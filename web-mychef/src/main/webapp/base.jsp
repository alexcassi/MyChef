<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html style="height:100%;">
<head>
<meta charset="ISO-8859-1">
<jsp:include page="frammenti/stili.frammento"></jsp:include>
<title>Insert title here</title>

	<style>
	.nav_img:hover {
  opacity: 0.5;
  filter: alpha(opacity=50);
}

body::after{ content:''; display:block; height:100px; }

	</style>

</head>
<body class="sfondo" style="min-height:100%; padding:0; margin:0; position:relative;">
	<jsp:include page="frammenti/navbar.html"></jsp:include>
	
	
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

	<script src="js/global_scripts.js"></script>
	

</body>
		<b>
			<a href="base.jsp" style="width: 50px; height: 50px; position: center; right: 0px;
			 		border-radius: 20px; color: white; background-color: #FF6A00;
					font-size: 50px; text-decoration: none;">^</a>
		</b>
		<jsp:include page="frammenti/footer.html"></jsp:include>
</html> 