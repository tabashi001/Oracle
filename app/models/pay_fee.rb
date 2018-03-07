class PayFee < ApplicationRecord
	belongs_to :user, polymorphic: true
end
