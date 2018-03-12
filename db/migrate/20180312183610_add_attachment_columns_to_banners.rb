class AddAttachmentColumnsToBanners < ActiveRecord::Migration[5.1]
  def change
        add_attachment :banners, :image
  end
end
