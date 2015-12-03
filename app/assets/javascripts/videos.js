// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).on("ready", function(){
	$('.js-video-comment-form').on('submit', function(event){
		event.preventDefault();
		var id = $('.js-video-comment-form').data('id');
		var content = $('#video-comment-content').val();
		var author = $('#video-comment-author').val();
		var info = {
			comment: {
				content: content,
				author: author
			}
		}
		//params: {comment: { content: "This is a comment", author: "Josh"} }

		$.ajax({
			type: "POST",
			url: "/videos/" + id + "/comments",
			data: info,
			success: function(response){
						var commentHtml = '<li>\
													<strong>' + response.author + ' 	says: </strong>\
													<br>\
													<p>' + response.content + '</p>\
												 </li>' 
						$('.comment-list').append(commentHtml)
						var content = $('#video-comment-content').val("");
						var author = $('#video-comment-author').val("");

			},
			error: function(){
				console.log("It failed");
			}
		})
	})
})