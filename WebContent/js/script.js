/**
 * Lxiya
 */

$(function(){
	//var queryStr = ()();
	
	var pathName = window.document.location.pathname;
	var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);
//	console.log(projectName);
	
	var href = window.location.href;
//	console.log(href);
	var index = href.indexOf('title');
	var targetStr = href.slice(index);
//	console.log(targetStr);
	var splitStr = targetStr.split('&');
//	console.log(splitStr);
	var subStr = splitStr[0].substr(6)
//	console.log(subStr);
	var activeSecond = $('ol.breadcrumb li.active-second');
	
	$('.left-menu .menu-content ul li').each(function(){
		if($(this).attr('data-name') === subStr){
			$(this).addClass('active');
			$(this).parents('div.panel-collapse').addClass('in');
		}
		if($(this).hasClass('active')){
			var wayNavActive = $('ol.breadcrumb li.active');
			wayNavActive.html($(this).find('a span').html());
		}
	})
	activeSecond.html($('.menu-head').find('span span.title').html());
		
////	console.log($('a.btn-delete').length);
//	if($('a.btn-delete').length==0){
////		return false;
//	}
//	
//	console.log('测试语句');
	
	$('a.btn-delete').click(function(){
		$('#myModal').find('button.btn-sure-delte').attr('data-contentid',$(this).attr('data-contentid'));
	})
	
	$('button.btn-sure-delte').click(function(){
		var getQueryStr = function (name) {
			var qs = location.search.length > 0 ? location.search.substring(1) : "";
			var items = qs.length ? qs.split('&') : [];
			var item;
			for(var i = 0; i < items.length; i++){
				item = items[i].split('=');
				if (item[0] === name) {
					return item[1];
				}
			}
			return '';
		}
		var contentId = $(this).attr('data-contentid');
		$.ajax({
			url: projectName+"/managementServlet?method=deletePage",
			dataType: 'json',
			data:{"id":contentId, "table":getQueryStr('table')},
			type:"POST",
			success:function(data){
				//alert(data);
				//删除成功后刷新页面
				window.location.reload();
			}
		})
	})
	
})
