class AddFeeToCourseNames < ActiveRecord::Migration[5.1]
  def change
    add_column :course_names, :fee, :string
  end
end
