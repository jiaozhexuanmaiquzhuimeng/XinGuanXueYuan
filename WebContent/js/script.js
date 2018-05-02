/**
 * Lxiya
 */

$(function(){
	var href = window.location.href;
	
	var index = href.indexOf('title');
	
	var targetStr = href.slice(index);
	
	var splitStr = targetStr.split('=');
	
	$('.left-menu .menu-content ul li').each(function(){
		if($(this).attr('data-name') === splitStr[1]){
			$(this).addClass('active');
		}
	})
	
})