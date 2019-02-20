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


<br>
<div style="margin-left: 1%;">
<h1><span id="lblNome">${ chef.nome }</span> <span id="lblCognome">${ chef.cognome }</span></h1>
<br>
<br>
	<img src="immagini_caricate/profili/${ chef.immagine_profilo }">
<br>
<br>
    <body> 
        <div>
            <h3> aggiungi immagine del profilo </h3>
            <form action="upload" method="post" enctype="multipart/form-data">
                <input type="file" name="file" />
                <input type="hidden" name="tipo_immagine" value="profilo"/>
                <input type="hidden" name="valore_id" value="${ chef.email }"/>
                <input type="submit" value="upload" />
            </form>          
        </div>
    </body>

	<p id = "spec"></p>
	<br>
	<br>
	<p id="indir"></p>
	<a href = "modificaIndirizzo.jsp">modifica indirizzo</a>
	<br>
 	<br>
 	<a href = "addRicetta.jsp">aggiungi ricetta</a>
 	<br>
 	<br>
 	le tue ricette:
 	<br>
 	
 	<ul class="mylist">
 	</ul>
</div>
 	
 		<script
	  src="https://code.jquery.com/jquery-3.3.1.min.js"
	  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	  crossorigin="anonymous"></script>
 		
	<script>
		sessionStorage.setItem('email', '${ chef.email }');
	</script>
	
	<script src="js/profiloChef.js"></script>
	
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
	
			
</body>
</html>