$(function() {
	$('#errorMessage').click(() => $('#errorMessage').hide('fast'));
	$('#btnRegistra').click(e => {
		e.preventDefault();
		$.ajax({
			url: 'SignUpController',
			method: 'post',
			data: $('#fmSignup').serialize()
		})
		.done(esito => {
			if (esito.esito) {
			location.href = 'welcome.jsp';
			} else {
				$('#errorMessage').html(esito.messaggio);
				$('#errorMessage').show('fast');
			}
		})
		.fail(err => {
			console.error(err);
			$('#errorMessage').html(err);
			$('#errorMessage').show('fast');
		});
	});
});