class CommentsController < ApplicationController
	def create
		@video = Video.find_by(id: params[:video_id])
		@comment = @video.comments.new(comment_params)
		if @comment.save
			render json: @comment
		else
			# render 'videos/show'
		end
	end

	private 

	def comment_params
		params.require(:comment).permit(:author, :content)
	end
end
