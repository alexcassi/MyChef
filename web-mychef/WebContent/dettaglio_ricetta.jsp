<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<jsp:include page="frammenti/stili.frammento"></jsp:include>
</head>
<body>
	<jsp:include page="frammenti/navbar.html"></jsp:include>


	<br>
	<div style="display: flex;">
		<h1>${ ricetta.nome_ricetta }</h1>
		<a href="updateRicetta.jsp?id_ricetta=${ ricetta.id }"
			style="margin-left: 50px">aggiorna</a> 
			<a href="RimuoviRicettaController?id_ricetta=${ ricetta.id }"
				style="margin-left: 50px">elimina</a>

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




	<script src="https://code.jquery.com/jquery-3.3.1.min.js"
		integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
		crossorigin="anonymous"></script>

</html>