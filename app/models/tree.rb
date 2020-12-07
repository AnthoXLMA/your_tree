class Tree < ApplicationRecord
  has_many :rentals
  belongs_to :user
  has_one_attached :photo
  validates :name, :address, :size, :weight, :description, :price, :species, presence: true
  validates :description, length: { maximum: 170 }
  validates :size, inclusion: { in: %w(small medium large) }
  validates :price, numericality: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
