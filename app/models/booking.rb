class Booking < ActiveRecord::Base
   belongs_to :customer
    has_one :car
end