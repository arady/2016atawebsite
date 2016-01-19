// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require ckeditor-jquery
//= require turbolinks
//= require_tree .

var ready = function() { 
	$('.slider').slick({
      dots: true,
	  speed: 300,
	  arrows: true
 	});

 	$('.child_menu').hide();

	$('.parent_menu').hover(function(){
		$(this).children().toggleClass('show');
	});

	$('.parent_menu').click(function(){
		alert('For the horde!');
	});
}

$(document).ready(ready);
$(document).on('page:load', ready);


