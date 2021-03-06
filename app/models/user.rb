class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :items, dependent: :destroy
  has_many :wishlists, dependent: :destroy
  has_many :carts, dependent: :destroy
  mount_uploader :user_image, UserImageUploader
end
