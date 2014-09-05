class PagesController < ApplicationController
  def home
  	@personbymail =  Person.find_by(user_id: current_user.id).id if current_user
  end

  def about
  end
end
