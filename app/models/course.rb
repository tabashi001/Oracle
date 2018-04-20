class Course < ApplicationRecord
 belongs_to :user,inverse_of: :courses
 #attr_accessor :courses_attributes 	
 validates_presence_of :course_duration, :course_fee, :course_affliation,
						  :course_description
end
