class RemoveArmorPhotoFromItems < ActiveRecord::Migration[5.0]
  def change
    remove_column :items, :armor_photo
  end
end
