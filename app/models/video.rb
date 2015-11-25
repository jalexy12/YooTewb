class Video < ActiveRecord::Base
	validates :title, :url, presence: true
	# Validate the format of the URL
	has_many :comments
end
