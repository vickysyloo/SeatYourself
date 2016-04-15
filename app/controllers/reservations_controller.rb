class ReservationsController < ApplicationController
	def index
		@reservations = Reservation.all
	end

	def show
		@reservation = Reservation.find(params[:id])
	end

	def new
		@reservation = Reservation.new
	end

	def edit
	 @reservation = Reservation.find(params[:id])
	end

	def create
		@reservation = Reservation.build(reservation_params)

		if reservation.save
			redirect_to reservation_url
		else
			render :new
		end
	end

	def update
		 @reservation = reservation.find(params[:id])

		if @reservation.update_attributes(reservation_params)
			redirect_to reservation_url(@reservation)
		else
			render :edit
		end
	end

	def destroy
		@reservation = reservation.find(params[:id])
		@reservation.destroy
		redirect_to reservations_url
	end

	private
	def reservation_params
		params.require(:reservation).permit(:date, :time, :seats, :comment)
	end
end
