class MenuItem < ApplicationRecord
  validates :item, presence: true, length: {minimum: 4}
  validates :description, presence: true
  validates :price, presence: true
end
