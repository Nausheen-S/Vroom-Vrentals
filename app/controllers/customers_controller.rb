class CustomersController < ApplicationController
  before_action :authenticate_user!

def index

     @customers = Customer.all
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
    @customer = Customer.find(params[:id])
    @customer.destroy
    render plain: 'successfully deleted'
  end

  private
  def customer_params
    params.require(:customer).permit(:name, :address, :lisence_number, :lisence_expiry)
  end
end