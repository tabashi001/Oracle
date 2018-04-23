class CreateCourseNames < ActiveRecord::Migration[5.1]
  def change
    create_table :course_names do |t|
      t.string :course_name
      t.integer :course_id
      t.integer :stream_id
      t.integer :degree_id
      t.integer :user_id

      t.timestamps
    end
  end
end
