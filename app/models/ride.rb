class Ride < ActiveRecord::Base
  belongs_to :user
  belongs_to :attraction

  def take_ride
    if self.user.height < self.min_height && self.user.tickets < self.tickets
    return "Sorry. You do not have enough tickets to ride the #{attraction.name}. You are not tall enough to ride the #{attraction.name}."

    if self.user.height < self.min_height
      return "Sorry. You are not tall enough to ride the #{attraction.name}."

    else
      self.user.tickets < self.tickets
        return "Sorry. You do not have enough tickets to ride the #{attraction.name}."

        

  end
end
