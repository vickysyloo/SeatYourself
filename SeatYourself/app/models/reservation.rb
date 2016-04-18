class Reservation < ActiveRecord::Base

  belongs_to :restaurant
  belongs_to :user

  validates :date, :time, presence: true
  validates :party_size, numericality: {only_integer: true}

  validate :valid_date_range, :future_date_only
  validate :available_seats
  validate :reserved_seats
  validate :availability
  validate :hours_of_operation

  def valid_date_range
    if !date.blank? && date > Date.today + 30.days
      errors.add(:date, "Bookings can only be made 30 days in advance.")
    end
  end

  def future_date_only
    if !date.blank? && date <= Date.today
      errors.add(:date, "Bookings can only be made for a later date.")
    end
  end

  def available_seats
    self.restaurant_seats - reserved_seats
  end

  def restaurant_seats
    if self.restaurant
      restaurant.seats
    else
      0
    end
  end

  def reserved_seats
    if time && restaurant
      Reservation.where(time: time.beginning_of_hour..time.end_of_hour, restaurant_id: restaurant.id).sum(:party_size)
    else
      0
    end
  end

  def availability
    v_party_size = party_size.blank? ? 0 : party_size
    if v_party_size != 0 && ((reserved_seats + v_party_size) > available_seats)
      errors.add(:party_size,  "Sorry, there are no available bookings.")
    end
  end

  def hours_of_operation
    if !time.blank? && !time.between?(restaurant.opening, restaurant.closing)
      errors.add(:time, "Sorry, not open at that time! Boo.")
    end
  end

end
