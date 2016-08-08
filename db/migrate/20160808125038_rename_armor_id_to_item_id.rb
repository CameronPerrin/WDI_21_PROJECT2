class RenameArmorIdToItemId < ActiveRecord::Migration[5.0]
  def change
    rename_column :wishlists, :armor_id, :item_id
  end
end
