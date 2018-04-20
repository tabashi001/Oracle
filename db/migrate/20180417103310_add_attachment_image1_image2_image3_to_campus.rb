class AddAttachmentImage1Image2Image3ToCampus < ActiveRecord::Migration[5.1]
  def self.up
    change_table :campus do |t|
      t.attachment :image1
      t.attachment :image2
      t.attachment :image3
    end
  end

  def self.down
    remove_attachment :campus, :image1
    remove_attachment :campus, :image2
    remove_attachment :campus, :image3
  end
end
