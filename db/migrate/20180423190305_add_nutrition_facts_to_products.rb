class AddNutritionFactsToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :nutrition_facts, :text
  end
end
