<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
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
	</style>

</head>
<body class="sfondo">
<jsp:include page="frammenti/navbar.html"></jsp:include>

<div class="card" style="width: relative; height: relative; margin: 15px;">
<br>
<div style="margin-left: 2%;">
<h1><span id="lblNome">${ requested_chef.nome }</span> <span id="lblCognome">${ requested_chef.cognome }</span></h1>
<br>
<br>
<<<<<<< HEAD
	<img src="immagini_caricate/profili/${ requested_chef.immagine_profilo }"style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
=======
	<img id="i" style="
    height: 400px;
    width: 400px;
" src="immagini_caricate/profili/${ requested_chef.immagine_profilo }" onerror="standby()">

>>>>>>> branch 'master' of https://github.com/alexcassi/MyChef2.git
<br>
<br>
	<p><b>l'Area dove si trova �: </b> ${ requested_chef.luogo_lavoro }</p>
	<br>
	<br>
	<b>la sua specialit� �:</b><p id = "spec"></p>
 	<br>
 	<br>
 	<b>le sue ricette:</b>
 	<br>
 	
 	<ul class="mylist">
 	</ul>
</div>
 	
 		<script
	  src="https://code.jquery.com/jquery-3.3.1.min.js"
	  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	  crossorigin="anonymous"></script>
 		
	<script>
		sessionStorage.setItem('email', '${ requested_chef.email }');
	</script>
	
	<script src="js/profiloChef.js"></script>
	
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
	
			
</body>
</html>