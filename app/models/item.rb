class Item < ApplicationRecord
  has_and_belongs_to_many :categories
  belongs_to :user
  has_many :wishlists
  has_many :carts
  mount_uploader :item_image, ItemImageUploader
end
