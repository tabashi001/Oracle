class AddAttachmentSchoolPictureToSchoolImages < ActiveRecord::Migration[5.1]
  def self.up
    change_table :school_images do |t|
      t.attachment :school_picture
    end
  end

  def self.down
    remove_attachment :school_images, :school_picture
  end
end
