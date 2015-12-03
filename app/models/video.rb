class Video < ActiveRecord::Base
	validates :title, :url, presence: true
	# ratyrate_rateable "rating"
	# Validate the format of the URL
	has_many :comments
	has_many :video_categories
	has_many :categories, through: :video_categories
end
