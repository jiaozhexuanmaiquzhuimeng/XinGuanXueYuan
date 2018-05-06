/**
 * Lxiya
 */

$(function(){
	var href = window.location.href;
	console.log(href);
	var index = href.indexOf('title');
	var targetStr = href.slice(index);
	console.log(targetStr);
	var splitStr = targetStr.split('&');
	console.log(splitStr);
	var subStr = splitStr[0].substr(6)
	console.log(subStr);
	var activeSecond = $('ol.breadcrumb li.active-second');
	
	$('.left-menu .menu-content ul li').each(function(){
		if($(this).attr('data-name') === subStr){
			$(this).addClass('active');
		}
		if($(this).hasClass('active')){
			var wayNavActive = $('ol.breadcrumb li.active');
			wayNavActive.html($(this).find('a span').html());
		}
	})
	
	activeSecond.html($('.menu-head').find('span span.title').html());
	
})