class CarsController < ApplicationController
    
    def index
        @cars = Car.all
    end
  
    def show
        @car = Car.find(params[:id])
    end
  
    def new
        @customers = Customer.all
    end
  
    def edit
    end
  
    def create
        @car = Car.new(car_params)
        @car.save
        redirect_to @car
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
  