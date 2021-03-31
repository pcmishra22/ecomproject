class Category < ApplicationRecord
  belongs_to :site
  has_many :products, dependent: :destroy
end
