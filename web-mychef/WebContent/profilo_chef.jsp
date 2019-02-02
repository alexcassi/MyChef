<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>profilo</title>
<jsp:include page="frammenti/stili.frammento"></jsp:include>
</head>
<body>
<jsp:include page="frammenti/navbar.html"></jsp:include>


<br>
<h1><span id="lblNome">${ chef.nome }</span> <span id="lblCognome">${ chef.cognome }</span></h1>
	<br>
	la mia specialità ${ chef.ricette[0].nome_ricetta }
	<br>
	<br>
	l'Area dove mi trovo è ${ chef.luogo_lavoro }
	<br>
 	<br>
 	<a href = "addRicetta.jsp">aggiungi ricetta</a>
 	<br>
 	<br>
 	le tue ricette:
 	<br>
 	
 	<ul class="mylist">
 	</ul>
 	
 		<script
	  src="https://code.jquery.com/jquery-3.3.1.min.js"
	  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	  crossorigin="anonymous"></script>
 	
	<jsp:include page="frammenti/scripts.jsp"></jsp:include>
	
	<script>
		sessionStorage.setItem('chef_email', '${ chef.email }');
	</script>
	
	<script src="js/profiloChef.js"></script>
			
</body>
</html>