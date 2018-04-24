class AddAttachmentImage4ToCampus < ActiveRecord::Migration[5.1]
  def self.up
    change_table :campus do |t|
      t.attachment :image4
    end
  end

  def self.down
    remove_attachment :campus, :image4
  end
end
