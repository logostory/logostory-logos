/**
 * 
 */

$(function(){
	var activeMenuNumber = $('.sidebar').data('active-menu-no');
	$("[data-menu-no]").removeClass("active");
	$("[data-menu-no='"+activeMenuNumber+"']").addClass("active");
});



$(document).ready(function() {
    $('.summernote').summernote({
      height: 200,
      tabsize: 2
    });
  });

//save notice

