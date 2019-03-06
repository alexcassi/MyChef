<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" type="image/png" href="immagini/M.png"/>
	<meta charset="UTF-8">
<jsp:include page="frammenti/stili.frammento"></jsp:include>
<link rel="stylesheet" href="css/stile.css">

<title>aggiungi ricetta</title>

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

	<style>
	img:hover {
  opacity: 0.5;
  filter: alpha(opacity=50);
}
#submit {
  background-color: #FF6A00; /* colore di sfondo    */
  border: 2px solid #FF6A00; /* bordo dell'elemento */
  color: white;               /* colore del testo    */
  font-weight: bold;         /* testo in grassetto  */
 -moz-border-radius: 20px;
 -webkit-border-radius: 20px;
 border-radius:20px;
}

	</style>

</head>
<body class="sfondo">
<jsp:include page="frammenti/navbar.html"></jsp:include>
	<br>
	<div class="w-50 p-3 card " style="background-color: #eee; text-align:center; position: relative; left: 25%;min-width:250px;">
<form id="form_indirizzo" name="form_indirizzo" method="post"
		action="ModificaIndirizzoController">
  <input class="form-control form-control-lg" id="indir" type="text" placeholder="Luogo di lavoro" name="luogo_lavoro" autocomplete="on" required/>
  
  <input type="hidden" name="chef_email" value="${ chef.email }" />
  
  <div style="color: green;">${OKMessage}</div>
  <div style="padding-top:16px;">
		<input id ="submit" type="submit" class="btn btn btn-outline-success" value="Modifica indirizzo">
		</div>
		</form>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
	
		<script src="js/global_scripts.js"></script>
	
</body>
</html>