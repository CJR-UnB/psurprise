// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function(){
   $('#candidate_telephone').mask('(99) 9999-9999');
});

$("#ps__upload_btn").onchange = function () {
	$("#ps__uploaded_file").value = this.value;
};