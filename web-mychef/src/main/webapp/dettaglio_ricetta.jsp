<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" type="image/png" href="immagini/M.png"/>
<meta charset="ISO-8859-1">
<title></title>
<jsp:include page="frammenti/stili.frammento"></jsp:include>
<link rel="stylesheet" href="css/stile.css">

	<style>
	.nav_img:hover {
  opacity: 0.5;
  filter: alpha(opacity=50);
}
	</style>

</head>
<body class="sfondo">
	<jsp:include page="frammenti/navbar.html"></jsp:include>

<div class="card" style="width: 800px; height: relative; margin: 15px;">
<br>
<div style="margin: 2%; ">
	<div style="display: flex;">
		<h1>${ ricetta.nome_ricetta }</h1>
		<a href="updateRicetta.jsp?id_ricetta=${ ricetta.id }"
			style="margin-left: 50px; color: #FF6A00">aggiorna</a> 
			<a href="RimuoviRicettaController?id_ricetta=${ ricetta.id }"
				style="margin-left: 50px; color: #FF6A00">elimina</a>
				
	</div>
	<br>
	<h4>ingredienti:</h4>
	<p>${ ricetta.ingredienti }</p>
	<br>
	<h4>tempo di preparazione:</h4>
	<p>${ ricetta.tempo_preparazione }min</p>
	<br>
	<h4>prezzo:</h4>
	<p>${ ricetta.prezzo }&nbsp&#8364</p>

</div>
</div>


	<script src="https://code.jquery.com/jquery-3.3.1.min.js"
		integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
		crossorigin="anonymous"></script>
		
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
		
			<script src="js/global_scripts.js"></script>
</body>

		<jsp:include page="frammenti/footer.html"></jsp:include>
</html>