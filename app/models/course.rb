class Course < ApplicationRecord
	validates_presence_of :course_name, :course_duration, :course_fee, :course_affliation,
						  :course_description
end
