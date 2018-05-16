class Partnership < ApplicationRecord
	validates :name, :cnpj, :kind, :address, :city, :province, :email, :phone, presence: true
end
