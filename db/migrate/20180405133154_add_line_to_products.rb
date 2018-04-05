class AddLineToProducts < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :line, foreign_key: true
  end
end
