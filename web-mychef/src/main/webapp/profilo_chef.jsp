<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>profilo</title>
<jsp:include page="frammenti/stili.frammento"></jsp:include>
<link rel="stylesheet" href="css/stile.css">
</head>
<body class="sfondo">
<jsp:include page="frammenti/navbar.html"></jsp:include>


<br>
<div style="margin-left: 1%;">
<h1><span id="lblNome">${ chef.nome }</span> <span id="lblCognome">${ chef.cognome }</span></h1>
	<p id = "spec"></p>
	<br>
	<br>
	<p>l'Area dove mi trovo è ${ chef.luogo_lavoro }</p>
	<br>
 	<br>
 	<a href = "addRicetta.jsp">aggiungi ricetta</a>
 	<br>
 	<br>
 	le tue ricette:
 	<br>
 	
 	<ul class="mylist">
 	</ul>
</div>
 	
 		<script
	  src="https://code.jquery.com/jquery-3.3.1.min.js"
	  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	  crossorigin="anonymous"></script>
 		
	<script>
		sessionStorage.setItem('email', '${ chef.email }');
	</script>
	
	<script src="js/profiloChef.js"></script>
	
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
	
			
</body>
</html>