class Restaurant < ActiveRecord::Base

  validates :name, :opening, :closing, :address, :phone, presence: true
  validates :seats, numericality: {only_integer: true}

  has_many :reservations
  has_many :reviews
  has_many :users, through: :reservations

end
