class Page < ApplicationRecord
	attr_accessible :description, :name, :permalink
	validate_uniqueness_of :permalink

	def to_param
		permalink
	end
end
