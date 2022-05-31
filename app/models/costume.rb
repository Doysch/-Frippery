class Costume < ApplicationRecord
  belongs_to :user_id
  has_many :users, through: :bookings
  has_many :bookings, dependend: :destroy
  has_one_attached :photo
  validates :name, :photo, uniqueness: true, presence: true
end
