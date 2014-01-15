# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).ready ()->
	feedbackArea = $('.feedbackArea')
	container = $('.feedback');

	AreaHeight = feedbackArea.height()
	feedbackArea.css "height", '0'

	$('html').click (event)->
		clicked = event.target;
		if !($(clicked).parents('div.feedback')).is(container)
			feedbackArea.animate "height": '0', ->
				$this = $(this)
				$this.find('.feedbackForm').show()
				$this.find('#feedbackAlert').html("")
											.css('height','auto')
											.removeClass('feedbackSuccess')

	$('#formID').bind "ajax:failure", (e, xhr, status, error) ->
		$("<p></p>",
			text: error
		).insertBefore $("#formID")


	container.find("h3").on "mouseover", () ->
		feedbackArea.animate "height": AreaHeight




	# $('.feedback').on "mouseout", ->
	#	feedbackForm.animate "height": '0'


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
