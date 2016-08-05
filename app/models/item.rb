class Item < ApplicationRecord
  belongs_to :user
  mount_uploader :item_image, ItemImageUploader
end
