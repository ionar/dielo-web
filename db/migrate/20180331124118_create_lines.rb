class CreateLines < ActiveRecord::Migration[5.1]
  def change
    create_table :lines do |t|
      t.references :category, foreign_key: true
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
