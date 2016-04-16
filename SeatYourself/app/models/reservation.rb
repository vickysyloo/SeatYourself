class Reservation < ActiveRecord::Base

  belongs_to :restaurant
  belongs_to :user

  validates :date, :time, presence: true
  validates :party_size, numericality: {only_integer: true}



  private

  validate :valid_date_range, :future_date_only
  validate :availability

  def valid_date_range
    errors.add(:date, "Bookings can only be made 30 days in advance.") unless date < Date.today + 1.month
  end

  def future_date_only
    errors.add(:date, "Bookings can only be made for a later date.") unless date >= Date.today
  end

  def availability
    other_bookings = restaurant.reservations.where(time: @time).sum(:party_size)

    if (other_bookings + party_size) > restaurant.seats
      errors.add(:party_size,  "Sorry, there are no available bookings.")
    end
  end
end
