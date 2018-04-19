class CreateDegrees < ActiveRecord::Migration[5.1]
  def change
    create_table :degrees do |t|
      t.integer :degree_id
      t.string :degree_name
      t.integer :stream_id

      t.timestamps
    end
  end
end
