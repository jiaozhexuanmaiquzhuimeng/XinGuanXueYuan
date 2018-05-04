/**
 * Lxiya
 */

$(function(){
	var href = window.location.href;
	var index = href.indexOf('title');
	var targetStr = href.slice(index);
	var splitStr = targetStr.split('=');
	var activeSecond = $('ol.breadcrumb li.active-second');
	
	$('.left-menu .menu-content ul li').each(function(){
		if($(this).attr('data-name') === splitStr[1]){
			$(this).addClass('active');
		}
		if($(this).hasClass('active')){
			var wayNavActive = $('ol.breadcrumb li.active');
			wayNavActive.html($(this).find('a span').html());
		}
	})
	
	activeSecond.html($('.menu-head').find('span span.title').html());
	
})