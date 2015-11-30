// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).on("ready", function(){
	$('.js-video-comment-form').on('submit', function(event){
		event.preventDefault();
		var id = $('.js-video-comment-form').data('id');
		var content = $('#video-comment-content').val();
		var author = $('#video-comment-author').val();
		var info = {
			content: content,
			author: author
		}
		$.ajax({
			type: "POST",
			url: "/videos/" + id + "/comments",
			success: function(){
				console.log("It worked");
			},
			error: function(){
				console.log("It failed");
			}
		})
		//params: {comment: { content: "This is a comment", author: "Josh"} }
	})
})