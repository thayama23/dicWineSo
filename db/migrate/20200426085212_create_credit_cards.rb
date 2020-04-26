class CreateCreditCards < ActiveRecord::Migration[5.2]
  def change
    create_table :credit_cards do |t|
      t.string :payjp_costomerId
      t.string :payjp_cardId
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
