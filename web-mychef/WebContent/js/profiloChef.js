$(() => {
	var email = sessionStorage.getItem('chef_email');
	$.ajax({
		url: 'ListaRicetteServlet?chef_email=' + email,
		method: 'get'
	})
	.done((u) => {
		console.log(u);
		var lista_ricette = u;
		var cList = $('ul.mylist')
		$.each(lista_ricette, function(i)
		{
		    var li = $('<li/>')
		        .appendTo(cList);
		    var aaa = $('<a/>')
		        .text(lista_ricette[i].nome_ricetta)
		        .appendTo(li);
		});

	});
});