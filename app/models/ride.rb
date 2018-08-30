class Ride < ActiveRecord::Base
  belongs_to :user
  belongs_to :attraction

  def take_ride
    enough_tickets, tall_enough = check_rider
    if enough_tickets && tall_enough
      start_ride
    elsif tall_enough && !enough_tickets
      "Sorry. You do not have enough tickets to ride the #{self.attraction.name}."
    elsif enough_tickets && !tall_enough
      "Sorry. You are not tall enough to ride the #{self.attraction.name}."
    else
      "Sorry. You do not have enough tickets to ride the #{self.attraction.name}. You are not tall enough to ride the #{self.attraction.name}."
    end
  end

  def check_rider
    enough_tickets, tall_enough = false
    if self.user.tickets >= self.attraction.tickets
      enough_tickets = true
    end

    if self.user.height >= self.attraction.min_height
      tall_enough = true
    end
    
    return [enough_tickets, tall_enough]
  end

  def start_ride
    self.user.happiness += self.attraction.happiness_rating
    self.user.nausea += self.attraction.nausea_rating
    self.user.tickets -= self.attraction.tickets
    self.user.save
  end
end
