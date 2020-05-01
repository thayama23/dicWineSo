class RemoveColumnsFromWine < ActiveRecord::Migration[5.2]
  def change
    remove_columns :wines, :size, :stock, :shipment
  end
end
