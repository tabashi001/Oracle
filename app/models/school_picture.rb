class SchoolPicture < ApplicationRecord
 has_many :school_images
 accepts_nested_attributes_for :school_images, reject_if: :all_blank, allow_destroy: true
  def create_images(images)
    images.each do |image|
      self.school_images.create(school_picture: image)
    end
  end
end
