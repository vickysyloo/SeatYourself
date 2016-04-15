class Reservation < ActiveRecord::Base
  validates :date, :time, presence: true
  validates :party_size, numericality: {only_integer: true}

  belongs_to :restaurant
  belongs_to :user
end
