class AddCourseToCourses < ActiveRecord::Migration[5.1]
  def change
    add_column :courses, :course, :string,array:true
  end
end
