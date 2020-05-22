class BookingsController < ApplicationController
  def index

  end

  def show
    @booking = Booking.find(params[:id])
    @car = @booking.car



    puts "================"
    puts "================"
    puts @car
    puts "================"
    puts "================"
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
    @booking.update_attribute(:returned, true)
    @booking.car.update_attribute(:available,true)

    @booking.save
    # @booking.returned = true
    # @booking.car.available = true

    redirect_to root_path


  end

  def destroy
      @booking = Booking.find(params[:id])
      @car = Car.find(params[:id])

      # puts "================="
      # puts "================="
      # puts @booking.car_id
      # puts "================="
      # puts "================="

       @car= @booking.car_id


      @booking.destroy




      redirect_to root_path
  end


  # def return_car
  #     puts "++++++++++++++++++++++++++"
  #     @booking = Booking.find(params[:id])
  #     puts "================="
  #     puts "12345"
  #     puts @bookings
  #     puts "67890"
  #     puts "================="

  #     @car = @booking.car.available

  #     @car.to_s.update(available: true)

  #     (@booking.returned).to_s.update(returned:true)

  #     redirect_to root_path

  # end


  private
  def booking_params
    params.require(:booking).permit(:checkout_date,:total_price)

  end

  def return_car_params
    params.require(:booking).permit(:returned)
  end

end