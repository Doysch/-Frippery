class Booking < ApplicationRecord
  belongs_to :costume
  belongs_to :user

  def formatted_date(date)
    array = date.split('-')
    formatted = Date.new(array[0].to_i, array[1].to_i, array[2].to_i)
    formatted.strftime("%m/%d/%Y")
  end
end
