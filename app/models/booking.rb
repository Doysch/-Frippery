class Booking < ApplicationRecord
  belongs_to :costume
  belongs_to :user
end
