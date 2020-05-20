class CarsController < ApplicationController
    before_action :authenticate_user!, :except => [ :show, :index ]
    def index
        if user_signed_in?
            
           puts "=========================="
            if Customer.exists?(current_user.id)
                @customer = Customer.find(current_user.id)
            end
        end
        @cars = Car.all
    end
  
    def show
        @car = Car.find(params[:id])
        @customers = Customer.all
    end
  
    def new
        @customers = Customer.all
        @customer.user = current_user
        
    end
  
    def edit
    end
  
    def create
    end
  
    def update
    end
  
    def destroy
    end

    private
  def car_params
    params.require(:car).permit(:description, :car_type, :image_url, :price_per_hour)
  end
  end
  