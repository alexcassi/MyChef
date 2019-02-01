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

	<br>
	<h1><span id="lblNomeRicetta">${ Ricetta.nome_ricetta }</span> 
	<br>
	<br>
	<span id="lblIngredienti"></span></h1>
	<br>
	<br>
	<span id="lblTempo"></span></h1>
	<br>
	<br>
	<span id="lblPrezzo"></span></h1>
	 	
 		<script
	  src="https://code.jquery.com/jquery-3.3.1.min.js"
	  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	  crossorigin="anonymous"></script>
 	
	<jsp:include page="frammenti/scripts.jsp"></jsp:include>
	<script>
		sessionStorage.setItem('ricetta', '${ ricetta.id }');
	</script>
	<script src="js/dettaglioRicetta.js"></script>
	

</html>