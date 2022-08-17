class Item < ApplicationRecord
  validates :name_of_items, presence: true
  belongs_to :user

  has_one_attached :image
  validates :image, presence: true
end
