$("#freccina").hover(function(){
	  $(this).css("opacity", "0.5");
	  $(this).css("filter", "alpha(opacity=50)");
	}, function(){
		$(this).css("opacity", "unset");
 		$(this).css("filter", "unset");
	});