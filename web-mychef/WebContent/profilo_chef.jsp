<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>myhef- beatrice archetti</title>
<jsp:include page="frammenti/stili.frammento"></jsp:include>
</head>
<body>
<jsp:include page="frammenti/navbar.html"></jsp:include>


<br>
<h1><span id="lblNome"></span> <span id="lblCognome"></span></h1>
	<br>
	la mia specialità ${ chef.ricette[0].nome_ricetta }
	<br>
	<img src="immagini_piatti/zuppaing.jpg" height="25%" width="25%"></img>
	<br>
	l'Area dove mi trovo è Citta Studi, Milano

	<br>
	<div id="map">
 	</div>
 	
 		<script
	  src="https://code.jquery.com/jquery-3.3.1.min.js"
	  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	  crossorigin="anonymous"></script>
 	
	<jsp:include page="frammenti/scripts.jsp"></jsp:include>
	<script>
		sessionStorage.setItem('chef', '${ chef.email }');
	</script>
	<script src="js/profilo.js"></script>
	
</body>
</html>