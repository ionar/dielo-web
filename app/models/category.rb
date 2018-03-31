class Category < ApplicationRecord
    has_many :products
    has_many :lines

    validates :name, presence: true
    validates :name, uniqueness: true

end

