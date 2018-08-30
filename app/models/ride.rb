class Ride < ActiveRecord::Base
  belongs_to :user
  belongs_to :attraction

  def take_ride
    if tall_enough? && enough_tickets?
      return "Sorry. You do not have enough tickets to ride the #{attraction.name}. You are not tall enough to ride the #{attraction.name}."
    end

    if tall_enough?
      return "Sorry. You are not tall enough to ride the #{attraction.name}."
    end

    if enough_tickets?
      return "Sorry. You do not have enough tickets to ride the #{attraction.name}."
    end

  end

  def tall_enough?
    self.user.height.to_i < self.min_height.to_i ? true : false
  end

  def enough_tickets?
    self.user.tickets.to_i < self.tickets.to_i ? true : false
  end

end
