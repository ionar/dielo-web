class Product < ApplicationRecord
  belongs_to :category

  validates :name, presence: true


  #rails_admin do
  #  configure :category do
  #    label 'Categoria: '
  #  end
  #end
end
