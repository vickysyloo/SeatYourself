class Restaurant < ActiveRecord::Base
  validates :date, :time, :address, :phone, presence: true
  validates :seats, numericality: {only_integer: true}

  has_many :reservations
  has_many :users, through: :reservations
end
