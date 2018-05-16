class Partnership < ApplicationRecord
	validates :name, :cnpj, :kind, :address, :city, :province, :email, :phone, :razao, :cep, :neighborhood, presence: true
end
