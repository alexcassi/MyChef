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
	.nav_img:hover {
  opacity: 0.5;
  filter: alpha(opacity=50);
}
	</style>

</head>
<body class="sfondo">
<jsp:include page="frammenti/navbar.html"></jsp:include>


<br>
<div style="margin-left: 1%;">
<h1><span id="lblNome">${ requested_chef.nome }</span> <span id="lblCognome">${ requested_chef.cognome }</span></h1>
<br>
<br>
	<img id="i" style="
    height: 400px;
    width: 400px;
" src="immagini_caricate/profili/${ requested_chef.immagine_profilo }" onerror="standby()">

<br>
<br>
	<p id = "spec"></p>
	<br>
	<br>
	<p>l'Area dove si trova è ${ requested_chef.luogo_lavoro }</p>
 	<br>
 	<br>
 	le sue ricette:
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
	
	<script type="text/javascript">
	function standby() {
	    document.getElementById('i').src = 'card_home/placeholder.jpg'
	}
	</script>
	
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
	
			
</body>
</html>