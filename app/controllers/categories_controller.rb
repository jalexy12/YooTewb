class CategoriesController < ApplicationController
	def show_videos
		@category = Category.find_by(name: params[:name].capitalize)
		@videos = @category.videos
		render 'show_videos'
	end
end
