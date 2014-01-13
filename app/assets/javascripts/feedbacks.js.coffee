# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).ready ()->
	feedbackform = $('.feedbackform') #.css('height', 'toggle')

	$("div.feedback h2").on "mouseover", ->
		$this = $(this)
		console.log(this)
		# $this.animate "bottom": "-400"
		feedbackform.animate "height": '250'

	$('.feedback').on "mouseout", ->
		feedbackform.animate "height": '0'


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
