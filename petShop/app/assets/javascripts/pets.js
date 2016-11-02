$(document).on("turbolinks:load", function(){
	
	}); 

var clickLinkListener = function(){
	$('#pet-list').on("ajax:success", "a", function(event, response){
		console.log(response);
		// $('#show-toy').append(response);
	});
};
