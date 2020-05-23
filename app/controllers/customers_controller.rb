class CustomersController < ApplicationController
  before_action :authenticate_user!

def index

     @customers = Customer.all
     if params.has_key?(:customer_id)
    # get all the bookings for a specific customer
    @bookings = Booking.where(customer_id: params[:customer_id] )
  else
    # get all bookings
    @bookings = Booking.all
  end
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def new
   @cars = Car.all
   @bookings = Booking.all
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def create

    @customer = Customer.new(customer_params)
     # Pass in a date
      #if (customer_params[:lisence_expiry].to_date >  Date.today+14.days)
      @customer.user = current_user
      if @customer.save
        redirect_to @customer
      else
        #byebug
        render 'new'
      end

  end

  def update
    @customer = Customer.find(params[:id])

    @customer.update(customer_params)
    redirect_to @customer
  end

  def destroy
    @bookings = Booking.where(customer_id: current_user.id)
    puts"============"
    puts @bookings.length

    puts"============"
   if  @bookings.length == 0
      @customer = Customer.find(params[:id])
      @customer.destroy
      @user = User.find(current_user.id)
      @user.destroy
      render plain: 'successfully deleted'
    else
      @customer = Customer.find(params[:id])
      @customer.errors.add(:error, 'cars should be returned before deleting account')
      render 'show'
    end
  end



  private
  def customer_params
    params.require(:customer).permit(:name, :address, :lisence_number, :lisence_expiry)
  end
end