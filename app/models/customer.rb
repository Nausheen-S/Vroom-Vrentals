class Customer < ActiveRecord::Base

   validate :lisence_should_be_valid_for_two_weeks
     #:cars_should_be_returned_to_destroy

  def lisence_should_be_valid_for_two_weeks
    if  lisence_expiry < Date.today+14.days
      errors.add(:lisence_expiry, "Lisence should be valid for more than two weeks")
    end
  end

  #def cars_should_be_returned_to_destroy
    #if @customer.booking.returned == false
      #errors.add( "cars should be returned before deleting account")
 # end

belongs_to :user
has_many :bookings
end