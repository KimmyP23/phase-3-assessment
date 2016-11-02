$(document).on("turbolinks:load", function(){
		clickAddToyListener();
		submitFormForJsonListener();
	}); 

var clickAddToyListener = function(){
	$('#add-toy-link').on("ajax:success", function(event, response){
		$('#form-holder').append(response);
	});
};


var submitFormForJsonListener = function(){
  $("#form-holder").on("ajax:success", "#new_toy", function(event, response){
    console.log(response);
  });
};