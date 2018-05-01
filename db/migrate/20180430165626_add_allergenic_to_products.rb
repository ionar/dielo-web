class AddAllergenicToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :allergenic, :text
  end
end
