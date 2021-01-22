class CreateProduct < ActiveRecord::Migration[6.0]
  def change
    create_table :product do |t|
      t.string :name
      t.string :url_image
      t.float :price
      t.int :discount
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
