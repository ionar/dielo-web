class AddAttachmentImageToLines < ActiveRecord::Migration[5.1]
  def change
    change_table :lines do |t|
      t.attachment :image
    end
  end


end