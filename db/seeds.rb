# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Video.create(url: "http://i.istockimg.com/video_passthrough/60797474/153/60797474.mp4",
			 title: "People Cheering",
			 description: "People cheering at some game")

Video.create(url: "http://i.istockimg.com/video_passthrough/63379411/153/63379411.mp4",
			 title: "Somebody running",
			 description: "Weird video of someone running")

Video.create(url: "http://i.istockimg.com/video_passthrough/42009088/153/42009088.mp4",
			 title: "Biking",
			 description: "Some dude biking down the road")

Video.create(url: "http://i.istockimg.com/video_passthrough/64479789/153/64479789.mp4",
			 title: "Summer",
			 description: "Sweet video of some people sailing in the summer time.")

Category.create(name: "Sports")
Category.create(name: "Technology")
Category.create(name: "Nature")
Category.create(name: "Comedy")
