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
    @date = (Date.today-(Date.today-10))

    # puts "=============="
    #  puts "=============="
    #   puts "=============="
    #   puts (Date.today)
    #    puts (Date.today - 10)
    #   puts (Date.today - (Date.today - 10))
    #   puts (@date * 5).to_i

    #   puts "=============="
    #  puts "=============="
    #   puts "=============="


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
     @car= Car.find(params[:id])
      @booking.car = @car
      puts "=============="
     puts "=============="
      puts "=============="
      puts @booking.checkout_date
      puts (@booking.checkout_date-(Date.today)).to_i
      puts @car.price_per_hour
      puts "=============="
     puts "=============="
      puts "=============="
      @rate = (@car.price_per_hour)
      @duration = (@booking.checkout_date-(Date.today)).to_i
      @total = @rate * @duration
      puts "=============="
      puts "=============="
      puts @total
      puts "=============="
      puts "=============="
      @booking.total_price = @total
      puts "=============="
      puts "=============="
      puts @car.available
      puts "=============="
      puts "=============="



      if @booking.save
                # @car.available = false
                @car.update(available: false)
                puts "=============="
                puts "=============="
                puts @car.available
                puts "=============="
                puts "=============="
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