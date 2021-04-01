class Page < ApplicationRecord
	'''attr_accessible :description, :title, :permalink
	validate_uniqueness_of :permalink'''

	def to_param
		permalink
	end
end
