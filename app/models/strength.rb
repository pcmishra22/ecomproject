class Strength < ApplicationRecord
	has_many :products, dependent: :destroy
end
