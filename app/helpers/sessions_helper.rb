module SessionsHelper

  def user_name
    User.all.map{|u| u.name}
  end
end
