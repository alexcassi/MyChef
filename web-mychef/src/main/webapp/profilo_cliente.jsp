<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html style="height: 100%;">
<head>
<link rel="shortcut icon" type="image/png" href="immagini/M.png"/>
<meta charset="ISO-8859-1">
<title>profilo</title>
<jsp:include page="frammenti/stili.frammento"></jsp:include>
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

<div class="card" style="width: 600px; height: relative; margin: 15px; padding-bottom: 25px; border-style: none;">
<br>
<div style="margin-left: 15px;">
<h1><span id="lblNome">${ cliente.nome }</span> <span id="lblCognome">${ cliente.cognome }</span></h1>
	<br> <!-- implementare lista chef "preferiti"/"provati" e lista non ancora provati tipo lista ordini -->
		 <!-- implementazione futura lista chef "consigliati" confrontando la zona chef/cliente -->
	<br>
	<p><b>L'area dove mi trovo è: </b>  ${ cliente.indirizzo }</p>
	<p><b>In provincia di: </b> ${ cliente.provincia }, ${ cliente.comune },</p>
	<br>
	<br>
	<a href = "modificaIndirizzoCliente.jsp">modifica indirizzo</a>
</div>
</div>
 		<script
	  src="https://code.jquery.com/jquery-3.3.1.min.js"
	  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	  crossorigin="anonymous"></script>
	  
	  	<script>
		sessionStorage.setItem('email', '${ cliente.email }');
	</script>
	  
	
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
	
		<script src="js/global_scripts.js"></script>
	
</body>
		<jsp:include page="frammenti/footer.html"></jsp:include>
</html>