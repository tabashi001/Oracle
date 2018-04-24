class CreateSchoolImages < ActiveRecord::Migration[5.1]
  def change
    create_table :school_images do |t|
      t.integer :school_picture_id

      t.timestamps
    end
  end
end
