class CreateWines < ActiveRecord::Migration[5.2]
  def change
    create_table :wines do |t|
      t.text :image
      t.string :type
      t.string :country
      t.string :origin
      t.string :name
      t.string :variety
      t.integer :vintage
      t.integer :taste
      t.integer :size
      t.integer :stock
      t.boolean :shipment
      t.string :overview
      t.integer :ranking

      t.timestamps
    end
  end
end
