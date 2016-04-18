class User < ActiveRecord::Base

  has_secure_password
  validates :first_name, :last_name, :phone, :password, presence: true
  validates :email, uniqueness: true

  has_many :reservations
  has_many :reviews
  has_many :restaurants, through: :reservations

end
