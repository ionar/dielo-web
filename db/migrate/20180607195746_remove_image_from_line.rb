class RemoveImageFromLine < ActiveRecord::Migration[5.1]
  def change
  	remove_column :lines, :image
  end
end
