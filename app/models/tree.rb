class Tree < ApplicationRecord
  has_many :rentals
  belongs_to :user
  has_one_attached :photo
  validates :name, :address, :size, :weight, :description, :price, presence: true
  validates :description, length: { maximum: 300 }
  validates :size, inclusion: { in: %w(small medium large) }
  validates :price, numericality: true
end
