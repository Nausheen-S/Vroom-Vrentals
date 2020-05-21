class Booking < ActiveRecord::Base

  validate :checkout_date_should_not_be_more_than_two_weeks

  def checkout_date_should_not_be_more_than_two_weeks
    if  checkout_date > Date.today+14.days
      errors.add(:checkout_date, "Time of booking cannot exceed 14 days")
    end

  end

   belongs_to :customer

    belongs_to :car
end