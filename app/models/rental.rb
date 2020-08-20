class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :tree
  validates :start_on, :end_on, presence: true #:total_price, :status,
  validates :start_on, :end_on, format: { with: /([12]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01]))/ }
  validates :total_price, numericality: true
end
