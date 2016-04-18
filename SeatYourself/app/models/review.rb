class Review < ActiveRecord::Base
  validates :comment, presence: true

  belongs_to :restaurants
  belongs_to :users
end
