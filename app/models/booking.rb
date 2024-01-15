class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :room
  validates :starts_at, presence: true
  validates :ends_at, presence: true

  attr_accessor :date_range

  def total_price
    nights = (self.ends_at.to_date - self.starts_at.to_date).to_i
    total = self.room.price_per_night * nights
    return total
  end
end
