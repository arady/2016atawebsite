$(document).ready(function(){
	$('.junior_content, .adult_content').hide();

	$('.takewondo_menu li').click(function(){
		event.preventDefault();
		$(this).addClass('active');
		$(this).siblings().removeClass('active');
	});

	$('#tiger').click(function(){
		$('.tiger_content').show();
		$('.tiger_content').siblings().hide();
	});

	$('#junior').click(function(){
		$('.junior_content').show();
		$('.junior_content').siblings().hide();
	});

	$('#adult').click(function(){
		$('.adult_content').show();
		$('.adult_content').siblings().hide();
	});

});