<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>profilo</title>
<jsp:include page="frammenti/stili.frammento"></jsp:include>
</head>
<body background="frammenti/layer1.png" style="height:100%; background-position: center;
	background-repeat: no-repeat; background-size: 2000px 2000px; ">
<jsp:include page="frammenti/navbar.html"></jsp:include>


<br>
<h1><span id="lblNome">${ cliente.nome }</span> <span id="lblCognome">${ cliente.cognome }</span></h1>
	<br>
	l'Area dove mi trovo è ${ cliente.provincia }, ${ cliente.comune }, ${ cliente.indirizzo }

	<br>
	 	
 		<script
	  src="https://code.jquery.com/jquery-3.3.1.min.js"
	  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	  crossorigin="anonymous"></script>
 		
	<script src="js/profiloCliente.js"></script>
	
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
	
	
</body>
</html>