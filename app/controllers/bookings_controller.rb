class BookingsController < ApplicationController
  def index

  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new

    @customers = Customer.all
    @bookings = Booking.all
    @cars = Car.all
    @car = Car.find(params[:id])
    @users= User.all
    @customer = Customer.find(current_user.id)


   end

  def edit

    @booking = Booking.find(params[:id])

  end

  def create


    @booking = Booking.new(booking_params)
    # puts "==================="
    # puts "==================="
    # puts booking_params
    # puts "==================="
    # puts "==================="
     @customer = Customer.find(current_user.id)
     @booking.customer= @customer
    puts "==================="
    puts "==================="
     puts params[:id]
     puts "==================="
    puts "==================="
      @car= Car.find(params[:id])
      @booking.car = @car


      if @booking.save
                redirect_to @booking
      else
                p @booking.errors
                render 'new'
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
    params.require(:booking).permit(:checkout_date)
  end
end