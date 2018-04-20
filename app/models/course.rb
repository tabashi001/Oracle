class Course < ApplicationRecord
 has_many :course_names, inverse_of: :course
 accepts_nested_attributes_for :course_names, reject_if: :all_blank, allow_destroy: true
 validates_presence_of :course_duration, :course_fee, :course_affliation,
						  :course_description
  def create_course(courses)
    courses.each do |course|
      self.course_names.create(course_name: course)
    end
  end
end
