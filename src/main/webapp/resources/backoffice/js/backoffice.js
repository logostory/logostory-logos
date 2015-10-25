/**
 * 
 */

$(function(){
	var activeMenuNumber = $('.sidebar').data('active-menu-no');
	$("[data-menu-no]").removeClass("active");
	$("[data-menu-no='"+activeMenuNumber+"']").addClass("active");
});

$(function(){
	$('.summernote').summernote();
});

//save notice

