class Room < ApplicationRecord
  belongs_to :hotel
  has_many :bookings, dependent: :destroy
  validates :capacity, numericality: { only_integer: true, greater_than: 0 }
  validates :price_per_night, numericality: { greater_than: 0 }
end
