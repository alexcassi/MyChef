<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<link rel="shortcut icon" type="image/png" href="immagini/M.png"/>
		<title>riepilogo ordine</title>
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
			#submit {
			  background-color: #FF6A00; /* colore di sfondo    */
			  border: 2px solid #FF6A00; /* bordo dell'elemento */
			  color: white;               /* colore del testo    */
			  hover-border-color: #FF6A00;
			  font-weight: bold;         /* testo in grassetto  */
			  -moz-border-radius: 20px;
			  -webkit-border-radius: 20px;
			  border-radius: 20px;
			  width: 120px;
			  margin-top: 5px;
			}
	</style>					
	
		
	</head>
	<body class="sfondo">
		<jsp:include page="frammenti/navbar.html"></jsp:include>
		<form id="c" name="listaOrdiniChef" method="post"
				action="RispostaOrdineController">
			<div>
				<div class="card" style="width: relative; height: relative; margin: 15px; padding: 15px; border-style: none">
					<label>
	
						&nbsp;ID ${order.id}&nbsp;
						
						<input type="date" id="date" disabled style=" border-style: none; background-color: white; margin-top: 5px;">
						<input type="time" id="time" disabled style=" border-style: none; background-color: white; margin-top: 5px;"> &nbsp;
						
				    	<input type="text" id="input" name="comune" disabled value=" ${ordine.comune}" style="width: 173px; margin: 5px; margin-left: 0px; margin-top: 5px; background-color: white; border-style: none;">
				    	<input type="text" id="input" name="provincia" disabled value=" ${ordine.provincia}" style="width: 173px; margin: 5px; margin-top: 5px; background-color: white; border-style: none;">
						<input type="text" id="input" name="indirizzo" disabled value=" ${ordine.indirizzo}" style="width: 173px; margin: 5px; margin-right: 0px; margin-top: 5px; background-color: white; border-style: none;">
						
						&nbsp;&nbsp;${ordine.totale}&euro;&nbsp;&nbsp;&nbsp;
	
							<input id="submit" type="submit" class="btn btn btn-outline-success" value="dettagli" href="riepilogoOrdineChef"  style="margin-top: 5px;">
						
					</label>
				</div>
			</div>
		</form>
		
			<script src="https://code.jquery.com/jquery-3.3.1.min.js"
				integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
				crossorigin="anonymous"></script>
				
				<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
				
					<script src="js/global_scripts.js"></script>

</body>
						<jsp:include page="frammenti/footer.html"></jsp:include>
</html>