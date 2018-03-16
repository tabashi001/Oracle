class Course < ApplicationRecord

 belongs_to :user


 # def average(course)
 #   #@course = 
 # end	
	validates_presence_of :course_name, :course_duration, :course_fee, :course_affliation,
						  :course_description
end
