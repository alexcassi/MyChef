<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" type="image/png" href="immagini/M.png"/>
<meta charset="ISO-8859-1">
<jsp:include page="frammenti/stili.frammento"></jsp:include>

<title>aggiorna ricetta</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
	
<style type="text/css">
.navbar {
	min-height: 100px
}
input[type=number] {
width: 150px;}
input[type=time] {
width: 150px;}
</style>
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
	<br>
	<div class="w-50 p-3 card " style="background-color: #eee; text-align:center; position: relative; left: 25%;min-width:250px;">
<form id="form_ricetta" name="form_ricetta" method="post"
		action="AggiornaRicettaController">
  <input class="form-control form-control-lg" id="nomeric" type="text" placeholder="Nome Ricetta" name="nome_ricetta" autocomplete="on" required/>
  <input class="form-control form-control-lg" id="ingr" type="text" placeholder="Ingredienti" name="ingredienti" autocomplete="on" required/>
  <input style="display:inline" class="form-control form-control-lg" id="tempoprep" type="number" min="0" placeholder="Tempo di Preparazione" name="tempo_preparazione" autocomplete="on" required/>&nbsp min &nbsp
  <input style="display:inline" class="form-control form-control-lg" id="pr" type="number" min="0" step="0.01" placeholder="Prezzo" name="prezzo" autocomplete="on" required/>&nbsp &#8364

	<input type="hidden" name="id" value="${ param.id_ricetta }"/>
    
  <div style="color: green;">${OKMessage}</div>
  <div style="padding-top:16px;">
		<input type="submit" class="btn btn btn-outline-success" value="Aggiorna ricetta">
		</div>
		</form>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
	
	<script >sessionStorage.setItem('id_ricetta', '${ param.id_ricetta }');</script>
	
	<script src="js/mostraCampi.js"></script>
	
		<script src="js/global_scripts.js"></script>
	
	
</body>
</html>