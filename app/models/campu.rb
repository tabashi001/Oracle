class Campu < ApplicationRecord
	validates_presence_of :title, :description
	has_attached_file :image1
	has_attached_file :image2
	has_attached_file :image3
	has_attached_file :image4
  validates_attachment :image1, :content_type => { :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif", "application/pdf", "application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document" ] }
  validates_attachment :image2, :content_type => { :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif", "application/pdf", "application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document" ] }
  validates_attachment :image3, :content_type => { :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif", "application/pdf", "application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document" ] }
  validates_attachment :image4, :content_type => { :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif", "application/pdf", "application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document" ] }
end
