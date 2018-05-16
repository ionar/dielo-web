class AddCepAndRazaoToPartnerships < ActiveRecord::Migration[5.1]
  def change
    add_column :partnerships, :cep, :string
    add_column :partnerships, :razao, :string
  end
end
