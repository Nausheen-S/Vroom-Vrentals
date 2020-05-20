class CarsController < ApplicationController
    before_action :authenticate_user!, :except => [ :show, :index ]
    def index
        if user_signed_in?
            
            puts current_user.id
            puts Customer.where(user_id: current_user.id).inspect
            puts "============================="
            if Customer.where(user_id: current_user.id)
                puts "=========================="
                @customer = Customer.where(user_id: current_user.id)[0]
                puts @customer.inspect
                puts "++++++++++++++"
                
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
  