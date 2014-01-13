# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).ready ()->
	feedbackform = $('.feedbackform') #.css('height', 'toggle')

	$('html').click (event)->
		# feedbackform.animate "height": '0'
		console.log(event.target);
		clicked = event.target;
		$(clicked).css('color', 'red')
		console.log($(clicked).parents('div.feedback') )	
		if !($(clicked).parents('div.feedback')).is($('div.feedback'))
			feedbackform.animate "height": '0'



	$("div.feedback h3").on "mouseover", (event) ->
		$this = $(this)
		# $this.animate "bottom": "-400"
		# event.stopPropagation()
		feedbackform.animate "height": '310'

	# $('.feedback').on "mouseout", ->
	#	feedbackform.animate "height": '0'


	# $("#formID").ajaxForm ->
  	# 	alert "Thank you for your comment!"


  	#$.fn.popUp = function(){
  	#	var $(this).animate({
  	#		'height': 'toggle'
  	#	})
  	#}

# $('.feedback').on('hover', function(){
# 	var $this = $(this);
# 	$this.animate({
# 		'margin-bottom': '-=100px'
# 	})
# }
