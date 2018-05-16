class CreatePartnerships < ActiveRecord::Migration[5.1]
  def change
    create_table :partnerships do |t|
      t.string :name
      t.string :cnpj
      t.string :kind
      t.string :address
      t.string :city
      t.string :province
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
