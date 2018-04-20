class AddStreamIdToCourse < ActiveRecord::Migration[5.1]
  def change
    add_column :courses, :stream_id, :integer
    add_column :courses, :degree_id, :integer
  end
end
