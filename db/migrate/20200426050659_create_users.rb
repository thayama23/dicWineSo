class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :full_name
      t.string :full_name_furigana
      t.integer :age
      t.integer :zip_code
      t.string :address
      t.string :building_name
      t.integer :telephone
      t.boolean :ads, default: true
      t.boolean :admin, default: false, null: false

      t.timestamps
    end
  end
end
