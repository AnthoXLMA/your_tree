class Tree < ApplicationRecord
  has_many :rentals
  belongs_to :user
end
