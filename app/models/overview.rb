class Overview < ApplicationRecord
	belongs_to :user, polymorphic: true
end
