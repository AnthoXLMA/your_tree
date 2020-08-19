class User < ApplicationRecord
  has_many :rentals
  has_many :trees
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :photo
  validates :last_name, :first_name, :phone_number, presence: true
  validates :phone_number, uniqueness: true, numericality: { only_integer: true }
end
