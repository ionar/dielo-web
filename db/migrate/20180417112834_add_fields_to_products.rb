class AddFieldsToProducts < ActiveRecord::Migration[5.1]
  def change
  	add_column :products, :description, :text
    add_attachment :products, :image 	#for paperclip gem
    add_attachment :products, :image_high   #for paperclip gem
  end
end
