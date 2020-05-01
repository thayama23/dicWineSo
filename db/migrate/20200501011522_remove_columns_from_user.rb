class RemoveColumnsFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_columns :users, :full_name, :full_name_furigana, :age, :zip_code, :address, :building_name, :telephone, :ads
  end
end
