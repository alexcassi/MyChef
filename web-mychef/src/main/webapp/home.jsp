<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html style="height: -webkit-fill-available;">
	<head>
		<link rel="shortcut icon" type="image/png" href="immagini/M.png"/>
		<title>Home MyChef</title>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet"
			href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
			integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
			crossorigin="anonymous">
		<link rel="stylesheet" href="css/stile.css">
		
		
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
			<div class="row" style="width: 100%;">
		
				<jsp:include page="card_home/card.jsp"></jsp:include>
					
				<jsp:include page="card_home/card.jsp"></jsp:include> 
					
				<jsp:include page="card_home/card.jsp"></jsp:include> 
					
				<jsp:include page="card_home/card.jsp"></jsp:include> 
					
				<jsp:include page="card_home/card.jsp"></jsp:include> 
					
				<jsp:include page="card_home/card.jsp"></jsp:include> 
				
				<jsp:include page="card_home/card.jsp"></jsp:include> 
				
				<jsp:include page="card_home/card.jsp"></jsp:include> 
				
				<jsp:include page="card_home/card.jsp"></jsp:include> 
				
				<jsp:include page="card_home/card.jsp"></jsp:include>
				
				<jsp:include page="card_home/card.jsp"></jsp:include>
				
				<jsp:include page="card_home/card.jsp"></jsp:include>
								
				<jsp:include page="card_home/card.jsp"></jsp:include>
				
				<jsp:include page="card_home/card.jsp"></jsp:include>
					
			 </div>
		 
		 
 		<script
	 		 src="https://code.jquery.com/jquery-3.3.1.min.js"
	 		 integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	 		 crossorigin="anonymous"></script>
	  
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
			<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
		 
		 	<script src="js/home.js"></script>
		 	
		 	<script src="js/global_scripts.js"></script>
		 	<jsp:include page="frammenti/footer.html"></jsp:include>
	</body>
</html>