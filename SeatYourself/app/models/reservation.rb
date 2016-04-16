class Reservation < ActiveRecord::Base
	validates :date, :time, :comment

	validates :party_size, numericality: {only_integer: true}

	validates :valid_date_range
	validates :future_date_only
	validates :availability

	validates :valid_date_range
	validates :future_date_only
	validates :availability

		private
		def valid_date_range
			errors.add(:date, "Bookings can only be made 30 days in advance.") unless date < Date.today + 1.month
		end

		def future_date_only
			errors.add(:date, "Bookings can only be made for a later date.") unless date >= Date.today
		end

		def availability
			other_bookings = restaurant.reservations.where(time: time, date: date).sum(:party_size)

			if (other_bookings + party_size) > restaurant.seats
				errors.add(:party_size,  "Sorry, there are no available bookings.")
			end
		end

end
