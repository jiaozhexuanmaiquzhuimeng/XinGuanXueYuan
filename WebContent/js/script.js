/**
 * Lxiya
 */
var pathName = window.document.location.pathname;
var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);

var href = window.location.href;
var index = href.indexOf('title');
var targetStr = href.slice(index);
var splitStr = targetStr.split('&');
var subStr = splitStr[0].substr(6);

$(function(){
	var activeSecond = $('ol.breadcrumb li.active-second');
	
	$('.left-menu .menu-content li').each(function(){
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
			
	$('a.btn-delete').click(function(){
		$('#myModal').find('button.btn-sure-delete').attr('data-contentid',$(this).attr('data-contentid'));
	})
	
	//删除文章
	$('button.btn-sure-delete').click(function(){
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
				//删除成功后刷新页面
				window.location.reload();
			}
		})
	})
	
	//删除用户
	$('button.btn-sure-delete').click(function(){
		var contentId = $(this).attr('data-contentid');
		$.ajax({
			url: projectName+"/managementServlet?method=deleteUser",
			dataType: 'json',
			data:{"id":contentId},
			type:"POST",
			success:function(data){
				//删除成功后刷新页面
				window.location.reload();
			}
		})
	})
	
})
