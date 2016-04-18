class Review < ActiveRecord::Base
  validates :comment, presence: true

  belongs_to :restaurant
  belongs_to :user
end
