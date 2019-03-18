<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html style="height: -webkit-fill-available;">
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

<div class="card" style="width:800px; height: relative; margin: 15px; padding-bottom: 25px">
<br>
<div style="margin-left: 1.89%;">
<h1><span id="lblNome">${ requested_chef.nome }</span> <span id="lblCognome">${ requested_chef.cognome }</span></h1>
<br>
<br>
	<img id="i" src="immagini_caricate/profili/${ requested_chef.immagine_profilo } "style="height: 400px;
    width: 400px;  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);" onerror="standby()">
<br>
<br>
	<p><b>L' area dove si trova è: </b> ${ requested_chef.luogo_lavoro }</p>
	<br>
	<p><b>Contattami: </b> ${ requested_chef.email }</p>
	<br>
	<br>
	<b>la sua specialità è:</b><p id = "spec"></p>
 	<br>
 	<br>
 	<b>le sue ricette:</b>
 	<br>
 	
 	<ul class="mylist">
 	</ul>
</div>
 	</div>
 		<script
	  src="https://code.jquery.com/jquery-3.3.1.min.js"
	  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	  crossorigin="anonymous"></script>
 		
	<script>
		sessionStorage.setItem('email', '${ requested_chef.email }');
	</script>
	
	<script src="js/mostraProfiloChef.js"></script>
	
	<script type="text/javascript">
	function standby() { document.getElementById('i').src = "card_home/placeholder.jpg"}
	</script>
	
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
	
		<script src="js/global_scripts.js"></script>
			
</body>

		<jsp:include page="frammenti/footer.html"></jsp:include>
</html>