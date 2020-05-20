class BookingsController < ApplicationController
  def index

  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new

    @customers = Customer.all
    @bookings = Booking.all


  end

  def edit

    @booking = Booking.find(params[:id])

  end

  def create


    @booking = Booking.new(booking_params)
      @booking.user = customer_user

      if @booking.save
                @customers = Customer.all
                @bookings = Booking.all
                redirect_to @booking
      else
                p @booking.errors
                redirect_to new_booking_path
      end


  end

  def update
    @booking = Booking.find(params[:id])

    @booking.update(booking_params)
    redirect_to @booking
  end

  def destroy

      @booking = Booking.find(params[:id])
      @booking.destroy


      redirect_to root_path
  end

  private
  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price, :lisence_expiry)
  end
end