class Tree < ApplicationRecord
  has_many :rentals
  belongs_to :user
  has_one_attached :photo
end
