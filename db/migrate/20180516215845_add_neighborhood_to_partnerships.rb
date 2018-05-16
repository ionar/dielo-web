class AddNeighborhoodToPartnerships < ActiveRecord::Migration[5.1]
  def change
    add_column :partnerships, :neighborhood, :string
  end
end
