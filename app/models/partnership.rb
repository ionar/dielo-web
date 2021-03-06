class Partnership < ApplicationRecord
	validates :name, :cnpj, :kind, :address, :city, :province, :email, :phone, :razao, :cep, :neighborhood, presence: true
=begin
rails_admin do
		show do
	        field :name {label {"Nome"}}
	        field :razao {label {"Razão Social"}}
	        field :cnpj {label {"Cnpj"}}
	        field :kind {label {"Tipo de estabelecimento"}}
	        field :address {label {"Endereço"}}
	        field :cep {label {"Cep"}}
	        field :neighborhood {label {"Bairro"}}
	        field :city {label {"Cidade"}}
	        field :province {label {"Estado"}}
	        field :email {label {"Email"}}
	        field :phone {label {"Fone"}}	        
	        field :created_at {label {"Cadastrado em"}}
		end
		
		list do
			field :created_at {label {"Cadastrado em"}}
	        field :name {label {"Nome"}}
	        field :razao {label {"Razão Social"}}
	        field :cnpj {label {"Cnpj"}}
	        field :kind {label {"Tipo de estabelecimento"}}
	        field :address {label {"Endereço"}}
	        field :cep {label {"Cep"}}
	        field :neighborhood {label {"Bairro"}}
	        field :city {label {"Cidade"}}
	        field :province {label {"Estado"}}
	        field :email {label {"Email"}}
	        field :phone {label {"Fone"}}	        
	        
		end		
	end	
=end

end
