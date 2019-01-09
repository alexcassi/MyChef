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
		<input class="form-control form-control-lg" type="text"  placeholder="Città" name="citta" autocomplete="on" required/>
      	<input class="form-control form-control-lg" type="text"  placeholder="Provincia" name="provincia" autocomplete="on" required/>
		<input class="form-control form-control-lg" type="text" placeholder="Indirizzo" name="indirizzo" autocomplete="on" required/>
		<input class="form-control form-control-lg" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Inserire un indirizzo email valido!' : '');"  placeholder="Email"name="email" autocomplete="on" required/>
		<input class="form-control form-control-lg" type="password" pattern="^\S{6,}$" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'La password deve essere di almeno 6 caratteri!' : ''); if(this.checkValidity()) form.confpassword.pattern = this.value;"  placeholder="Password" name="password" required/>
		<input class="form-control form-control-lg" type="password" pattern="^\S{6,}$" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Le password non coincidono!' : '');"placeholder="Conferma Password" name="confpassword" required/>
		<input type="submit" class="btn btn btn-outline-success" value="Clicca per Registrarti">
		</form>
	</div>


</body>
</html>