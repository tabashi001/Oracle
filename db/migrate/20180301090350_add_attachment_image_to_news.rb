class AddAttachmentImageToNews < ActiveRecord::Migration[5.1]
  def self.up
    change_table :news do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :news, :image
  end
end
