class RegistrationsController < Devise::RegistrationsController
 
  def create
    super
    @person = Person.new(user_id: current_user.id) if current_user
    @person.save if current_user
  end

end

