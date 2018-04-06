class DemoVideo < ApplicationRecord
	has_attached_file :video
	validates_attachment :video, content_type: { content_type: ["video/mp4"] }
end
