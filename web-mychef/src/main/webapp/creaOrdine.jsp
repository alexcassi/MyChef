<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html style="height:100%;">
	<head>
		<link rel="shortcut icon" type="image/png" href="immagini/M.png"/>
		<title>Crea ordine MyChef</title>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet"
			href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
			integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
			crossorigin="anonymous">
		<link rel="stylesheet" href="css/stile.css">
		
		
		<style>
	.nav_img:hover {
  opacity: 0.5;
  filter: alpha(opacity=50);
}

body::after{ content:''; display:block; height:100px; }


.titoli {
	color: #FF6A00;
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
			.number {
				width: 30px;
				display:inline-block;
				margin-left: 5px;
				border-style: none;
			}
			

		</style>					
		
	</head>
	<body class="sfondo" style="min-height:100%; padding:0; margin:0; position:relative;">
		<jsp:include page="frammenti/navbar.html"></jsp:include>
		
			<!--<div class="card" style="width: relative; height: relative; margin: 15px; padding: 15px; border-style: none">
			  <h4 style="text-align: left; color: #FF6A00;">Selezionare le ricetta desiderate e quante porzioni si desiderano</h4> idea, provvisorio 
			</div> -->
			<div class="card" style="width: relative; height: relative; margin: 15px; padding: 15px; border-style: none">
				<table class="table" style="width: relative;">
				  <thead>
				    <tr class="titoli">
				      <th scope="col">&nbsp;</th>
				      <th scope="col">Quantità</th>
				      <th scope="col">Ricette</th>
				      <th scope="col">Prezzo</th>
				      <th scope="col">&nbsp;</th>
				  	</tr>
				  </thead>
				  <tbody class ="da_riempire">
				</table>
				</div>
			
		<div style="padding-top:16px;">
		
		<form action="OutputCreaOrdineController" method="get">
				<input type="hidden" value="" id="contenuto" name="contenuto">
				<input type="hidden" value="" id="totale" name="totale">
				<input id ="email_chef_request" name="email_chef_request" type="hidden" value="${email_chef_request}">
				<input type="submit" id="continua" class="btn btn btn-outline-success" value="CONTINUA">
		</form>
		
		</div>	
		
		
			
		
	<script>
		sessionStorage.setItem('cliente_request', '${cliente.email}');
	</script>
					<script src="https://code.jquery.com/jquery-3.3.1.min.js"
		integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
		crossorigin="anonymous"></script>
		
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

	<script src="js/global_scripts.js"></script>
	<script src="js/listaCreaOrdine.js"></script>
	
						<jsp:include page="frammenti/footer.html"></jsp:include>
	</body>
</html>