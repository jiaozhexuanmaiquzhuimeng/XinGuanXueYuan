;(function ($, undefined) {
	$.fn.getUp = function (options) {
		var defaults = {
			elemtype:'click',
			top:0,
			upspeed:400,
			scrollpot:200
		};

		var options = $.extend(defaults, options);
		$(this).each(function() {
			var that = $(this);
			$(document).on('scroll', function (event) {
				event.preventDefault();
				if ($(window).scrollTop() >= options.scrollpot) 
				{
					that.fadeIn();
				}
				else
				{
					that.fadeOut();
				}
			});
			$(this).on(options.elemtype, function(event) {
				event.preventDefault();
				$('body, html').animate({'scrollTop':options.top}, options.upspeed);
			});
		});
	}
})(jQuery);