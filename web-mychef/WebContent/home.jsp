<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>

		<title>MyChef-Home</title>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet"
			href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
			integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
			crossorigin="anonymous">
		<style type="text/css">

		.navbar {
			min-height: 100px
			}
		div.absolute {psition: absolute;
		}
		</style>
	</head>
	<body>
	<jsp:include page="frammenti/navbar.html"></jsp:include>
		<div class="row">
	
			<jsp:include page="card_home/card.jsp"></jsp:include>
				<hr>
			<jsp:include page="card_home/card.jsp"></jsp:include> 
				<hr>
			<jsp:include page="card_home/card.jsp"></jsp:include> 
				<hr>
			<jsp:include page="card_home/card.jsp"></jsp:include> 
				<hr>
			<jsp:include page="card_home/card.jsp"></jsp:include> 
				<hr>
			<jsp:include page="card_home/card.jsp"></jsp:include> 
		 </div>


	</body>
</html>