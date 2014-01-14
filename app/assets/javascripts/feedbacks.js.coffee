# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).ready ()->
	feedbackArea = $('.feedbackArea') #.css('height', 'toggle')

	$('html').click (event)->
		# feedbackArea.animate "height": '0'
		# console.log(event.target);
		clicked = event.target;
		# console.log($(clicked).parents('div.feedback') )	
		if !($(clicked).parents('div.feedback')).is($('div.feedback'))
			feedbackArea.animate "height": '0', ->
				$this = $(this)
				$this.find('.feedbackform').show()
				$this.find('#feedbackAlert').html("") 	# Clear??


	$('#formID').bind "ajax:failure", (e, xhr, status, error) ->
		# $('#formID').prepend("<p> error </p>")
		$("<p></p>",
			text: xhr
		).insertBefore $("#formID")


	$("div.feedback h3").on "mouseover", (event) ->
		$this = $(this)
		# $this.animate "bottom": "-400"
		# event.stopPropagation()
		feedbackArea.animate "height": '320'

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
