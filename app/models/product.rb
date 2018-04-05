class Product < ApplicationRecord
  	belongs_to :line

    validates :name, presence: true
    validates :name, uniqueness: true

end
