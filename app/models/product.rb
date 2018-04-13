class Product < ApplicationRecord
  	belongs_to :line

    validates :name, presence: true
    validates :name, uniqueness: true


    scope :pertencentes_a_linha, -> (line) { where line: line }
end
