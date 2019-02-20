<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>profilo</title>
<jsp:include page="frammenti/stili.frammento"></jsp:include>
<link rel="stylesheet" href="css/stile.css">

	<style>
	img:hover {
  opacity: 0.5;
  filter: alpha(opacity=50);
}
	</style>

</head>
<body class="sfondo">
<jsp:include page="frammenti/navbar.html"></jsp:include>

<div class="card" style="width: 600px; height: relative; left: 15px; margin: 15px; padding-bottom: 25px">
<br>
<div style="margin-left: 2%;">
<h1><span id="lblNome">${ cliente.nome }</span> <span id="lblCognome">${ cliente.cognome }</span></h1>
	<br>
	l'Area dove mi trovo è: ${ cliente.comune }<br>
	in provincia di ${ cliente.provincia }<br>
	in ${ cliente.indirizzo }<br>
</div>
	 	
 		<script
	  src="https://code.jquery.com/jquery-3.3.1.min.js"
	  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	  crossorigin="anonymous"></script>
	  
	  	<script>
		sessionStorage.setItem('email', '${ cliente.email }');
	</script>
	  
 		
	<script src="js/profiloCliente.js"></script>
	
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
	
	
</body>
</html>