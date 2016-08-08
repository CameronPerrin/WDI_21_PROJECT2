class RenameArmorIdToItemIdAgain < ActiveRecord::Migration[5.0]
  def change
    rename_column :carts, :armor_id, :item_id
  end
end
