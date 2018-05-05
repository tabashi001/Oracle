class SchoolVideo < ApplicationRecord
	belongs_to :user
	validates_presence_of :title, :description,:youtube_url
	has_attached_file :video
	validates_attachment :video, content_type: { content_type: ["video/mp4"] }
	validate :videos_count, :on => :create

  	def videos_count
    	if self.user.school_videos.size >= 4
      		errors.add(:base, "Sorry you are already uploaded 4 videos")
    	end
  	end
end
