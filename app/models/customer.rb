class Customer < ActiveRecord::Base

   validate :lisence_should_be_valid_for_two_weeks

  def lisence_should_be_valid_for_two_weeks
    if  lisence_expiry < Date.today+14.days
      errors.add(:lisence_expiry, "Lisence should be valid for more than two weeks")
    end
  end
belongs_to :user
has_many :booking
end