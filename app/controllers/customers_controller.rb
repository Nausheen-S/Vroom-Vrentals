class CustomersController < ApplicationController
  def index
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
    @customer = Customer.new(customer_params)
     # Pass in a date
      #if (customer_params[:lisence_expiry].to_date >  Date.today+14.days)
      if @customer.save
        redirect_to @customer
      else
        render 'new'
      end

  end

  def update
  end

  def destroy
  end

  private
  def customer_params
    params.require(:customer).permit(:name, :address, :lisence_number, :lisence_expiry)
  end
end