class RemoveImageFromBanner < ActiveRecord::Migration[5.1]
  def change
  	remove_column :banners, :image
  end
end
