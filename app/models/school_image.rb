class SchoolImage < ApplicationRecord
	#belongs_to :school_picture
	has_attached_file :school_picture, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment :school_picture, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end