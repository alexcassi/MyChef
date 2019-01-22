<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<jsp:include page="frammenti/stili.frammento"></jsp:include>

<title>MyChef-registrazione dati</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<style type="text/css">
.navbar {
	min-height: 100px
}
</style>
</head>
<body>
<jsp:include page="frammenti/navbar.html"></jsp:include>
	<br>
	<div class="w-50 p-3 card " style="background-color: #eee; text-align:center; position: relative; left: 25%">
		<form name="signup" method="post" action="SignUpController">
		<div style="color: #FF0000;">${errorMessage1}</div>
		<input class="form-control form-control-lg" type="text" placeholder="Nome" name="nome" autocomplete="on" required/>
		<input class="form-control form-control-lg" type="text" placeholder="Cognome" name="cognome" autocomplete="on" required/>
		<input class="form-control form-control-lg" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Inserire un indirizzo email valido!' : '');"  placeholder="Email"name="email" autocomplete="on" required/>
		<input class="form-control form-control-lg" type="password" pattern="^\S{6,}$" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'La password deve essere di almeno 6 caratteri!' : ''); if(this.checkValidity()) form.confpassword.pattern = this.value;"  placeholder="Password" name="password" required/>
		<input class="form-control form-control-lg" type="password" pattern="^\S{6,}$" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Le password non coincidono!' : '');"placeholder="Conferma Password" name="confpassword" required/>
		
		

	
	<nav class="nav justify-content-center">
  <div class="nav nav-tabs" id="nav-tab" role="tablist">
    <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-chef" role="tab" aria-controls="nav-chef" aria-selected="true">Chef</a>
    <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-cliente" role="tab" aria-controls="nav-cliente" aria-selected="false">Cliente</a>
   
  </div>
</nav>
<div class="tab-content" id="nav-tabContent">
  <div class="tab-pane fade show active" id="nav-chef" role="tabpanel" aria-labelledby="nav-chef-tab">
  <input class="form-control form-control-lg" type="text" placeholder="Nome Ricetta" name="nome_ricetta" autocomplete="on" required/>
  <input class="form-control form-control-lg" type="text" placeholder="Ingredienti" name="ingredienti" autocomplete="on" required/>
  <input class="form-control form-control-lg" type="text" placeholder="Tempo di Preparazione" name="tempo_preparazione" autocomplete="on" required/>
  <input class="form-control form-control-lg" type="text" placeholder="Prezzo" name="prezzo" autocomplete="on" required/>
  </div>
  <div class="tab-pane fade" id="nav-cliente" role="tabpanel" aria-labelledby="nav-cliente-tab">
  <input class="form-control form-control-lg" type="text" placeholder="Indirizzo" name="indirizzo" autocomplete="on" required/>
  <input class="form-control form-control-lg" type="text"  placeholder="Provincia" name="provincia" autocomplete="on" required/>
	<input class="form-control form-control-lg" type="text" placeholder="Città" name="citta" autocomplete="on" required/>
	
  </div>
  
</div>	
		
		
		
		
		
		
		
		
		
		
		
		
		<input type="submit" class="btn btn btn-success" value="Clicca per Registrarti">
		</form>
	</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

</body>
</html>