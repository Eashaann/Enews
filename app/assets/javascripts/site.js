$(document).on('turbolinks:load', function() {
	$("#pull-me").click(function(){
	  $(".article_panel").slideToggle("slow");
	});
});