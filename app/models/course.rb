class Course < ApplicationRecord
 #belongs_to :user
 #attr_accessor :courses_attributes	
 #accepts_nested_attributes_for :course_name, allow_destroy: true
 validates_presence_of :course_duration, :course_fee, :course_affliation,
						  :course_description
end
