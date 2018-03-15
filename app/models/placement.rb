class Placement < ApplicationRecord
	validates_presence_of :title, :description, :companies_visited, :students_placed,
						  :total_students, :year
end
