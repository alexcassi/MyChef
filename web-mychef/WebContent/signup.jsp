<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<jsp:include page="frammenti/stili.frammento"></jsp:include>
<title>MyChef-registrazione dati</title>
</head>
<body>
<jsp:include page="frammenti/navbar.html"></jsp:include>
	<br>
	<div class="w-50 p-3 card " style="background-color: #eee; text-align:center; position: relative; left: 25%">
		<form id="fmSignup" name="signup" method="post" action="SignUpController">
		<div class="alert alert-warning" style="display:none;" role="alert" id="errorMessage">
		</div>
		<input class="form-control form-control-lg" type="text" placeholder="Nome" name="nome" autocomplete="on" required/>
		<input class="form-control form-control-lg" type="text" placeholder="Cognome" name="cognome" autocomplete="on" required/>
		<input class="form-control form-control-lg" type="text"  placeholder="Città" name="citta" autocomplete="on" required/>
      	<input class="form-control form-control-lg" type="text"  placeholder="Provincia" name="provincia" autocomplete="on" required/>
		<input class="form-control form-control-lg" type="text" placeholder="Indirizzo" name="indirizzo" autocomplete="on" required/>
		<input class="form-control form-control-lg" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Inserire un indirizzo email valido!' : '');"  placeholder="Email"name="email" autocomplete="on" required/>
		<input class="form-control form-control-lg" type="password" pattern="^\S{6,}$" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'La password deve essere di almeno 6 caratteri!' : ''); if(this.checkValidity()) form.confpassword.pattern = this.value;"  placeholder="Password" name="password" required/>
		<input class="form-control form-control-lg" type="password" pattern="^\S{6,}$" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Le password non coincidono!' : '');"placeholder="Conferma Password" name="confpassword" required/>
		<input type="button" id="btnRegistra" class="btn btn btn-outline-success" value="Clicca per Registrarti">
		</form>
	</div>

	<jsp:include page="frammenti/scripts.jsp"></jsp:include>
	<script src="js/signup.js"></script>
</body>
</html>