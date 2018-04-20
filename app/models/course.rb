class Course < ApplicationRecord
 belongs_to :user
 attr_accessor :courses
 validates_presence_of :course_duration, :course_fee, :course_affliation,
						  :course_description
end
