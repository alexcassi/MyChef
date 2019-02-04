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
		div.absolute {psition: relative;
		}
		</style>
	</head>
	<body background="frammenti/layer1.png" style="height:100%; background-position: center;
	background-repeat: no-repeat; background-size: 2000px 2000px; ">
	
	<jsp:include page="frammenti/navbar.html"></jsp:include>
		<div class="row" style="width: 100%;">
	
			<jsp:include page="card_home/card.jsp"></jsp:include>
				
			<jsp:include page="card_home/card.jsp"></jsp:include> 
				
			<jsp:include page="card_home/card.jsp"></jsp:include> 
				
			<jsp:include page="card_home/card.jsp"></jsp:include> 
				
			<jsp:include page="card_home/card.jsp"></jsp:include> 
				
			<jsp:include page="card_home/card.jsp"></jsp:include> 
		 </div>
		 
		 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
		 
	</body>
</html>