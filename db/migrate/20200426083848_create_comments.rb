class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :rank
      t.references :user, foreign_key: true
      t.references :wine, foreign_key: true

      t.timestamps
    end
  end
end
